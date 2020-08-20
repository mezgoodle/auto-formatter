'use strict';

//requiring path and fs modules
const { join } = require('path');
const { readdir, readdirSync, read } = require('fs');
const { get } = require('http');
//joining path of directory 
const getFiles = dirpath => {
  //passsing directoryPath and callback function
  readdir(dirpath, (err, files) => {
    //handling error
    if (err) {
      return console.log('Unable to scan directory: ' + err);
    } 
    //listing all files using forEach
    files.forEach((file) => {
      // Do whatever you want to do with the file
      console.dir(file); 
    });
  });
};
console.log(getFiles('./'))

const getDirectories = source =>
  readdirSync(source, { withFileTypes: true })
    .filter(dirent => dirent.isDirectory())
    .map(dirent => dirent.name)

const dirs = getDirectories('../');
console.log(dirs);
