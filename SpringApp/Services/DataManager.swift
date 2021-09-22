//
//  DataManager.swift
//  SpringApp
//
//  Created by Руслан Битюков on 22.09.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let animations = ["squeezeRight", "squeezeLeft", "shake",
                      "slideLeft", "slideRight", "slideDown",
                      "slideUp" , "squeezeLeft", "squeezeRight",
                      "squeezeDown", "squeezeUp", "fadeIn",
                      "fadeOut", "zoomIn", "fall", "morph",
                      "wobble"]
    let curves = ["easeOut", "easeIn", "easeInOut",
                  "spring", "easeInSine", "easeInOutSine",
                  "easeInQuad", "easeInCubic", "easeInOutQuad",
                  "easeOutQuad", "easeOutSine"]
    let forses = [0.1, 0.5, 1, 0.3, 0.9, 1.1, 1.4, 1.6, 1.8]
    let durations = [0.1, 0.5, 1, 0.3, 0.9, 1.1, 1.4, 1.6, 1.8]
    let delays = [0.1, 0.5, 1, 0.3, 0.9, 1.1, 1.4, 1.6, 1.8]
    
    private init() {}
}
