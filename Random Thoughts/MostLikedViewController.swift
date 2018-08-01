//
//  MostLikedViewController.swift
//  Random Thoughts
//
//  Created by programming-xcode on 8/1/18.
//  Copyright © 2018 programming-xcode. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class MostLikedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var messages = [Message]()
    
    @IBOutlet var menuButton: UIBarButtonItem!
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.target = self.revealViewController()
        menuButton.action = Selector("revealToggle:")
        tableView.delegate = self
        tableView.dataSource = self
        let databaseRef = Database.database().reference()
        print(databaseRef)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "noImageCell")
        var imageCell = self.tableView.dequeueReusableCell(withIdentifier: "ImageCell")
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
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
