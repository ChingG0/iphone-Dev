//
//  ViewController.swift
//  project4
//
//  Created by ching on 2021/12/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var HeightTextField:UITextField!
    @IBOutlet var WeightTextField:UITextField!
    @IBOutlet var BmiValue:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func userClick(_:UIButton){
        /*if let HeightValue = Int(HeightTextField.text!), let WeightValue = Int(WeightTextField.text!){
            
        }
        */
        guard let HeightValue = Int(HeightTextField.text!), let WeightValue = Int(WeightTextField.text!) else{
            print("Wrong Enter")
            return
        }
        switch (HeightValue,WeightValue){
        case (50...250, 30...200):
            print("in range")
        default:
            print("out of range")
        }
    }
}

