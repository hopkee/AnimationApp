//
//  SettingsVC.swift
//  AnimationApp
//
//  Created by Valya on 25.02.22.
//

import UIKit

final class SettingsVC: UIViewController {
    
    @IBAction private func animationSelectBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToAnimationSelect", sender: nil)
    }
    
    @IBAction private func curveSelectBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToCurveSelect", sender: nil)
    }
    
    
    
    @IBAction private func delaySliderAction(_ sender: UISlider) {
    }
    
    @IBAction private func forceSliderAction(_ sender: UISlider) {
    }
    
    @IBAction private func durationSliderAction(_ sender: UISlider) {
    }
    
    @IBAction private func repeatSliderAction(_ sender: UISlider) {
    }
    
    @IBOutlet weak private var delayField: UITextField!
    @IBOutlet weak private var forceField: UITextField!
    @IBOutlet weak private var durationField: UITextField!
    @IBOutlet weak private var repeatField: UITextField!
    
    @IBAction private func saveBtn(_ sender: UIButton) {
    }
    
    // Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destination = segue.destination as? AnimationSelectionTVC {
//            
//        }
//        
//        if let destination = segue.destination as? CurveSelectionTVC {
//            
//        }
//        
//    }

}
