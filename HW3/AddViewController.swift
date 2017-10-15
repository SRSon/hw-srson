//
//  AddViewController.swift
//  HW3
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class AddViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

   
    @IBOutlet var pickerM2: UIPickerView!
    
    var majorArray1:Array<String>=[]
    
    var num:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if num==0{
            majorArray1=["모바일 프로그래밍-화요일","웹 프로그래밍-월요일"]
        }
        else if num==1{
            majorArray1=["악성코드-목요일","시스템보안과 운영실습-화요일"]
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return majorArray1.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return majorArray1[row]
    }
    
    
    @IBAction func addBtn(_ sender: UIButton) {
        let major:String=majorArray1[pickerM2.selectedRow(inComponent: 0)]
        mainArray.append(major)
        _=navigationController?.popViewController(animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
