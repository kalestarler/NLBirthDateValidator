//
//  NLBirthDateValidator.swift
//  NLBirthDateValidator
//
//  Created by Kale on 9/6/16.
// Updated by Erich on 9/11/18
//  Copyright © 2016 Niveum Labs. All rights reserved.
//

import UIKit

public enum BirthDateCheckResult {
    
    case DateInvalid
    case AgeUnderMinimum
    case DateValid
}

public class NLBirthDateValidator: NSObject {
    
    public class func checkBirthDate(day: String, month: String, year: String, minimumAge: Int?) -> BirthDateCheckResult {
        
        let dateString = "\(day)/\(month)/\(year)"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        let testDate = dateFormatter.date(from: dateString)
        
        if testDate == nil {
            
            // this is not a valid date
            
            return .DateInvalid
        }
        
        let calendar = NSCalendar.current
        var components = calendar.dateComponents([.year], from: testDate!)
        
        let birthDateYearNum = components.year
        
        components = calendar.dateComponents([.year], from: NSDate() as Date)
        
        let currentYearNum = components.year
        
        //check minimum age
        
        var testAge: Int
        
        if let age = minimumAge {
            
            testAge = age
        }
        else {
            
            testAge = 0
        }
        
        if birthDateYearNum! > (currentYearNum! - testAge) {
            
            // this birthdate is below the minimum age
            
            return .AgeUnderMinimum
        }
        
        return .DateValid
    }
}
