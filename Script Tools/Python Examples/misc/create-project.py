import os

project_file_name = "New Project"

default_file_name = "main"
file_type_extension = ".c"
full_file_name = default_file_name + file_type_extension

application_name = "new-project"
extension_type = ".exe"

def default_file_boilerplate():
    with open(full_file_name, "w") as file:
        file.write("#include<stdio.h>\n")
        file.write("int main()\n")
        file.write("{\n")
        file.write("    printf(\"Testing\");\n")
        file.write("    scanf_s(\".\");\n")
        file.write("    return 0;\n")
        file.write("}\n")
    
if not os.path.exists(project_file_name):
    os.mkdir(project_file_name)

os.chdir(project_file_name)

os.mkdir("build")
os.mkdir("misc")
os.mkdir("source")
os.mkdir("res")

os.chdir("source")
default_file_boilerplate()

os.chdir("..")

os.chdir("misc")
with open("build.py", "w") as file:
    file.write("import os\n")
    file.write("import subprocess\n")

    file.write("source_path = os.path.join('..', 'source')\n")
    file.write("build_path = os.path.join('..', 'build')\n")

    file.write("file_to_run = '*'\n")
    file.write("file_type_extension = '.c'\n")
    file.write("full_file_name = file_to_run + file_type_extension\n")

    file.write("application_name = 'program'\n")
    file.write("extension_type = '.exe'\n")

    file.write("if not os.path.exists(build_path):\n")
    file.write("    os.mkdir(build_path)\n")

    file.write("os.chdir(build_path)\n")

    file.write("command = [\"gcc\", os.path.join(source_path, full_file_name), \"-o\", application_name + extension_type]\n")

    file.write("try:\n")
    file.write("    subprocess.run(command, check=True)\n")
    file.write("    print(\"Successful compilation!\")\n")
    file.write("except subprocess.CalledProcessError:\n")
    file.write("    print(\"Failed compilation!\")\n")

    file.write("os.chdir('..')")

os.chdir("..")

print("\nProject successfully created.")
