//
//  InfoViewController.swift
//  PhotoViewer
//
//  Created by Nabeel Shahid on 2015-07-20.
//  Copyright (c) 2015 Nabeel Shahid. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    var currentPhoto : Photo?
    
    @IBOutlet weak var DetailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DetailsLabel.text = currentPhoto!.notes
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
