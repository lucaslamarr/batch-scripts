import os
import subprocess

build_path = os.path.join('..', 'build')
application_name = 'program'
extension_type = '.exe'

if os.path.exists(build_path):
    os.chdir(build_path)

    try:
        subprocess.run(application_name + extension_type, check=True)
        print("\nSuccessfully started running " + application_name + extension_type)
    except FileNotFoundError:
        print("\nERROR: " + application_name + extension_type + " not found.")
    
    os.chdir('..')
else:
    print("\nERROR: build directory not found.")
