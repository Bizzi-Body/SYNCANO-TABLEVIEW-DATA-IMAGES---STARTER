//
//  detail.swift
//  syncano_fetch_trial
//
//  Created by Ian Bradbury on 09/04/2016.
//  Copyright © 2016 bizzi-body. All rights reserved.
//

import UIKit

class detail: UIViewController {
	
	var country : countries?
	
	
	@IBOutlet weak var textName: UILabel!
	@IBOutlet weak var textCapital: UILabel!
	@IBOutlet weak var textCurrency: UILabel!
	@IBOutlet weak var textTimeZone: UILabel!
	@IBOutlet weak var imageFlag: UIImageView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		if let c = country {
			
			textName.text = c.name
			textCapital.text = c.capital
			textCurrency.text = c.currency
			textTimeZone.text = "\(c.timezone)"
			imageFlag.image = c.flag_f
			
		}
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	// Get the new view controller using segue.destinationViewController.
	// Pass the selected object to the new view controller.
	}
	*/
	
}
