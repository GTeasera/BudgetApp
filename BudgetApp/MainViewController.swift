//
//  MainViewController.swift
//  BudgetApp
//
//  Created by Mykyta Tishkin on 10.11.2022.
//


import UIKit

class MainViewController: UIViewController {

    var tempBudget: Double?
    var tempDays: Int?
    var tempType: String?
    
    @IBOutlet weak var budgetF: UILabel!
    @IBOutlet weak var daysF: UILabel!
    @IBOutlet weak var perDayF: UILabel!
    @IBOutlet weak var typeF: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        budgetF.text = String(tempBudget!)
        daysF.text = String(tempDays!)
        perDayF.text = String(tempBudget! / Double(tempDays!))
        typeF.text = tempType
        
        var dataArray: [String] = [String]()
        dataArray = [String(tempBudget!), String(tempDays!), String(tempType!)]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backToSettings(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "settingsViewController") as! ViewController
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
//    func saveData() {
//        
//        
//        UserDefaults.standard.set(dataArray, forKey: "DataArr")
//        UserDefaults.standard.synchronize()
//    }
//    
//    func loadData() {
//        if let arrayLoad = UserDefaults.standard.array(forKey: "DataArr") as? [[String: Any]]
//            data
//    }
}
