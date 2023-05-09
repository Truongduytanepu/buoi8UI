//
//  BMI.swift
//  baiTapBuoi8
//
//  Created by Trương Duy Tân on 09/05/2023.
//

import UIKit

class BMI: UIViewController {
    
    @IBOutlet weak var Male: UIView!
    @IBOutlet weak var Female: UIView!
    
    @IBOutlet weak var lblHeight: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var lblWeight: UILabel!
    
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var stepperWeight: UIStepper!
    
    @IBOutlet weak var stepperAge: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        Female.tag = 1
        Male.tag = 2
        heightSlider.value = 0
        stepperWeight.value = 0
        stepperAge.value = 0
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        
        let touch = touches.first
        if touch?.view?.tag == 1 {
            Female.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.23, alpha: 1.00)
            Male.backgroundColor = UIColor(red: 0.21, green: 0.21, blue: 0.27, alpha: 1.00)
        }
        if touch?.view?.tag == 2 {
                    Male.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.23, alpha: 1.00)
                Female.backgroundColor = UIColor(red: 0.21, green: 0.21, blue: 0.27, alpha: 1.00)
        }

        
        
    }
    
    @IBAction func onChangeHeight(_ sender: UISlider) {

        
        lblHeight.text = "\(Int(heightSlider.value))"
    }
    
    
    @IBAction func onChangeValueWeight(_ sender: UIStepper) {
        lblWeight.text = "\(Int(stepperWeight.value))"
    }
    
    @IBAction func onChangeValueAge(_ sender: UIStepper) {
        lblAge.text = "\(Int(stepperAge.value))"
    }
}
