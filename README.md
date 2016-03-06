# ImageOverlay
UIImage extension to apply Sketch-style overlays to images. See the [`CGBlendMode`](https://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CGContext/#//apple_ref/c/tdef/CGBlendMode) documentation for blending options (they match up with Sketch blending mode names).

## Usage

    let image = UIImage(named: "MyImage")
    let imageWithOverlay = image.applyOverlayWithColor(UIColor.blueColor(), blendMode: .Color, alpha: 0.5)
    self.myImageview.image = imageWthOverlay