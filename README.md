## Description
This [Meteor](https://www.meteor.com/) package provides an easy way to create your stylesheets in [CoffeeScript](http://coffeescript.org/).

## Installation
```bash
meteor add pierreeric:cssc
```

## Usages and API
### Basic usage
The following example creates a new stylesheet with a single rule on a CSS
class `.bubble`:

```coffeescript
mainCss = new CSSC

mainCss.add '.bubble',
  backgroundColor: '#FFDC00'
  borderRadius: CSSC.x 8
```

CSS properties are declared as a dictionary of keys and values respecting
the DOM and CCOM API when called in Javascript.

### Configuration
You can configure this package using a `cssc.json` file in root of your project.
```json
{
  colors: true,
  famous: true
}
```

Available options are:
* `colors`: When `true`, it imports [colors](http://clrs.cc):
```coffee
CSSC.red
# Returns: '#FF4136'
```
* `famous`: When `true`, it imports as CSSC file, all required CSS styles for [Famo.us](http://famo.us). It removes unnecessary calls to CSS files and the
necessity to put the following in your project:
```javascript
require('famous.core.famous');
```

### Helper functions
They allow working with numerical value instead of strings.
* Pixels `CSSC.x {Number}`:<br>
```coffee
CSSC.x 12
# Returns: '12px'
```
* Percentages `CSSC.p {Number}`:<br>
```coffee
CSSC.p 50
# Returns: '50%'
```

## Troubleshooting
### Configuration is not taken into account
Simply relaunch `meteor`.
> If you know how to watch a file during the build process and relaunch a task
  PR or issues explaining how to do it are welcome.

## Dependencies
* [Meteor's coffeescript](https://atmospherejs.com/meteor/coffeescript)
