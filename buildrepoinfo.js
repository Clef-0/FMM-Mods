/*
* This is a VERY quick and dirty script to make a json file with the list of all the files in each directory
* This could probably be very easily improved *BUT* not particularly necessary.
*
* Purpose: Allow FMM to download from Git without having to use the API or sparse-checkout
*/

const fs = require('fs');
const path = require('path');
const os = require('os');

// Make sure there is an empty RepoInfo folder
fs.rmSync('RepoInfo', { recursive: true, force: true });
fs.mkdirSync('RepoInfo')

/*
* Function to create a list of files in a directory (recursive)
*/
function fileLister(dir) {

    let fileList = [];
    fs.readdirSync(dir).forEach((file) => {
        const fullPath = path.join(dir, file);
        if ( fs.lstatSync(fullPath).isDirectory()) {
            fileList = fileList.concat(fileLister(fullPath));
        } else {
            fileList.push(fullPath);
        }
    });

    return fileList;

}

/*
* Parse links.txt to get directories
*/
function linkstxtParse(linkstxt) {

    const urlPrefix = "https://raw.githubusercontent.com/dirkkane/FMM-Mods/master/"; // Prefix of the URLs

    // Read the links.txt file, split it in to an array.
    const data = fs.readFileSync(linkstxt, {encoding: 'utf-8'});

    var urls;

    if ( os.platform() == "win32") {
        urls = data.split('\r\n');
    }
    else {
        urls = data.split('\n');
    }

    // Array to store directories
    var arr = [];

    // Remove un-needed information from each url, and then push the value in to the array.
    urls.forEach((url) => {
        const noPrefix = url.substring(urlPrefix.length)
        const lastSlash = noPrefix.lastIndexOf("/");

        const val = noPrefix.substring(0, lastSlash)

        arr.push(val);
    })

    return arr;

}

/*
* Core app function - create list of files in JSON.
*/
function app() {

    let baseDir = ".";
    let linksFilePath = "meta/links2.txt";
    let linksList = linkstxtParse(linksFilePath);

    linksList.forEach((directory) => {

        const fullPath = path.join(baseDir, directory);

        if ( fs.lstatSync(fullPath).isDirectory() ) {
            out = fileLister(fullPath);
            
            // Check if a new directory is needed
            const lastSlash = directory.lastIndexOf("/");

            // If a new directory is needed for the file, create it
            if ( lastSlash != -1 ) {
                const newDirName = directory.substring(0, lastSlash);
                fs.mkdirSync("RepoInfo/" + newDirName, {recursive: true});
            }

            // Write the file
            out = fileLister(fullPath);
            fs.writeFileSync("RepoInfo/" + directory + ".json", JSON.stringify(out), 'utf8');

        }


    });

}

// Run the application
app();

