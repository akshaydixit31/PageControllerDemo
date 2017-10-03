//
//  ViewController.swift
//  PageControllerDemo
//
//  Created by Appinventiv Technologies on 03/10/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //  MARK:- Outlets..
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var pageCounter: UIPageControl!
    
    //  MARK:- VARIABLE'S..
    let imageData: [String] = ["1","2","3","4","5","6","7"]
    var timer: Timer!
    var updateCounter: Int!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateCounter = 0
        self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(self.updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer () {
        
        if (self.updateCounter < self.imageData.count){
            
            self.pageCounter.currentPage = self.updateCounter
            self.carImage.image = UIImage(named: self.imageData[self.updateCounter])
            self.updateCounter = self.updateCounter + 1
            
        }else{
            
            self.updateCounter = 0
            
        }
    }
    
}

