//
//  ViewController.swift
//  ios-taks-app
//
//  Created by rasanga lakshith on 2023-04-20.
//

import UIKit

class TasksViewController: UIViewController {

    @IBOutlet weak var menuSegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSegmentedControl()
    }
    
    private func setupSegmentedControl(){
        menuSegmentedControl.removeAllSegments()
        
        MenuSection.allCases.enumerated().forEach { (index,section) in
            menuSegmentedControl.insertSegment(withTitle: section.rawValue, at: index, animated: false)
        }
        
        menuSegmentedControl.selectedSegmentIndex = 0
    }

}

