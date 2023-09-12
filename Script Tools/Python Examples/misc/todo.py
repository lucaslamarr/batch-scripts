import os

source_path = os.path.join('..', 'source')
search_term = 'TODO:'

os.chdir(source_path)

print("-" * 68)
print("LIST OF EVERY FILE AND LINE NUMBER THAT CONTAINS A TODO: COMMENT")
print("-" * 68)

for root, dirs, files in os.walk("."):
    for filename in files:
        if filename.endswith((".c", ".cpp", ".h", ".hpp")):
            filepath = os.path.join(root, filename)
            with open(filepath, 'r', encoding='utf-8', errors='ignore') as file:
                for line_number, line in enumerate(file, start=1):
                    if search_term in line.upper():
                        print(f"{filepath}:{line_number}: {line.strip()}")

os.chdir("..")
input("")
