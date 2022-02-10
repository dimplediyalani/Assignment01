//
//  ViewController.swift
//  Assignment01
//
//  Created by user214042 on 2/9/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputBox: UITextView!
    @IBOutlet weak var historyBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var cal = Calc.init()
    var advance = false
    
    @IBAction func b1(_ sender: Any) {
        inputBox.text! += "1"
        cal.push(s: "1")
    }
    @IBAction func b2(_ sender: Any) {
        inputBox.text! += "2"
        cal.push(s: "2")
    }
    @IBAction func b3(_ sender: Any) {
        inputBox.text! += "3"
        cal.push(s: "3")
    }
    @IBAction func b4(_ sender: Any) {
        inputBox.text! += "4"
        cal.push(s: "4")
    }
    @IBAction func b5(_ sender: Any) {
        inputBox.text! += "5"
        cal.push(s: "5")
    }
    @IBAction func b6(_ sender: Any) {
        inputBox.text! += "6"
        cal.push(s: "6")
    }
    @IBAction func b7(_ sender: Any) {
        inputBox.text! += "7"
        cal.push(s: "7")
    }
    @IBAction func b8(_ sender: Any) {
        inputBox.text! += "8"
        cal.push(s: "8")
    }
    @IBAction func b9(_ sender: Any) {
        inputBox.text! += "9"
        cal.push(s: "9")
    }
    @IBAction func b0(_ sender: Any) {
        inputBox.text! += "0"
        cal.push(s: "0")
    }
    @IBAction func bAdd(_ sender: Any) {
        inputBox.text! += "+"
        cal.push(s: "+")
    }
    @IBAction func bSub(_ sender: Any) {
        inputBox.text! += "-"
        cal.push(s: "-")
    }
    @IBAction func bMul(_ sender: Any) {
        inputBox.text! += "*"
        cal.push(s: "*")
    }
    @IBAction func bDiv(_ sender: Any) {
        inputBox.text! += "/"
        cal.push(s: "/")
    }
    
    @IBAction func bEq(_ sender: Any) {
        let result = cal.result()
        inputBox.text += "=\(result)"
        if advance{
            historyBox.text += inputBox.text! + "\n"
        }
    }
    @IBAction func bClr(_ sender: Any) {
        cal.erase()
        inputBox.text = ""
    }
    @IBAction func bAdvance(_ sender: UIButton) {
        if sender.currentTitle == "Advance - With History" {
                sender.setTitle("Standard - No History", for: .normal);
                advance = true
        }
        else {
                sender.setTitle("Advance - With History", for: .normal);
                historyBox.text = ""
                advance = false
        }
    }
}
