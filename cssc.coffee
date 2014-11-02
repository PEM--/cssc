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
  @pc: (val) -> "#{val}%"

  ###
  Static method for creating pixel strings.
  @param  {Number} val Value set in the string.
  @return {string}     Stringified value with pixel.
  ###
  @px: (val) -> "#{val}px"

  ###
  Static method for creating em strings.
  @param  {Number} val Value set in the string.
  @return {string}     Stringified value with em.
  ###
  @em: (val) -> "#{val}em"

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
  @param {String} or {Array} tags A single tag / class or and Array of srings.
  @param {Object} properties A dictionnay of CSS's properties.
  @return {CSSC} The GhostTag's StyleSheet, allowing chaining.
  ###
  add: (tags, properties) ->
    tags = [tags] if typeof tags is 'string'
    for tag in tags
      @sheet.insertRule "#{tag} {}", @rulesIdx
      rule = @sheet.cssRules[@rulesIdx]
      rule.style[key] = val for key, val of properties
      @rulesIdx++
    @
