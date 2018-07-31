//
//  ViewController.swift
//  Random Thoughts
//
//  Created by programming-xcode on 7/30/18.
//  Copyright © 2018 programming-xcode. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {
    
    
    @IBOutlet var segment: UISegmentedControl!
    @IBOutlet var Email: UITextField!
    @IBOutlet var Username: UITextField!
    @IBOutlet var Password: UITextField!
    @IBOutlet var googleSignIn: GIDSignInButton!
    @IBOutlet var signInorUp: UIButton!
    var signIn = true
    override func viewDidLoad() {
        super.viewDidLoad()
        Email.isHidden = true
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
        googleSignIn.colorScheme = .light
        googleSignIn.style = .wide
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signInSegment(_ sender: Any) {
        switch segment.selectedSegmentIndex {
        case 0:
            Email.isHidden = true
            Username.isHidden = false
            Password.isHidden = false
            break
        case 1:
            Email.isHidden = false
            Username.isHidden = false
            Password.isHidden = false
            break
        default:
            break
        }
    }
    
    @IBAction func signInTapped(_ sender: Any) {
        
    }
    
    @IBAction func googleLogin(_ sender: Any) {
        GIDSignIn.sharedInstance().signIn()
    }
}

