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
You can configure this package using a `cssc.json` file in your project.
```json
{
  colors: true,
  famous: true
}
```

Available options are:
* `colors`: Importing [colors](http://clrs.cc):
  ```coffeescript
  CSSC.red
  # Returns: '#FF4136'
  ```

### Helper functions
* String interpolations<br>
  They allow working with numerical value instead of strings.
  * Pixels `CSSC.x {Number}`:<br>
    ```coffeescript
    CSSC.x 12
    # Returns: '12px'
    ```
  * Percentages `CSSC.p {Number}`:<br>
    ```coffeescript
    CSSC.p 50
    # Returns: '50%'
    ```

## Dependencies
* [Meteor's coffeescript](https://atmospherejs.com/meteor/coffeescript)
