# batch-tools
A collection of small Python and Batch file tools that I have created and added to my workflow.

The example folders consist of the following...

- misc
- source

You will find all of the scripts included in the misc folder and they already have their paths set to the build and source folders. You are free to go in and adjust the structure of the directories however you want, just remember to adjust the path variables that are towards the top of the Batch or Python files that you are using.

Inside of the misc folder you will find the following files...

1. Build - Builds any C files that exist within the source folder using GCC. This can be easily modified to accept other file types and also link libraries. If you do not already have a build folder next to the source folder, running this file will create one.
2. Run - Searches the previously created build folder for an executable by the name specified in this file and runs it. If a build folder does not exist, this program will not run unless you change the search path for finding the executable elsewhere.
3. Count - Searches the source folder and displays the number of lines next to each files name of the specified file type(s) and also shows the total lines in the entire source folder. You can quickly change the extension type being searched for or add new ones.
4. Todo - Searches the source folder and displays any instances of "TODO" found within a comment and provides information about what file and line it exists on, as well as the contents of that line.
5. Project Create - Creates a new project directory that contains a build, misc, source, and res folder, along with main.c file that includes boilerplate for quickly testing the build file that is also generated.

These were created with a little bit of flexibility so that you can have some control over what file types to work with, the name of things, project structure, etc.
