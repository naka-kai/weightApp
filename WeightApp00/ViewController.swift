//
//  ViewController.swift
//  WeightApp00
//
//  Created by 沢井海 on 2021/02/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UITextField!
    @IBOutlet weak var standardWeightLabel: UILabel!
    
    var height = 0.0
    //heightという名の変数にDouble型の0.0を入れる
    var standardWeight = 0.0
    //standardWeightという名の変数にDouble型の0.0を入れる
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightLabel.keyboardType = .numberPad
        //heightLabelに数字しか入れられないようにする
        
    }

    @IBAction func okButton(_ sender: Any) {
    //okButtonが押された時
        
        height = Double(heightLabel.text!)!
        //heightにheightLabelのtextをDouble型にして入れる
        
        standardWeight = (height * 0.01) * (height * 0.01) * 22.0
        //standardWeightに標準体重を計算する式を入れるが、mではなくcmで入力されるのでheightには0.01をかける
        
        standardWeightLabel.text = String(standardWeight) + "kg"
        //standardWeightLabelのtextにDouble型だったstandardWeightをString型にして、後ろにkgも書いて反映させる
        
    }

}
