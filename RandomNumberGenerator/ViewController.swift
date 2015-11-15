//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by Gavin Fouche on 2015/11/12.
//  Copyright © 2015 Gavin Fouche. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var x:Float = 0
    var y:Float = 0
    var z:Float = 0
    
    let rng = RandomNumberGenerator()
    
    
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnMarsaglia(sender: UIButton) {
        
        // we pressed the button for marsaglia.
        // generate:
        
        lblResult.text = String(rng.MarsagliaBray())
        
    }

    
    @IBAction func btnWichmann(sender: UIButton) {

        lblResult.text = String(rng.WichmannHill())
    }



}

