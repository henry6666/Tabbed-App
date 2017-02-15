//
//  FourthViewController.swift
//  TabbedApp
//
//  Created by Henry Aguinaga on 2017-02-06.
//  Copyright © 2017 Henry Aguinaga. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var btnFirstTabOUTLET: UIButton!
    
    @IBOutlet weak var btnSecondTabOUTLET: UIButton!
    
    @IBOutlet weak var btnThirdTabOUTLET: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        
        btnFirstTabOUTLET.frame.origin.x = -btnFirstTabOUTLET.frame.width
        btnSecondTabOUTLET.frame.origin.x = view.frame.width
        btnThirdTabOUTLET.frame.origin.x = -btnThirdTabOUTLET.frame.width
        
        
        UIView.animate(withDuration: 2, animations: {
            
            self.btnFirstTabOUTLET.frame.origin.x = self.view.frame.width / 2 - self.btnFirstTabOUTLET.frame.width / 2
            
            self.btnSecondTabOUTLET.frame.origin.x = self.view.frame.width / 2 - self.btnSecondTabOUTLET.frame.width / 2
            
            self.btnThirdTabOUTLET.frame.origin.x = self.view.frame.width / 2 - self.btnThirdTabOUTLET.frame.width / 2
            
            
            self.tabBarController?.tabBar.tintColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            self.tabBarItem.badgeValue = "green"
            self.tabBarItem.badgeColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        })
        
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        tabBarItem.badgeValue = nil
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func goToFirst(_ sender: Any) {
        tabBarController?.selectedIndex = 0
    }
    
    @IBAction func goToSecond(_ sender: Any) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func goToThird(_ sender: Any) {
        tabBarController?.selectedIndex = 2
    }
    
    
    
  
    

}
