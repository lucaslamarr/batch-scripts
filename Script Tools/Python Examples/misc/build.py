import os
import subprocess

source_path = os.path.join('..', 'source')
build_path = os.path.join('..', 'build')

file_to_run = '*'
file_type_extension = '.c'
full_file_name = file_to_run + file_type_extension

application_name = 'program'
extension_type = '.exe'

if not os.path.exists(build_path):
    os.mkdir(build_path)

os.chdir(build_path)

command = ["gcc", os.path.join(source_path, full_file_name), "-o", application_name + extension_type]

try:
    subprocess.run(command, check=True)
    print("\nSuccessful compilation!")
except subprocess.CalledProcessError:
    print("\nFailed compilation!")

os.chdir('..')


