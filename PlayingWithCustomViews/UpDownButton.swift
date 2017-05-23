//
//  UpDownButton.swift
//  PlayingWithCustomViews
//
//  Created by Michael Vilabrera on 5/23/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

protocol UpDownProtocol {
    var number: Int { get set }
    func upPressed()
    func downPressed()
}

@IBDesignable
class UpDownButton: UIView, UpDownProtocol {
    
    var delegate: UpDownProtocol?

    var number: Int = 0 {
        didSet {
//            numberLabel.text = String(number)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
//
//
//    let upButton = UIButton()
//    let numberLabel = UILabel()
//    let downButton = UIButton()
//    
//    func setup() {
//        
//        let viewsDictionary = ["upButton": upButton, "numberLabel": numberLabel, "downButton": downButton]
//        
//        upButton.translatesAutoresizingMaskIntoConstraints = false
//        self.addSubview(upButton)
//        
//        numberLabel.translatesAutoresizingMaskIntoConstraints = false
//        self.addSubview(numberLabel)
//        
//        downButton.translatesAutoresizingMaskIntoConstraints = false
//        self.addSubview(downButton)
//        
//        let horizontal_Constraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|[upButton]-1-[numberLabel]-1-[downButton]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
//        let vertical_Up_Constraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|[upButton]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
//        let vertical_Number_Constraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|[numberLabel]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
//        let vertical_Down_Constraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|[downButton]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
//        
//        self.addConstraints(horizontal_Constraint)
//        self.addConstraints(vertical_Up_Constraint)
//        self.addConstraints(vertical_Number_Constraint)
//        self.addConstraints(vertical_Down_Constraint)
//        
//        self.delegate = UpDownProtocol.self as? UpDownProtocol
//    }
    
    func upPressed() {
        //
    }
    
    func downPressed() {
        //
    }
}
