//
//  composeViewController.swift
//  Tumblr
//
//  Created by Alexandra Saunders on 6/9/16.
//  Copyright © 2016 Alexandra Saunders. All rights reserved.
//

import UIKit

class composeViewController: UIViewController {

    @IBOutlet weak var textButton: UIImageView!
    @IBOutlet weak var photoButton: UIImageView!
    @IBOutlet weak var quoteButton: UIImageView!
    @IBOutlet weak var linkButton: UIImageView!
    @IBOutlet weak var chatButton: UIImageView!
    @IBOutlet weak var videoButton: UIImageView!
    
    var textButtonOrigin: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
            self.textButton.transform = CGAffineTransformMakeTranslation(0, 600)
            self.photoButton.transform = CGAffineTransformMakeTranslation(0, 500)
            self.quoteButton.transform = CGAffineTransformMakeTranslation(0, 600)
            self.linkButton.transform = CGAffineTransformMakeTranslation(0, 500)
            self.chatButton.transform = CGAffineTransformMakeTranslation(0, 700)
            self.videoButton.transform = CGAffineTransformMakeTranslation(0, 500)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.2) { () -> Void in
            self.textButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.photoButton.transform = CGAffineTransformMakeTranslation(0, 0)
        }
        UIView.animateWithDuration(0.3) { () -> Void in
            self.quoteButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.linkButton.transform = CGAffineTransformMakeTranslation(0, 0)
        }
        UIView.animateWithDuration(0.4) { () -> Void in
            self.chatButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.videoButton.transform = CGAffineTransformMakeTranslation(0, 0)
        }
        
    }
    
//    override func viewWillDisappear(animated: Bool) {
//        super.viewWillDisappear(animated)
//        self.textButton.transform = CGAffineTransformMakeTranslation(0, 0)
//        self.photoButton.transform = CGAffineTransformMakeTranslation(0, 0)
//        self.quoteButton.transform = CGAffineTransformMakeTranslation(0, 0)
//        self.linkButton.transform = CGAffineTransformMakeTranslation(0, 0)
//        self.chatButton.transform = CGAffineTransformMakeTranslation(0, 0)
//        self.videoButton.transform = CGAffineTransformMakeTranslation(0, 0)
//        
//    }
//    
//    override func viewDidDisappear(animated: Bool) {
//        super.viewDidDisappear(animated)
//        UIView.animateWithDuration(0.2) { () -> Void in
//            self.textButton.transform = CGAffineTransformMakeTranslation(0, -500)
//            self.photoButton.transform = CGAffineTransformMakeTranslation(0, -500)
//        }
//        UIView.animateWithDuration(0.3) { () -> Void in
//            self.quoteButton.transform = CGAffineTransformMakeTranslation(0, -500)
//            self.linkButton.transform = CGAffineTransformMakeTranslation(0, -500)
//        }
//        UIView.animateWithDuration(0.4) { () -> Void in
//            self.chatButton.transform = CGAffineTransformMakeTranslation(0, -500)
//            self.videoButton.transform = CGAffineTransformMakeTranslation(0, -500)
//        }
//        
//    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
