//
//  ViewController.swift
//  Calculator
//
//  Created by Kshama Vidyananda on 08/10/21.
//

import UIKit


class ViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var digitTextField: UITextField!
    @IBOutlet weak var tonTextField: UITextField!
    @IBOutlet weak var poundTextField: UITextField!
    @IBOutlet weak var kgTextField: UITextField!
    @IBOutlet weak var gTextField: UITextField!
    @IBOutlet weak var mgTextField: UITextField!
    @IBOutlet weak var ugTextField: UITextField!
    
    
    let weightConverter = WeightConverter()
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
//        configureNotificationObservers()
        // Do any additional setup after loading the view.
        self.digitTextField.delegate = self
//        self.tonTextField.delegate = self
//        self.poundTextField.delegate = self
//        self.kgTextField.delegate = self
//        self.gTextField.delegate = self
//        self.mgTextField.delegate = self
//        self.ugTextField.delegate = self


    }

    @IBAction func digitConverter(_ sender: UITextField) {
        let value = sender.text!
        
        if(!value.isEmpty){
            let gram = Double(value)
            let values = weightConverter.completeConverter(digit: gram!)
            
            tonTextField.text = String(values.ton) + " ton"
            poundTextField.text = String(values.pound) + " pound"
            kgTextField.text = String(values.kg) + " kg"
            gTextField.text = String(values.g) + " g"
            mgTextField.text = String(values.mg) + " mg"
            ugTextField.text = String(values.ug) + " ug"
        }else {
            resetFields()
        }
        
    }
    
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        print( digitTextField.text)
//        print(textField.text)
//    }
//
//    func textFieldDidChangeSelection(_ textField: UITextField) {
//        print(textField.text)
//    }
//    func configureNotificationObservers() {
//            digitTextField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
//
//        }
//    @objc func textDidChange(sender: UITextField){
//        print(sender.text)
//    }
//
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("hi")
    
        let value = textField.text!
        print(value)
        if(!value.isEmpty){
            let gram = Double(value)
            let values = weightConverter.completeConverter(digit: gram!)
            
            tonTextField.text = String(values.ton) + " ton"
            poundTextField.text = String(values.pound) + " pound"
            kgTextField.text = String(values.kg) + " kg"
            gTextField.text = String(values.g) + " g"
            mgTextField.text = String(values.mg) + " mg"
            ugTextField.text = String(values.ug) + " ug"
        }else {
            resetFields()
        }
       return true
    }
//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        print("end")
//        return true
//    }
    
    @IBAction func tonDisplay(_ sender: UITextField) {
        tonTextField.isEnabled = true
//        tonTextField.isUserInteractionEnabled = false
//        let value = sender.text!

//        if(!value.isEmpty){
//            let ton = Double(value)
//            let value = weightConverter.digittoTon(digit: ton!)
//        }
    }



    @IBAction func poundDisplay(_ sender: UITextField) {
        
        tonTextField.isEnabled = false
//        let value = sender.text!
//        if(!value.isEmpty){
//            let pound = Double(value)
//            let value = weightConverter.digittoPound(digit: pound!)
//        }
  }
//
//
   @IBAction func kgDisplay(_ sender: UITextField) {
       
       kgTextField.isEnabled = false
//        let value = sender.text!
//        if(!value.isEmpty){
//            let kg = Double(value)
//            let value = weightConverter.digittoKg(digit: kg!)
//
//
//        }
//
    }
//
//
//
    @IBAction func gDisplay(_ sender: UITextField) {
        
        gTextField.isEnabled = false
//        let value = sender.text!
//        if(!value.isEmpty){
//            let gram = Double(value)
//            let value = weightConverter.digittoG(digit: gram!)
//        }
   }
//
//
   @IBAction func mgDisplay(_ sender: UITextField) {
       
       mgTextField.isEnabled = false
//        let value = sender.text!
//        if(!value.isEmpty){
//            let mg = Double(value)
//            let value = weightConverter.digittoMilliG(digit: mg!)
//        }
    }
//
//
//
   @IBAction func ugDisplay(_ sender: UITextField) {
       
       ugTextField.isEnabled = false
//
//        let value = sender.text!
//        if(!value.isEmpty){
//            let ug = Double(value)
//            let value = weightConverter.digittoMicroG(digit: ug!)
//        }
    }
    
    func resetFields() -> () {
        
        tonTextField.text = ""
        poundTextField.text = ""
        kgTextField.text = ""
        gTextField.text = ""
        mgTextField.text = ""
        ugTextField.text = ""
    }
    
 
}

