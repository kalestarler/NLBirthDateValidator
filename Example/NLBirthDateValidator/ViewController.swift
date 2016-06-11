//
//  ViewController.swift
//  NLBirthDateValidator
//
//  Created by Kale on 06/11/2016.
//  Copyright (c) 2016 Kale. All rights reserved.
//

import UIKit
import NLBirthDateValidator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Checking 13 Sep 1986, minimum age 18")
        checkDates("13", month: "09", year: "1986", minimumAge: 18)
        
        print("Checking 31 Feb 1986, minimum age 18")
        checkDates("31", month: "02", year: "1986", minimumAge: 18)
        
        print("Checking 13 Sep 2005, minimum age 18")
        checkDates("13", month: "09", year: "2005", minimumAge: 18)
    }
    
    func checkDates(day: String, month: String, year: String, minimumAge: Int) {
        
        let result = NLBirthDateValidator.checkBirthDate(day, month: month, year: year, minimumAge: minimumAge)
        
        if result == .DateValid {
            
            print("Valid.")
        }
        else if result == .DateInvalid {
            
            print("Not valid.")
        }
        else if result == .AgeUnderMinimum {
            
            print("Age under minimum.")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

