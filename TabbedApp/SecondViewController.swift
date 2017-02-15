//
//  SecondViewController.swift
//  TabbedApp
//
//  Created by Henry Aguinaga on 2017-02-06.
//  Copyright © 2017 Henry Aguinaga. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 2, animations: {
            self.tabBarController?.tabBar.tintColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            self.tabBarItem.badgeValue = "blue"
            self.tabBarItem.badgeColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        })
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        tabBarItem.badgeValue = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

