from sync_folders import main

import os

filenames = [] # Global variable


def get_files(dirpath=None):
    """Get all files in current directory"""
    sliceNum = -4
    files = main.get_files(dirpath)
    for file in files:
        if file['name'][sliceNum:] == 'html':
            filenames.append(f'{dirpath}/{file["name"]}')


def worker(path=None):
    """Main function"""
    dirs = main.list_dir(path)
    for dir in dirs:
        get_files(f'{path}{dir}')
        worker(f'{path}{dir}/') # Recursive call

# Start-point of the program
worker('./')

# Execute clean-html for every HTML file
for filename in filenames:
    sliceNum = 2
    os.system(f'clean-html {filename[sliceNum:]} --in-place')
