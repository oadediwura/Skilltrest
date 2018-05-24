//
//  ViewController.swift
//  Skilltrest
//
//  Created by Oluwaseyi Adediwura on 5/22/18.
//  Copyright © 2018 Oluwaseyi Adediwura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var imgView: UIImageView!
    
    var timer : Timer!
    var updateCounter : Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateCounter = 0
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(ViewController.updateTimer), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc internal func updateTimer()
    {
        if(updateCounter <= 2)
        {
            pageControl.currentPage = updateCounter
            imgView.image = UIImage(named: String(updateCounter + 1) + ".png")
            updateCounter = updateCounter + 1
        }
        else
        {
            updateCounter = 0
        }
        // run the application
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

