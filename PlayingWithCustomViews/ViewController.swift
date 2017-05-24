//
//  ViewController.swift
//  PlayingWithCustomViews
//
//  Created by Michael Vilabrera on 5/23/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, IncrementDecrementOperationProtocol {
    
    var amount: Int = 0 {
        didSet {
            print(amount)
        }
    }
    
    @IBOutlet weak var incDecButton: IncrementDecrementButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        incDecButton.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

