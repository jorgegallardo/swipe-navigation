//
//  ViewController.swift
//  Swipe Navigation
//
//  Created by Jorge Gallardo on 8/15/15.
//  Copyright © 2015 Jorge Gallardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create an instance of view controller 0
        let vc0 = ViewController0(nibName: "ViewController0", bundle: nil)
        
        // add it as a child view to our view controller
        self.addChildViewController(vc0)
        
        // add its view to our scrollview
        self.scrollView.addSubview(vc0.view)
        vc0.didMoveToParentViewController(self)
        
        
        
        let vc1 = ViewController1(nibName: "ViewController1", bundle: nil)
        // in order to scroll to the next view, we need its frame to be different than the first vc above
        var frame1 = vc1.view.frame
        frame1.origin.x = self.view.frame.size.width
        vc1.view.frame = frame1
        self.addChildViewController(vc1)
        self.scrollView.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        
        
        
        let vc2 = ViewController2(nibName: "ViewController2", bundle: nil)
        var frame2 = vc2.view.frame
        frame2.origin.x = self.view.frame.size.width * 2
        vc2.view.frame = frame2
        self.addChildViewController(vc2)
        self.scrollView.addSubview(vc2.view)
        vc1.didMoveToParentViewController(self)
        
        
        
        let vc3 = ViewController3(nibName: "ViewController3", bundle: nil)
        var frame3 = vc3.view.frame
        frame3.origin.x = self.view.frame.size.width * 3
        vc3.view.frame = frame3
        self.addChildViewController(vc3)
        self.scrollView.addSubview(vc3.view)
        vc1.didMoveToParentViewController(self)
        
        
        // start view controller at the bottom of nav bar (44) + status bar (22)
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 4, self.view.frame.size.height - 66)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

