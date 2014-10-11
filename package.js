Package.describe({
  summary: "Stylesheets in CoffeeScript",
  version: "1.0.0",
  git: " \* Fill me in! *\ "
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@0.9.3.1');
  api.addFiles('pierreeric:cssc.js');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('pierreeric:cssc');
  api.addFiles('pierreeric:cssc-tests.js');
});
