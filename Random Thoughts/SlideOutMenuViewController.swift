//
//  SlideOutMenuViewController.swift
//  Random Thoughts
//
//  Created by programming-xcode on 7/31/18.
//  Copyright © 2018 programming-xcode. All rights reserved.
//

import UIKit
import Firebase

class SlideOutMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var menus = [String]()
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        /*
        let image = UIImage(named: "icons8-alarm-40.png")
        profileImage.maskCircle(anyImage: image!) */
        menus.append("Recent Feed")
        menus.append("Most Liked")
        menus.append("About")
        menus.append("My Account")
        menus.append("Sign Out")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 // depends on # of rows, menus in app
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = menus[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let revealviewcontroller:SWRevealViewController = self.revealViewController()
        
        let cell = tableView.cellForRow(at: indexPath)
        print(cell?.textLabel?.text)
        if cell?.textLabel?.text == "Recent Feed"
        {
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "MainFeedViewController") as! MainFeedViewController
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
            
        }
        if cell?.textLabel?.text == "Most Liked"
        {
            
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "MostLikedViewController") as! MostLikedViewController
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            
        revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
        }
        if cell?.textLabel?.text == "My Account"
        {
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "MostLikedViewController") as! MostLikedViewController
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
        }
        if cell?.textLabel?.text == "Setting"
        {
            print("setting Tapped")
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    //}
    
}

/*
extension UIImageView {
    public func maskCircle(anyImage: UIImage) {
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = false
        self.clipsToBounds = true
        
        // make square(* must to make circle),
        // resize(reduce the kilobyte) and
        // fix rotation.
        self.image = anyImage
    }
}*/
