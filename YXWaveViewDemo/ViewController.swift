//
//  ViewController.swift
//  YXWaveViewDemo
//
//  Created by YourtionGuo on 8/26/16.
//  Copyright © 2016 Yourtion. All rights reserved.
//

import UIKit
import YXWaveView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.redColor()
        
        let avatarFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
        let avatarView = UIView(frame: avatarFrame)
        avatarView.backgroundColor = UIColor.blueColor()
        
        
        let frame = CGRect(x: 0, y: 50, width: self.view.bounds.size.width, height: 150)
        let waterView = YXWaveView(frame: frame, color: UIColor.whiteColor())
        waterView.addOverView(avatarView);
        
        let bgframe = CGRect(x: 0, y: 200, width: self.view.bounds.size.width, height: self.view.bounds.size.height - 200)
        let bgView = UIView(frame: bgframe)
        bgView.backgroundColor = UIColor.whiteColor();
        
        self.view.addSubview(waterView)
        self.view.addSubview(bgView)
        
        
        waterView.start(20)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

