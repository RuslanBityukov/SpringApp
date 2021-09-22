//
//  ViewController.swift
//  SpringApp
//
//  Created by Руслан Битюков on 22.09.2021.
//

import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet var informationView: SpringView! {
        didSet{
            informationView.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    // var animation = Animation.getAnimation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundingValue() }
    
    private func roundingValue() {
        let animation = Animation.getAnimation()
        
        animationLabel.text = animation.animation
        curveLabel.text = animation.curve
        forceLabel.text = String(format:"%.2f",
                                 animation.forse)
        durationLabel.text = String(format:"%.2f",
                                    animation.duration)
        delayLabel.text = String(format:"%.2f",
                                 animation.delay)
    }
    
    private func settingAnimation() {
        
        let animation = Animation.getAnimation()
        
        roundingValue()
        
        informationView.animation = animation.animation
        informationView.curve = animation.curve
        informationView.force = CGFloat(animation.forse)
        informationView.duration = CGFloat(animation.duration)
        informationView.delay = CGFloat(animation.delay)
        informationView.animate()
    }
    
    @IBAction func startAnimation(_ sender: UIButton) {
        
        let animation = Animation.getAnimation()
        settingAnimation()
        
        
        sender.setTitle(animation.animation, for: .normal)
    }
}

    
