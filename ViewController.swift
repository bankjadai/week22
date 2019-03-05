//
//  ViewController.swift
//  week22
//
//  Created by student on 30/1/2562 BE.
//  Copyright © 2562 BUU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numout1 : UILabel!
    @IBOutlet weak var numout2 : UILabel!
    @IBOutlet weak var symboout : UILabel!

    var symbo = ""
    var num1 = 0
    var num2 = 0
    var result=0
    var floatV : Float=0.000
    var flag = true
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomnumber()
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    @IBAction func resetnum(){
        randomnumber()
    }
    
    @IBAction func  showresult(){
        var message = ""
        
        if(flag == false){
            message = "\(floatV)"
            flag = true
        }else{
            message = "\(result)"
        }
        
      
        let alert = UIAlertController(title: "result", message: String(message),
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "ok", style: .default,
            handler: {_ in self.randomnumber()})
        alert.addAction(action)
        
        present(alert,animated:true ,completion: nil)
        
        
        
    }
    
    func randomnumber()  {
        num1 = Int.random(in: 1...100)
        num2 = Int.random(in: 1...100)
        randomsymbol()
    }
    
    func randomsymbol(){
        var num = Int.random(in: 1...4)
        switch num {
        case 1:
            symbo = "+"
            result = num1+num2
        case 2:
            symbo = "-"
            result = num1-num2
        case 3:
            symbo = "*"
            result = num1*num2
        case 4:
            symbo = "/"
            result = num1 / num2
        default:
            symbo = "none"
        }
        updateLabel()
        
    }
    func updateLabel(){
    numout1.text = String(num1)
    numout2.text = String(num2)
    symboout.text = String(symbo)
    }
    
    



}

