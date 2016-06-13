//
//  searchViewController.swift
//  Tumblr
//
//  Created by Alexandra Saunders on 6/8/16.
//  Copyright © 2016 Alexandra Saunders. All rights reserved.
//

import UIKit

class searchViewController: UIViewController {

    @IBOutlet weak var loadingImageView: UIImageView!
    
    @IBOutlet weak var searchView: UIImageView!
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    var animatedImage: UIImage!
    
    var images: [UIImage]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]

        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
        
        loadingImageView.image = animatedImage

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        searchView.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0, delay: 1.5,
            options: [], animations: { () -> Void in
                self.loadingImageView.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 1.5,
            options: [], animations: { () -> Void in
                self.searchView.alpha = 1
            }, completion: nil)
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
