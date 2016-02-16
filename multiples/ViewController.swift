//
//  ViewController.swift
//  multiples
//
//  Created by Omair Javed on 2/15/16.
//  Copyright © 2016 A-Tek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // properties
    var maxSum: Int = 40
    var currSum: Int = 0
    var multipleAdd: Int = 0
    
    // outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var multiplesEntryText: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var mathLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    // actions
    
    // starts multiple game by showing/hiding appropriate views
    @IBAction func onPlayButtonPressed(sender: UIButton!){
        if multiplesEntryText.text != nil && multiplesEntryText.text != "" {
            logo.hidden = true
            multiplesEntryText.hidden = true
            playBtn.hidden = true
            
            mathLbl.hidden = false
            addBtn.hidden = false
            
            currSum = 0
            multipleAdd = Int(multiplesEntryText.text!)!
            
            mathLbl.text = "Press Add to add!"
            
        }
    }
    
    
    // adds multiple to current sum and checks if game finished
    @IBAction func onAddButtonPressed(sender: UIButton!) {
        currSum += multipleAdd
        updateMathLabel()
        
        if(currSum >= maxSum) {
            restartGame();
        }
    }
    
    func updateMathLabel() {
        mathLbl.text = "\(currSum - multipleAdd) + \(multipleAdd) = \(currSum)"
    }
    
    func restartGame() {
        logo.hidden = false
        multiplesEntryText.hidden = false
        playBtn.hidden = false
        
        mathLbl.hidden = true
        addBtn.hidden = true
        
        multiplesEntryText.text = ""
    }
    
    
    
    


}

