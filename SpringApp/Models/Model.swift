//
//  Model.swift
//  SpringApp
//
//  Created by Руслан Битюков on 22.09.2021.
//

import Foundation

struct Animation {
    
    let animation: String
    let curve: String
    var forse: Double
    let duration: Double
    let delay: Double
    
    
    
    static func getAnimation() -> Animation {
        
        Animation(animation: DataManager.shared.animations.randomElement() ?? "",
                  curve: DataManager.shared.curves.randomElement() ?? "",
                  forse: DataManager.shared.forses.randomElement() ?? 0.0,
                  duration: DataManager.shared.durations.randomElement() ?? 0.0,
                  delay: DataManager.shared.delays.randomElement() ?? 0.0)
    }
}
