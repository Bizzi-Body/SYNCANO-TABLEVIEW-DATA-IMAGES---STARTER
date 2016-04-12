//
//  table.swift
//  syncano_fetch_trial
//
//  Created by Ian Bradbury on 08/04/2016.
//  Copyright © 2016 bizzi-body. All rights reserved.
//

import UIKit
import syncano_ios

class table: UITableViewController {
	
	// ##################################################
	// Objects
	// ##################################################
	
	// Country data
	var cs = [countries]()
	
	
	
	
	
	// ##################################################
	// Form elements
	// ##################################################
	
	@IBAction func actionLogout(sender: AnyObject) {
		
		// Log out the user - display the login scene
		let vc = (storyboard!.instantiateViewControllerWithIdentifier("1") as! login)
		self.presentViewController(vc, animated: true, completion: nil)
		
	}
	
	@IBAction func actionSync(sender: AnyObject) {
		
		// Fetch data from Syncano platform
		
	}
	
	
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Uncomment the following line to preserve selection between presentations
		self.clearsSelectionOnViewWillAppear = false

	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// MARK: - Table view data source
	
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		// #warning Incomplete implementation, return the number of sections
		return 1
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// #warning Incomplete implementation, return the number of rows
		return cs.count
	}
	
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! tablecell
		
		return cell
	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

		// send the selected object to the detail view
		if let indexPath = self.tableView.indexPathForSelectedRow {
			let v = segue.destinationViewController as! detail
			v.country = self.cs[indexPath.row]
		}
	}

	
}





