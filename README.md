A collection of Batch file scripts that I have created and added to my workflow.

1. ```build.bat``` - Builds any C files that exist within the source folder using GCC. This can be easily modified to accept other file types and also link libraries. If you do not already have a build folder next to the source folder, running this file will create one.
2. ```run.bat``` - Searches the previously created build folder for an executable by the name specified in this file and runs it. If a build folder does not exist, this program will not run unless you change the search path for finding the executable elsewhere.
3. ```count.bat``` - Searches the source folder and displays the number of lines next to each file's name of the specified file type(s) and also shows the total lines in the entire source folder. You can quickly change the extension type being searched for or add new ones.
4. ```todo.bat``` - Searches the source folder and displays any instances of "TODO" found within a comment and provides information about what file and line it exists on, as well as the contents of that line.
5. ```create_project.bat``` - Creates a new project directory that contains a build, misc, source, and res folder, along with main.c file that includes boilerplate for quickly testing the build file that is also generated.
6. ```package_release.bat``` - Creates a folder that holds the release version of a project that builds the project, starts copying over all of the files, and then removes anything that should not be released to the end user.

These were created with a little bit of flexibility so that you can have some control over what file types to work with, the name of things, project structure, etc.
