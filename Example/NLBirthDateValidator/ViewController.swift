//
//  ViewController.swift
//  NLBirthDateValidator
//
//  Created by Kale on 06/11/2016.
//  Copyright (c) 2016 Kale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if NLBirthDateValidator.checkBirthDate("13", month: "09", year: "1986", minimumAge: 18) == true {
            
            print("Test date: 13 Sep 1986 is valid and meets the minimum age requirement.")
        }
        else {
            
            print("Not valid.")
        }
        
        if NLBirthDateValidator.checkBirthDate("30", month: "02", year: "1986", minimumAge: 18) == true {
            
            print("Valid.")
        }
        else {
            
            print("Test date: 30 Feb 1986 is NOT valid.")
        }
        
        if NLBirthDateValidator.checkBirthDate("12", month: "12", year: "2005", minimumAge: 18) == true {
            
            print("Valid.")
        }
        else {
            
            print("Test date: 12 Dec 2005 is valid but does NOT meet the minimum age requirement.")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

