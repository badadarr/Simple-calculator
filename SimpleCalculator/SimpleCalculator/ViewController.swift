//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by badar on 22/04/20.
//  Copyright © 2020 badar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var panjang: UITextField!
    @IBOutlet weak var lebar: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    @IBAction func calculateArea(_ sender: UIButton) {
        if let h = Double(panjang.text ?? "0"),
            let w = Double(lebar.text ?? "0"){
                   result.text = String(h * w)
        } else {
            result.text = "Hasil Tidak Valid"

        }
    }
    
    @IBAction func resetView(_ sender: UIButton) {
        result.text = ""
        panjang.text = ""
        lebar.text = ""
    }
}

