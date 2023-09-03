# batch-tools
A collection of small batch file tools that I have created and added to my workflow.

The source folder is included for testing purposes. When running any of the batch files included in this repository they will use the provided source folder for demonstration purposes. It is very important that you do not modify the file structure unless you want to manually change the search paths for 
each of the batch files.

1. Build - Builds any C files that exist within the source folder using GCC. This can be easily modified to accept other file types and also link libraries. If you do not already have a build folder next to the source folder, running this file will create one.
2. Run - Searches the previously created build folder for an executable by the name specified in this file and runs it. If a build folder does not exist, this program will not run unless you change the search path for finding the executable manually.
3. Count - Searches the source folder and displays the number of lines next to each files name of the specified file type(s) and also shows the total lines in the entire source folder. You can quickly change the extension type being searched for or add new ones.
4. Todo - Searches the source folder and displays any instances of "TODO:" found within a comment and provides information about what file and line it exists on, as well as the contents of that line.
