var fs = Npm.require('fs');

Package.describe({
  summary: "Stylesheets in CoffeeScript",
  version: "0.2.0",
  name: "pierreeric:cssc",
  git: "https://github.com/PEM--/cssc.git"
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@0.9.3.1');
  api.use('coffeescript');
  var files = [
    'pierreeric:cssc.coffee'
  ];
  var config = {};
  try {
    var configString = fs.readFileSync('cssc.json');
    eval('config = ' + configString);
    if(config.colors) {
      files.push('colors.coffee');
    }
  } catch(e) {
    console.log('No configuration found. Basic usage');
  }
  console.log('Files', files);
  console.log('config', config);
  api.addFiles(files, 'client');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('pierreeric:cssc');
  api.addFiles('pierreeric:cssc-tests.js');
});
