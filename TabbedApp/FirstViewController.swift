//
//  FirstViewController.swift
//  TabbedApp
//
//  Created by Henry Aguinaga on 2017-02-06.
//  Copyright © 2017 Henry Aguinaga. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 2, animations: {
            self.tabBarController?.tabBar.tintColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            self.tabBarItem.badgeValue = "Orange"
            self.tabBarItem.badgeColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            
        })
    
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        tabBarItem.badgeValue = nil
    }
    
    @IBAction func clearBadgesAction(_ sender: UIButton) {
        
        for item in (tabBarController?.tabBar.items)! {
            item.badgeValue = nil
        
        }
    }
    
    func cascadeBadgesFrom(tabIndex: Int) {
        if tabIndex > 3 {
            return
        } else {
        
            UIView.animate(withDuration: 1, animations: {
                self.tabBarController?.tabBar.items?[tabIndex].badgeValue = "NEW"
                
            }, completion: { (isFinished: Bool) in
                self.tabBarController?.tabBar.items?[tabIndex].badgeValue = nil
                
                self.cascadeBadgesFrom(tabIndex: tabIndex + 1)
                
            })
        
        }
        
        
    }
    
    func cascadeBadges()  {
        
        // First Tab
        UIView.animate(withDuration: 1, animations: {
            
            self.tabBarController?.tabBar.items?[0].badgeValue = "New"
            
            
        }, completion: { (isFinished: Bool) in
            
            self.tabBarController?.tabBar.items?[0].badgeValue = nil
            
            // Second Tab
            UIView.animate(withDuration: 1, animations: {
                
                self.tabBarController?.tabBar.items?[1].badgeValue = "New"
                
                
            }, completion: { (isFinished: Bool) in
                
                self.tabBarController?.tabBar.items?[1].badgeValue = nil
                
                
                // Third Tab
                UIView.animate(withDuration: 1, animations: {
                    
                    self.tabBarController?.tabBar.items?[2].badgeValue = "New"
                    
                    
                }, completion: { (isFinished: Bool) in
                    
                    self.tabBarController?.tabBar.items?[2].badgeValue = nil
                    
                    
                    // Fourth Tab
                    UIView.animate(withDuration: 1, animations: {
                        
                        self.tabBarController?.tabBar.items?[3].badgeValue = "New"
                        
                        
                    }, completion: { (isFinished: Bool) in
                        
                        self.tabBarController?.tabBar.items?[3].badgeValue = nil
                    })
                })
                
            })
            
            
        })

    }
    @IBAction func cascadeBadgesAction(_ sender: UIButton) {
        
        cascadeBadgesFrom(tabIndex: 0)
        
    }
    
    

}

