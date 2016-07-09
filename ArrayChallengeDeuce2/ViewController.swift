//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    // Create your methods here
    
    func addNameToDeliLine(name:String) -> String {
        
        if name == "Billy Crystal" || name == "Meg Ryan" {
            deliLine.insert(name, atIndex: 0)
            
            let firstAndLastName = name.componentsSeparatedByString(" ")
            let firstName = firstAndLastName[0]
            
            return "Welcome \(firstName)! You can sit wherever you like."
            
        } else if deliLine.count == 0 {
            
            deliLine.append(name)
            return "Welcome \(name), you're first in line!"
        } else {
            
            deliLine.append(name)
            return "Welcome \(name), you're number \(deliLine.count) in line."
        }
        
    }
    
    func nowServing() -> String {
        
        if deliLine.count == 0 {
            
            return "There is no-one to be served."
            
        } else {
            
            let currentCustomer = "\(deliLine.removeAtIndex(0))"
            
            return "Now serving \(currentCustomer)!"
            
        }
    }
    
    func deliLineDescription() -> String {
        
        var lineCall = ""
        
        if deliLine.count == 0 {
            
            return "The line is currently empty."
        } else {
            
            for name in deliLine {
                
                lineCall.appendContentsOf("\(name)\n")
                
            }
        }
        
        return lineCall
    }
    
}