## Description
This [Meteor](https://www.meteor.com/) package provides an easy way to create your stylesheets in [CoffeeScript](http://coffeescript.org/): [CSSC](https://atmospherejs.com/pierreeric/cssc)

## Installation
```bash
meteor add pierreeric:cssc
```

## Usages and API
### Basic usage
The following example creates a new stylesheet with 3 rules: one on the HTML
file and a second on a CSS class `.bubble` and a third for multiple CSSRules:

```coffeescript
mainCss = new CSSC

mainCss
  .add 'html',
    backgroundColor: 'red'
  .add '.bubble',
    backgroundColor: '#FFDC00'
    borderRadius: CSSC.em 0.75
  .add ['h1', 'h2'],
    backgroundColor: 'blue'
```

CSS properties are declared as a dictionary of keys and values respecting
the DOM and CCOM API when called in Javascript.

### Helper functions
They allow working with numerical value instead of strings.
* Pixels `CSSC.px {Number}`:<br>
```coffee
CSSC.px 12
# Returns: '12px'
```
* Percentages `CSSC.pc {Number}`:<br>
```coffee
CSSC.pc 50
# Returns: '50%'
```
* EM `CSSC.pc {Number}`:<br>
```coffee
CSSC.em 1.2
# Returns: '1.2em'
```

### Plugins
You can add additional plugins to this package enhancing its capabilities.

Available options are:
* `meteor add pierreeric:cssc-colors`: It imports [colors](http://clrs.cc):
```coffee
CSSC.red
# Returns: '#FF4136'
```
![Colors](https://raw.githubusercontent.com/PEM--/cssc/master/assets/colors.png)

* `meteor add pierreeric:cssc-famous`: It imports as CSSC file, all required CSS styles for [Famo.us](http://famo.us). It removes unnecessary calls to CSS files and the
necessity to put the following in your project:
```javascript
require('famous.core.famous');
```

## Dependencies
* [Meteor's coffeescript](https://atmospherejs.com/meteor/coffeescript)

## Acknowledgments
* The [Meteor team](https://www.meteor.com/), this could not be achieved
  without them.
* The [Famo.us's team](http://famo.us/) for their incredible framework.
* Maxime Quandalle, for his help demystifying Meteor's package, his PR on Meteor
  and his package [Jade's package](https://atmospherejs.com/mquandalle/jade).
* Morten N.O. Nørgaard Henriksen, for his PR on Famo.us and on Meteor,
  his [Famono package](https://atmospherejs.com/raix/famono) which helps
  importing Famo.us but also act as a bower and git importer.
* Gadi Cohen, for his codes and his
  [Famous's view package](https://atmospherejs.com/gadicohen/famous-views)
  from which I've learned a lot.
* Adam Morse, for his incredible
  [set of colors](https://github.com/mrmrs/colors). It eases the eyes :wink:.
