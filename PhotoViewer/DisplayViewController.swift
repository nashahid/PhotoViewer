//
//  DisplayViewController.swift
//  PhotoViewer
//
//  Created by Nabeel Shahid on 2015-07-20.
//  Copyright (c) 2015 Nabeel Shahid. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    var currentPhoto : Photo?
    
    
    @IBOutlet weak var CurrentImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var image = UIImage(named: currentPhoto!.filename)
        CurrentImage.image = image
        
        self.title = currentPhoto!.name;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        var thirdScene = segue.destinationViewController as! InfoViewController;
        thirdScene.currentPhoto = self.currentPhoto;
        
    }


}
