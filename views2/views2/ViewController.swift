//
//  ViewController.swift
//  views2
//
//  Created by Mercsjho on 16/3/30.
//  Copyright © 2016年 Mercsjho. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var lable0: UILabel!
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var lable2: UILabel!
    @IBOutlet weak var pickerView1: UIPickerView!
    
    let citys = ["北京","上海","广州"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //部分
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return citys.count
    }
    //行数
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return citys.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return citys[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component{
        case 0: lable0.text = citys[row]
        case 1: lable1.text = citys[row]
        default: lable2.text = citys[row]
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

