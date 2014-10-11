###
CSSC: CoffeeScript's StyleSheet.
@example
  stylesheet = new CSSC
  CSSC.add 'html',
    backgroundColor: 'red'
###
class @CSSC

  ###
  Static method for creating percentage strings.
  @param  {Number} val Value set in the string.
  @return {String}     Stringified value with percentage.
  ###
  @p: (val) -> "#{val}%"

  ###
  Static method for creating pixel strings.
  @param  {Number} val Value set in the string.
  @return {string}     Stringified value with pixel.
  ###
  @x: (val) -> "#{val}px"

  ###
  C-tor creating a StyleSheet.
  @return {CSSC} The GhostTag's StyleSheet.
  ###
  constructor: ->
    style = document.createElement 'style'
    style.setAttribute 'media', 'screen'
    # Hack for WebKit
    style.appendChild document.createTextNode ''
    document.head.appendChild style
    @sheet = style.sheet
    @rulesIdx = 0

  ###
  Add a CSSRule to the current StyleSheet.
  @param {String} tag        A tag or a class.
  @param {Object} properties A dictionnay of CSS's properties.
  ###
  add: (tag, properties) ->
    @sheet.insertRule "#{tag} {}", @rulesIdx
    rule = @sheet.cssRules[@rulesIdx]
    rule.style[key] = val for key, val of properties
    @rulesIdx++
