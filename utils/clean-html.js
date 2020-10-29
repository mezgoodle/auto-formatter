'use strict';

//requiring path and fs modules
const { join } = require('path');
const { readdir, readdirSync, read } = require('fs');
const { get } = require('http');

//joining path of directory 
const getFiles = dirpath => {
  const filenames = [1];
  //passsing directoryPath and callback function
  readdir(dirpath, (err, files) => {
    //handling error
    if (err) {
      return console.log('Unable to scan directory: ' + err);
    } 
    //listing all files using forEach
    files.forEach((file) => {
      // Do whatever you want to do with the file
      if (file.split('.').pop() === 'html') {
        filenames.push('1');
        console.log('Hello')
      }
    });
  });

  return filenames
};
// console.log(getFiles('./'))

const getDirectories = source =>
  readdirSync(source, { withFileTypes: true })
    .filter(dirent => dirent.isDirectory())
    .map(dirent => dirent.name)

let dirs = getDirectories('../');
console.log(dirs);
for (const dir of dirs) {
  dirs = getDirectories(`../${dir}`)
  console.log(dirs);
  if (getFiles(`../${dir}`).length !== 0) {
    console.log(getFiles(`../${dir}`)); 
  }
}
