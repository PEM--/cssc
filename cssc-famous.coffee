# This file is a translation from:
#  https://github.com/Famous/famous/blob/master/src/core/famous.css
@famousCss = new CSSC

@famousCss.add '.famous-root',
  width: CSSC.p 100
  height: CSSC.p 100
  margin: CSSC.x 0
  padding: CSSC.x 0
  overflow: 'hidden'
  webkitTransformStyle: 'preserve-3d'
  transformStyle: 'preserve-3d'

@famousCss.add '.famous-container',
  position: 'absolute'
  top: CSSC.x 0
  left: CSSC.x 0
  bottom: CSSC.x 0
  right: CSSC.x 0
  overflow: 'visible'
  webkitTransformStyle: 'preserve-3d'
  transformStyle: 'preserve-3d'
  webkitBackfaceVisibility: 'visible'
  backfaceVisibility: 'visible'
  pointerEvents: 'none'

@famousCss.add '.famous-group',
  position: 'absolute'
  top: CSSC.x 0
  left: CSSC.x 0
  bottom: CSSC.x 0
  right: CSSC.x 0
  overflow: 'visible'
  webkitTransformStyle: 'preserve-3d'
  transformStyle: 'preserve-3d'
  webkitBackfaceVisibility: 'visible'
  backfaceVisibility: 'visible'
  pointerEvents: 'none'
  width: CSSC.x 0
  height: CSSC.x 0
  margin: CSSC.x 0
  padding: CSSC.x 0

@famousCss.add '.famous-surface',
  position: 'absolute'
  webkitTransformOrigin: 'center center'
  transformOrigin: 'center center'
  webkitBackfaceVisibility: 'hidden'
  backfaceVisibility: 'hidden'
  webkitTransformStyle: 'preserve-3d'
  transformStyle: 'preserve-3d'
  webkitBoxSizing: 'border-box'
  mozBoxSizing: 'border-box'
  boxSizing: 'border-box'
  webkitTapHighlightColor: 'transparent'
  pointerEvents: 'auto'

@famousCss.add '.famous-container-group',
  position: 'relative'
  width: CSSC.p 100
  height: CSSC.p 100
