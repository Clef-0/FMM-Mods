using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace H3RPatcher
{
    class Program
    {
        static void Main(string[] args_)
        {
            var args = args_.ToList();

            if (args.Count == 0)
            {
                Console.WriteLine("Usage example for a batch file:\n" +
                    "HOTeamColorsChanger.exe <eldorado.exe relative or full path> [<-team color> <float red> <float green> <float blue>]\n" +
                    "HOTeamColorsChanger.exe eldorado.exe -red 0.77647 0.1647 0.1647 -blue 0.1647 0.28627 0.77647\n" +
                    "Available team colors: red, blue.\n" +
                    "Press any key to continue.");
                Console.ReadLine();
                return;
            }

            DoStuf(args);

            Environment.Exit(1);
        }

        public static bool DoStuf(List<string> args)
        {
            var Red__Rf = 1f;
            var Red__Gf = 0f;
            var Red__Bf = 0f;
            var Blue_Rf = 0f;
            var Blue_Gf = 0.2f;
            var Blue_Bf = 1f;

            var filename = Environment.CurrentDirectory + "\\" + "eldorado.exe";

            // var filepathWithSpaces = false;
            // foreach (var a in args)
            // {
            //     if (a.Contains("\""))
            //         filepathWithSpaces = true;
            // }
            // 
            // if (filepathWithSpaces)
            // {
            //     var k = -1;
            //     var start = false;
            //     var items = new List<string>();
            //     foreach (var a in args)
            //     {
            //         k++;
            //         if (start)
            //             items.Add(args[k]);
            // 
            //         if (a.Contains("\""))
            //         {
            //             if (start)
            //             {
            //                 items.Add(a);
            //                 break;
            //             }
            //             start = true;
            //             items.Add(a);
            //         }
            //     }
            // 
            //     var fullPath = "";
            //     foreach (var b in items)
            //         fullPath = $"{fullPath}{b}";
            // 
            //     filename = fullPath;
            // }

            var j = -1;
            foreach (var a in args)
            {
                j++;

                if (a.Contains("-red"))
                {
                    Red__Rf = Convert.ToSingle(args[j + 1]);
                    Red__Gf = Convert.ToSingle(args[j + 2]);
                    Red__Bf = Convert.ToSingle(args[j + 3]);
                }

                if (a.Contains("-blue"))
                {
                    Blue_Rf = Convert.ToSingle(args[j + 1]);
                    Blue_Gf = Convert.ToSingle(args[j + 2]);
                    Blue_Bf = Convert.ToSingle(args[j + 3]);
                }

                // if (!filepathWithSpaces)
                    if (a.Contains(".exe"))
                        filename = a;

            }

            if (!File.Exists(filename))
            {
                Console.WriteLine("ERROR: cannot find eldorado.exe. Press any key to continue.");
                Console.ReadKey();
                return false;
            }

            var address = 0x145EB70;

            var extension = Path.GetExtension(filename).ToLower(); // ".exe"

            var fileTime = File.GetLastWriteTime(filename.ToString());

            var createddate = Convert.ToDateTime(fileTime).ToString("ddMMyyyy").ToString();

            var newFileName = Path.GetFileNameWithoutExtension(filename) + "_" + createddate.ToString() + "_" + extension;

            var newFilePath = Path.Combine(Environment.CurrentDirectory + "\\" + newFileName); // should change to where eldorado.exe is, not where the program is

            var i = 0;

            while (File.Exists(newFilePath))
            {
                newFilePath = Path.GetFileNameWithoutExtension(filename) + "_" + createddate.ToString() + "_" + string.Format($"{i:D2}") + extension;

                i++;
            }

            try
            {
                File.Copy(filename, newFilePath);
            }
            catch (Exception e)
            {
                Console.WriteLine("ERROR: cannot backup eldorado.exe. Proceed to change colors anyway?");
                Console.WriteLine(e.Message);
                Console.ReadKey();
            }

            using (var sr = new BinaryWriter(File.OpenWrite(filename)))
            {
                sr.BaseStream.Position = address;
                sr.Write(Red__Rf);
                sr.Write(Red__Gf);
                sr.Write(Red__Bf);
                sr.Write(Blue_Rf);
                sr.Write(Blue_Gf);
                sr.Write(Blue_Bf);
            }

            return true;
        }
    }
}
