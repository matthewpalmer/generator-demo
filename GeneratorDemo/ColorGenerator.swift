//
//  ColorGenerator.swift
//  GeneratorDemo
//
//  Created by Matthew Palmer on 9/12/2014.
//  Copyright (c) 2014 Matthew Palmer. All rights reserved.
//

import UIKit

class ColorGenerator: GeneratorType {
    // Required to adopt `GeneratorType`
    typealias Element = UIColor
    
    // Required to adopt `GeneratorType`
    func next() -> Element? {
        hue += increment
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
    }
    
    // Our colouring options
    var hue: CGFloat
    let saturation: CGFloat
    let brightness: CGFloat
    let alpha: CGFloat
    let increment: CGFloat
    
    init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat, increment: CGFloat) {
        self.hue = hue
        self.saturation = saturation
        self.brightness = brightness
        self.alpha = alpha
        self.increment = increment
    }
}
