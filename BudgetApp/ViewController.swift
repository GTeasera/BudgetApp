//
//  ViewController.swift
//  BudgetApp
//
//  Created by Mykyta Tishkin on 10.11.2022.
//

import UIKit

class ViewController: UIViewController {

    var days: Int?
    var type: String?
    
    @IBOutlet weak var budgetSize: UITextField!
    @IBOutlet weak var daysBudget: UITextField!
    @IBOutlet weak var segmentControll: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        budgetSize.keyboardType = .numbersAndPunctuation
        daysBudget.keyboardType = .numberPad
    }
    
    
    @IBAction func typeOfBudget(_ sender: Any) {
        if ((sender as AnyObject).selectedSegmentIndex == 0) {
            type = "Economy"
        }
        else if ((sender as AnyObject).selectedSegmentIndex == 1) {
            type = "In Budget"
        }
        else if ((sender as AnyObject).selectedSegmentIndex == 2) {
            type = "Discounts"
        }
    }
    
    @IBAction func finishingSetup(_ sender: Any) {
        days = Int(daysBudget.text!)
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "actionStoryboard") as! MainViewController
        var s = budgetSize.text
        let modifier = s?.replace(",", with: ".")
        
        controller.tempBudget = Double(s!)
        controller.tempDays = days
        controller.tempType = type
        
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    

}

