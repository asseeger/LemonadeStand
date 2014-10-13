//
//  ViewController.swift
//  LemonadeStand
//
//  Created by Andreas Seeger @MBPR on 13.10.14.
//  Copyright (c) 2014 ASSeeger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // View variables/containers
    let statusBarHeight: CGFloat! = CGFloat(UIApplication.sharedApplication().statusBarFrame.height)
    var container0: UIView!
    var container1: UIView!
    var container2: UIView!
    var container3: UIView!
    var container4: UIView!
    
    // Constants
    let kNinths: CGFloat = 1.0 / 9.0
    
    // Container0 variables
    var container0TitleLabel = UILabel()
    var availableMoney: Int! = 10
    var container0AvailableMoneyLabel = UILabel()
    var availableLemons: Int! = 1
    var container0AvailableLemonsLabel = UILabel()
    var availableIceCubes: Int! = 1
    var container0AvailableIceCubesLabel = UILabel()
    
    // Container1 variables
    var container1TitleLabel = UILabel()
    var container1LemonsLabel = UILabel()
    var container1IceCubeLabel = UILabel()
    
    var container1PlusLemonadeButton = UIButton()
    var container1MinusLemonadeButton = UIButton()
    var container1PlusIceCubeButton = UIButton()
    var container1MinusIceCubeButton = UIButton()
    
    var container1AmountOfLemonsLabel = UILabel()
    var container1AmountOfIceCubesLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println("\(self.statusBarHeight)")
        
        setupContainerViews()
        setupContainer0(self.container0)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Setup the views
    
    func setupContainerViews() {
        
        // Top container, contents: currently available money, lemons and ice cubes
        
        self.container0 = UIView(frame: CGRect(x: 0, y: 0 + statusBarHeight, width: self.view.bounds.width, height: (self.view.bounds.height - statusBarHeight) * 2 * kNinths))
        container0.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.container0)
        
        self.container1 = UIView(frame: CGRect(x: 0, y: 0 + statusBarHeight + container0.bounds.height, width: self.view.bounds.width, height: (self.view.bounds.height - statusBarHeight) * 2 * kNinths))
        container1.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.container1)
        
        self.container2 = UIView(frame: CGRect(x: 0, y: 0 + statusBarHeight + container0.bounds.height + container1.bounds.height, width: self.view.bounds.height, height: (self.view.bounds.height - statusBarHeight) * 2 * kNinths))
        container2.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.container2)
        
        self.container3 = UIView(frame: CGRect(x: 0, y: 0 + statusBarHeight + container0.bounds.height + container1.bounds.height + container2.bounds.height, width: self.view.bounds.width, height: (self.view.bounds.height - statusBarHeight) * 2 * kNinths))
        container3.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.container3)
        
        self.container4 = UIView(frame: CGRect(x: 0, y: 0 + statusBarHeight + container0.bounds.height + container1.bounds.height + container2.bounds.height + container3.bounds.height, width: self.view.bounds.width, height: (self.view.bounds.height - statusBarHeight) *  kNinths))
        container4.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.container4)
    }
    
    func setupContainer0(containerView: UIView) {
        
        // Add "You have"-Title
        self.container0TitleLabel.text = "You have:"
        self.container0TitleLabel.font = UIFont(name: "MarkerFelt-Wide", size: 40)
        self.container0TitleLabel.textColor = UIColor.yellowColor()
        self.container0TitleLabel.sizeToFit()
        containerView.addSubview(container0TitleLabel)
        
        // Add currently available Money
        self.container0AvailableMoneyLabel.text = "$\(availableMoney)"
        self.container0AvailableMoneyLabel.font = UIFont(name: "MarkerFelt-Wide", size: 30)
        self.container0AvailableMoneyLabel.textColor = UIColor.yellowColor()
        self.container0AvailableMoneyLabel.textAlignment = NSTextAlignment.Left
        self.container0AvailableMoneyLabel.sizeToFit()
        self.container0AvailableMoneyLabel.center = CGPoint(x: containerView.center.x, y: containerView.center.y / 3.0 * 1.0)
        containerView.addSubview(container0AvailableMoneyLabel)
        
        // Add currently available Lemons
        self.container0AvailableLemonsLabel.text = "\(availableLemons) Lemons"
        self.container0AvailableLemonsLabel.font = UIFont(name: "MarkerFelt-Wide", size: 30)
        self.container0AvailableLemonsLabel.textColor = UIColor.yellowColor()
        self.container0AvailableLemonsLabel.sizeToFit()
        self.container0AvailableLemonsLabel.center = CGPoint(x: containerView.center.x, y: containerView.center.y / 3.0 * 2.0)
        containerView.addSubview(container0AvailableLemonsLabel)
        
        // Add currently available Ice Cubes
        self.container0AvailableIceCubesLabel.text = "\(availableIceCubes) Ice Cubes"
        self.container0AvailableIceCubesLabel.font = UIFont(name: "MarkerFelt-Wide", size: 30)
        self.container0AvailableIceCubesLabel.textColor = UIColor.yellowColor()
        self.container0AvailableIceCubesLabel.sizeToFit()
        self.container0AvailableIceCubesLabel.center = CGPoint(x: containerView.center.x, y: containerView.center.y / 3.0 * 3.0)
        containerView.addSubview(container0AvailableIceCubesLabel)
    }
    
    func setupContainer1(containerView: UIView) {
        
    }
    
    
    
}

