//
//  ViewController.swift
//  MoneyTracker
//
//  Created by Marko Bozilovic on 12/11/2020.
//

import UIKit

class MoneyTrackerViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet var childView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        childView.layer.cornerRadius = 15
        
        animateIn(view: view)
    }

    func animateIn(view: UIView) {
        
        view.bounds = CGRect(x: self.view.bounds.width, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        
        UIView.animate(withDuration: 3) {
            view.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        }
    }
}

