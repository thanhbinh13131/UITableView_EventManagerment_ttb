//
//  DetailViewController.swift
//  UITableView_ttb
//
//  Created by admin25 on 4/22/17.
//  Copyright © 2017 admin25. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var eventTitle: UILabel!
    
    @IBOutlet weak var eventContent: UITextView!
    
    @IBOutlet weak var eventDate: UILabel!
    
    
    var event: Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        eventTitle.text = event?.title;
        eventDate.text = event?.date;
        eventContent.text = event?.description;
        
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
