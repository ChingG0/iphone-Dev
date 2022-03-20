//
//  MainViewController.swift
//  project5
//
//  Created by ching on 2022/1/2.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var HeightTextField:UITextField!
    @IBOutlet var WeightTextField:UITextField!
    @IBOutlet var BMITextField:UITextField!
    @IBOutlet var BMIresult:UITextField!
    
    private func textFieldDidBeginEditing(_ textField: UITextField) -> Bool{
        return false    //使使用者無法編輯
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMITextField.isEnabled = false
        BMIresult.isEnabled = false
        BMITextField.delegate = self    //  代理人機制
        BMIresult.delegate = self
        
       

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func userok(_ sender:UIBarButtonItem){
        let HeightString = HeightTextField.text!
        let WeightString = WeightTextField.text!
        
        
        //檢查使用者是否輸入整數
        guard let HeightValue = Int(HeightString), let WeightValue = Int(WeightString) else{
            print("Wrong Enter")
            return
            
        }
        var BMI = 0.0
        switch (HeightValue,WeightValue){
        case (50...250, 5...500):
            print("in range")
            BMI = Double(WeightValue) / pow(Double(HeightValue) / 100.0, 2.0)
            print(BMI)
        default:
            print("out of range")
            return
        }
        var suggest = ""
        
        switch(BMI){
        case 0..<18.5:
            suggest = "過輕"
        case 18.5..<24:
            suggest = "正常"
        case 24..<27:
            suggest = "過重"
        case 27..<30:
            suggest = "輕度肥胖"
        case 30..<35:
            suggest = "中度肥胖"
        default:
            suggest = "重度肥胖"
        }
        
        suggest = String(format: "%.2f", BMI)
        BMIresult.text = "\(suggest)"
        BMITextField.attributedPlaceholder = NSAttributedString(string: suggest, attributes: [.foregroundColor : UIColor.red])
    }
    
    @IBAction func userClear(_ sender:UIBarButtonItem){
        print("clear")
        HeightTextField.text=""
        HeightTextField.resignFirstResponder()
        WeightTextField.text=""
        WeightTextField.resignFirstResponder()
        BMITextField.text=""
        BMITextField.resignFirstResponder()
    }
    

}
