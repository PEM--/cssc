var fs = Npm.require('fs');

Package.describe({
  summary: "Stylesheets in CoffeeScript",
  version: "0.2.0",
  name: "pierreeric:cssc",
  git: "https://github.com/PEM--/cssc.git"
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@0.9.3.1');
  // This package depends and uses coffeescript.
  api.use('coffeescript');
  // Basic usage imports only the main CSSC class.
  var files = [
    'cssc.coffee'
  ];
  // Check if client has set a `cssc.json` file
  //  for configuring this package.
  var config = {};
  try {
    var configString = fs.readFileSync('cssc.json');
    eval('config = ' + configString);
    if(config.colors) {
      files.push('colors.coffee');
    }
    if(config.famous) {
      files.push('famous.coffee');
    }
  } catch(e) {
    console.log('No configuration found. Basic usage');
  }
  api.addFiles(files, 'client');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('pierreeric:cssc');
  api.addFiles('cssc-tests.js');
});
