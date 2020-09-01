//
//  ViewController.swift
//  TipCalculator
//
//  Created by Naveena vishnu on 8/29/20.
//  Copyright © 2020 codePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //in the following we are gonna create 3 outlets namely: billField, tipLabel, totalLabel
    //basically the below three are the names of the items on our view screen and if we wanna modify it we simply refer tp these names in the functions below
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!

    @IBOutlet weak var totalLabel: UILabel!
    
    //outlet for using the tipPercentages' index as the user chooses

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        //here code will be run whenever a user taps something.
        //ex: print("Hello")  -> Hello will be printed on the console when the user taps in the screen
        print("Hello")
        //here we wanna dismiss the keyboard on tap: view for our view where the tap gesture is placed and the endEditting funct is to dismiss keyboard whenever we tap => make value true for this
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //action item entered for the text field
           //actions i want this function to perform:
           //1. get the bill amount
           
        let bill = Double(billField.text!) ?? 0
        // ?? 0 this expression handles the case for user entry of value that is not a number
        
        //encapsulating it in double () to convert text entered to number so that we can do calculations with it
        
           //2. calculate the tip and total
        
            //creating a swift array to help with calculating the bill based on the percentages clicked by the user:
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex] //but instead of static: tipPercentages[0] we need the index sent to change as the user changes it so for this we need to again use an outlet. so we dont want it to remian 0 but the index that the user selects. so now: .selectedSegmentIndex will be 0,1 or 2 depending on what the user inputs
            let total = bill + tip
           
           //3. update the tip and total labels
           tipLabel.text = String(format: "$%.2f", tip)// simple format: "$\(tip)"
           totalLabel.text = String(format: "$%.2f", total) // simple format: "$\(total)"
    }
  
    
    
    
}

