/*
* This is a VERY quick and dirty script to make a json file with the list of all the files in each directory
* This could probably be very easily improved *BUT* not particularly necessary.
*
* Purpose: Allow FMM to download from Git without having to use the API or sparse-checkout
*/

const fs = require('fs');
const path = require('path');

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
* Core app function - create list of files in JSON.
*/
function app() {

    let dir = ".";

    let dirList = []
    fs.readdirSync(dir).forEach((file) => {
        const fullPath = path.join(dir, file);

        // Files that are meant to be hidden can stay hidden :)
        if ( file.charAt(0) == '.' ) {
            // do nothing
        }

        // Don't need to make information about itself
        else if ( file == "RepoInfo") {
            // do nothing
        }

        // Ok, if it's a directory, create a file with the list of files.
        else if ( fs.lstatSync(fullPath).isDirectory() ) {
            out = fileLister(fullPath);
            fs.writeFileSync("RepoInfo/" + file + ".json", JSON.stringify(out), 'utf8');
        }
    })

}

// Run the application
app();