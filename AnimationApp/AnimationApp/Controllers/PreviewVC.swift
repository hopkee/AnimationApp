//
//  ViewController.swift
//  AnimationApp
//
//  Created by Valya on 25.02.22.
//

import UIKit
import Spring

final class PreviewVC: UIViewController {

    // View for animate outlet
    @IBOutlet weak private var viewForAnimate: SpringView!
    
    // IBOutlets for settings labels
    @IBOutlet weak private var animationLbl: UILabel!
    @IBOutlet weak private var curveLbl: UILabel!
    @IBOutlet weak private var delayLbl: UILabel!
    @IBOutlet weak private var forceLbl: UILabel!
    @IBOutlet weak private var durationLbl: UILabel!
    @IBOutlet weak private var repeatCountLbl: UILabel!
    
    // IBOutlets for buttons
    @IBOutlet weak var animateBtnOutlet: UIButton!
    
    // IBActions for buttons
    @IBAction private func animateBtn() {
        startAnimation()
    }
    
    @IBAction private func randomAnimateBtn() {
        let randomSettings = startRandomAnimation()
        setLabelsWithRandomSettings(settings: randomSettings)
    }
    
    @IBAction private func settingsBtn() {
        performSegue(withIdentifier: "GoToSettings", sender: nil)
    }
    
    //Variables & constants
    private var animation: String?
    private var curve: String?
    private var delay: CGFloat?
    private var force: CGFloat?
    private var duration: CGFloat?
    private var repeatCount: Float?
    
    
    // Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setUI()
    }
    
    
    // Main methods
    private func startAnimation() {
        
        if let animation = animation,
           let curve = curve,
           let delay = delay,
           let force = force,
           let duration = duration,
           let repeatCount = repeatCount {
            
            let settings = AnimationSettings(animation: animation, curve: curve, delay: delay, force: force, duration: duration, repeatCount: repeatCount)
            viewForAnimate.animation = settings.animation
            viewForAnimate.curve = settings.curve
            viewForAnimate.delay = settings.delay
            viewForAnimate.force = settings.force
            viewForAnimate.duration = settings.duration
            viewForAnimate.repeatCount = settings.repeatCount
            viewForAnimate.animate()
            
        }
        
    }
    
    private func startRandomAnimation() -> AnimationSettings {
        
        let animation = AnimationType.allCases[Int.random(in: 0..<AnimationType.allCases.count)].rawValue
        let curve = CurveType.allCases[Int.random(in: 0..<CurveType.allCases.count)].rawValue
        let delay = CGFloat(Int.random(in: 0...10))
        let force = CGFloat(Int.random(in: 0...1))
        let duration = CGFloat(Int.random(in: 0...10))
        let repeatCount = Float(Int.random(in: 0...10))
        
        let randomAnimationSettings: AnimationSettings = AnimationSettings(animation: animation, curve: curve, delay: delay, force: force, duration: duration, repeatCount: repeatCount)
        
        viewForAnimate.animation = animation
        viewForAnimate.curve = curve
        viewForAnimate.delay = delay
        viewForAnimate.force = force
        viewForAnimate.duration = duration
        viewForAnimate.repeatCount = repeatCount
        viewForAnimate.animate()
        
        return randomAnimationSettings
        
    }
    
    private func setLabelsWithRandomSettings(settings: AnimationSettings) {
        
        animationLbl.text = "Animation: " + settings.animation
        curveLbl.text = "Curve: " + settings.curve
        delayLbl.text = "Delay: " + settings.delay.description
        forceLbl.text = "Force: " + settings.force.description
        durationLbl.text = "Duration: " + settings.duration.description
        repeatCountLbl.text = "Repeat: " + settings.repeatCount.description
        
    }
    
    private func setUI() {
        
        if animationLbl.text != "Animation:" {
            animateBtnOutlet.isEnabled = true
        } else {
            animateBtnOutlet.isEnabled = false
        }
        
    }

//    //Prepare for segue method
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let settingsVC = segue.destination as? SettingsVC {
//
//        }
//    }

}

