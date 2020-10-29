from sync_folders import main

import os

for dir in main.list_dir('./'):
    for dir_ in main.list_dir(dir):
        print(dir_)
    files = main.get_files(dir)
    for file in files:
        if file['name'][-4:] == 'html':
            print(file['name'])
    print('')