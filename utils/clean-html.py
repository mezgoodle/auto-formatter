from sync_folders import main

import os

filenames = []


def get_files(dirpath=None):
    # print(dirpath)
    files = main.get_files(dirpath)
    for file in files:
        if file['name'][-4:] == 'html':
            filenames.append(f'{dirpath}/{file["name"]}')


def worker(path=None):
    dirs = main.list_dir(path)
    for dir in dirs:
        get_files(f'{path}{dir}')
        worker(f'{path}{dir}/')


worker('./')
for filename in filenames:
    # print(filename)
    os.system(f'clean-html {filename[2:]} --in-place')
