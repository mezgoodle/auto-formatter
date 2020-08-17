'use strict';
const fs = require('fs');

const getData = () => {
  let data = fs.readFileSync('./index.html', 'utf8');
  
  return data || [];
}
  
const data = getData();
console.log(data)
