//
//  IncrementDecrementButton.swift
//  PlayingWithCustomViews
//
//  Created by Michael Vilabrera on 5/23/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

//protocol Operatable {
//    mutating func unary(value: inout Int) -> Int
//}

protocol IncrementDecrementOperationProtocol: class {
    var amount: Int { get set }
}

@IBDesignable class IncrementDecrementButton: UIView {
    
    // two buttons, one to increase count, the other to decrease count
    // one label in center
    // apply protocol
    
    weak var delegate: IncrementDecrementOperationProtocol?
    
    private var upButton: UIButton
    private var countLabel: UILabel
    private var downButton: UIButton
    
    @IBInspectable var amount = 0 {
        didSet {
            countLabel.text = String(amount)
        }
    }
    
    @IBInspectable var upButtonFrame: CGRect = CGRect.zero
    @IBInspectable var countLabelFrame: CGRect = CGRect.zero
    @IBInspectable var downButtonFrame: CGRect = CGRect.zero
    
    
    override init(frame: CGRect) {
        upButton = UIButton()
        countLabel = UILabel()
        downButton = UIButton()
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.darkGray
        countLabel.textColor = UIColor.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        upButton = UIButton()
        countLabel = UILabel()
        downButton = UIButton()
        
        super.init(coder: aDecoder)
    }
    
    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
//    struct Increment: Operatable {
//        mutating func unary(value: inout Int) -> Int {
//            return value + 1
//        }
//    }
//    
//    struct Decrement: Operatable {
//        mutating func unary(value: inout Int) -> Int {
//            if value == 0 {
//                return 0
//            } else {
//                return value - 1
//            }
//        }
//    }
    
    func increment() -> Int {
        
        amount += 1
        delegate?.amount = amount
        return amount
    }
    
    func decrement() -> Int {
        
        if amount <= 0 {
            amount = 0
            delegate?.amount = amount
        } else {
            amount -= 1
            delegate?.amount = amount
        }
        
        return amount
    }
    
    func setupViews() {
        let viewsDictionary: [String: AnyObject] = ["upButton": upButton, "countLabel": countLabel, "downButton": downButton]

        upButton.translatesAutoresizingMaskIntoConstraints = false
        upButton.addTarget(self, action: #selector(increment), for: .touchUpInside)
        self.addSubview(upButton)

        countLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(countLabel)

        downButton.translatesAutoresizingMaskIntoConstraints = false
        downButton.addTarget(self, action: #selector(decrement), for: .touchUpInside)
        self.addSubview(downButton)
        
        let horizontal_Constraint = NSLayoutConstraint.constraints(withVisualFormat: "H:|[upButton]-1-[numberLabel]-1-[downButton]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let vertical_Up_Constraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|[upButton]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let vertical_Count_Constraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|[numberLabel]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let vertical_Down_Constraint = NSLayoutConstraint.constraints(withVisualFormat: "V:|[downButton]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        
        self.addConstraints(horizontal_Constraint)
        self.addConstraints(vertical_Up_Constraint)
        self.addConstraints(vertical_Count_Constraint)
        self.addConstraints(vertical_Down_Constraint)
    }
}
