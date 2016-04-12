//
//  login.swift
//  syncano_fetch_trial
//
//  Created by Ian Bradbury on 08/04/2016.
//  Copyright © 2016 bizzi-body. All rights reserved.
//

import UIKit
import syncano_ios

class login: UIViewController {
	
	
	// ##################################################
	// Form elements
	// ##################################################
	
	@IBOutlet weak var textUsername: UITextField!
	@IBOutlet weak var textPassword: UITextField!
	
	// Login button
	@IBAction func actionLogin(sender: AnyObject) {
		
	}

	
	
	
	
	// ##################################################
	// View life cycle
	// ##################################################
	
	// Ensure there is no user when the login scene displays
	override func viewWillAppear(animated: Bool) {
		sLogOutUser()
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Set username to first responder
		self.textUsername.becomeFirstResponder()
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	
	
	// ##################################################
	// Syncano support methods
	// ##################################################
	
	func sLogOutUser() {
		
		// Check there is a current user
		if let u = SCUser.currentUser() {
			
			// Log out the current user
			u.logout()
		}
	}
	
}
