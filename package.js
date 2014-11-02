Package.describe({
  summary: 'Stylesheets in CoffeeScript',
  version: '1.0.0',
  name: 'pierreeric:cssc',
  git: 'https://github.com/PEM--/cssc.git'
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@1.0.0');
  api.use('coffeescript');
  api.addFiles('cssc.coffee', 'client');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('pierreeric:cssc');
  api.addFiles('cssc-tests.js');
});
