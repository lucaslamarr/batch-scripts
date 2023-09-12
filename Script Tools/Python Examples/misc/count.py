import os

source_path = os.path.join('..', 'source')
search_term = 'TODO'

os.chdir(source_path)

print('-' * 55)
print('DISPLAYING LINE COUNTS FOR ALL REQUESTED FILE TYPES')
print('-' * 55)
print()

# Count lines in *.c files
c_line_count = 0
for root, _, files in os.walk('.'):
    for file in files:
        if file.endswith('.c'):
            file_path = os.path.join(root, file)
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                c_line_count += sum(1 for _ in f)

print(f'Total Lines in *.c Files: {c_line_count}')
print()

# Count lines in *.h files
h_line_count = 0
for root, _, files in os.walk('.'):
    for file in files:
        if file.endswith('.h'):
            file_path = os.path.join(root, file)
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                h_line_count += sum(1 for _ in f)

print(f'Total Lines in *.h Files: {h_line_count}')
print()

# Count total lines in all files
total_line_count = 0
for root, _, files in os.walk('.'):
    for file in files:
        file_path = os.path.join(root, file)
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            total_line_count += sum(1 for _ in f)

print(f'Total Lines Found: {total_line_count}')
input("")
os.chdir('..')

