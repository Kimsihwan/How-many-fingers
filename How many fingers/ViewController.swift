//
//  ViewController.swift
//  How many fingers
//
//  Created by D7702_10 on 2018. 3. 27..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn(_ sender: Any) {
        let number = arc4random_uniform(6)
        print(number)
        
        let numberString = String(number)
        
        if input.text == numberString {
            result.text = "빙고"
        } else {
            result.text = "실패 다시하셈 결과 : \(number)"
        }
    }
    
}

