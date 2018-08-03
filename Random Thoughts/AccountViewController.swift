//
//  AccountViewController.swift
//  Random Thoughts
//
//  Created by programming-xcode on 8/1/18.
//  Copyright © 2018 programming-xcode. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet var menuButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        menuButton.target = self.revealViewController()
        menuButton.action = Selector("revealToggle:")
        // Do any additional setup after loading the view.
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

}
