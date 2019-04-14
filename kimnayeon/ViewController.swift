//
//  ViewController.swift
//  kimnayeon
//
//  Created by SWUCOMPUTER on 12/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//


import UIKit
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource,UITextFieldDelegate {

    @IBOutlet var labelInfo: UILabel!
    @IBOutlet var pickerCollege: UIPickerView!
    @IBOutlet var textOperand: UITextField!
    
    

    //@IBOutlet var labelResult: UILabel! //색상
   
    let yearArray: Array<String> = ["IPHONE 7", "IPHONE 8"]
    let deptArray: [String] = ["SKT", "KT", "LGU+"]
    
    
    @IBAction func getValue(){
    let year: String = yearArray[self.pickerCollege.selectedRow(inComponent: 0)]
    let dept: String = deptArray[self.pickerCollege.selectedRow(inComponent: 1)]
    labelInfo.text = year + ", " + dept
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 { return yearArray.count
        } else {
            return deptArray.count }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return yearArray[row] }
        else {
            return deptArray[row] }
    }
    
    
   
    @IBOutlet var Color: UISegmentedControl!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {
            let destVC = segue.destination as! OrderViewController
            let ordered: String! = Color.titleForSegment(at: Color.selectedSegmentIndex)
            destVC.title = ordered
            
            var outString: String = "["
            outString += ordered
            outString += "]색상 예시 사진입니다"
            destVC.info = outString
        }
        
    }
  
}



