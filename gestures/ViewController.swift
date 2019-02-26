//
//  ViewController.swift
//  gestures
//
//  Created by Subash on 26/02/19.
//  Copyright © 2019 Subash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var type = UISwipeGestureRecognizer()
   var type2 = UISwipeGestureRecognizer()
    var type3 = UIRotationGestureRecognizer()
    
    @IBOutlet weak var saiView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        type.direction = .left
        type2.direction = .right
        type3.rotation = 360
        saiView.addGestureRecognizer(type)
        saiView.addGestureRecognizer(type2)
 saiView.addGestureRecognizer(type3)
        
        type.addTarget(self, action: #selector(saiSwipe))
        type2.addTarget(self, action: #selector(saiSwipe2))
        type3.addTarget(self, action: #selector(saiSwipe3))
        
    }
    @objc func saiSwipe(){
        saiView.backgroundColor = #colorLiteral(red: 0.1531617343, green: 0.1529000401, blue: 0.1653372645, alpha: 1)
    }
    
    @objc func saiSwipe2(){
        saiView.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    }

    @objc func saiSwipe3(){
        saiView.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    }

}

