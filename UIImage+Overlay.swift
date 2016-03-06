//
//  UIImage+Overlay.swift
//
//  Created by Matt Bridges on 3/6/16.
//  Copyright © 2016 Matt Bridges. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    func applyOverlayWithColor(color: UIColor, blendMode: CGBlendMode) -> UIImage? {
        
        // Create a new CGContext
        UIGraphicsBeginImageContextWithOptions(self.size, false, UIScreen.mainScreen().scale)
        let bounds = CGRect(origin: CGPointZero, size: self.size)
        let context = UIGraphicsGetCurrentContext()
        
        // Draw image into context, then fill using the proper color and blend mode
        self.drawInRect(bounds, blendMode: .Normal, alpha: 1.0)
        CGContextSetBlendMode(context, blendMode)
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, bounds)
        
        // Return the resulting image
        let overlayImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext();
        
        return overlayImage
    }
    
    func applyOverlayWithColor(color: UIColor, blendMode: CGBlendMode, alpha: CGFloat) -> UIImage? {
        return self.applyOverlayWithColor(color.colorWithAlphaComponent(alpha), blendMode: blendMode)
    }
}