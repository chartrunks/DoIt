//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Mac on 5/26/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameText: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTapped(_ sender: Any) {
        //Create a Task from the outlet information
        
        let task = Task()
        task.name = taskNameText.text!
        task.important = importantSwitch.isOn
        
        //Add new task to array in previous ViewController
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
