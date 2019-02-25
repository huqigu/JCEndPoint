//
//  ViewController.swift
//  JCEndPoint
//
//  Created by huqigu on 02/25/2019.
//  Copyright (c) 2019 huqigu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let parameters: Dictionary = ["channelId": "30", "cursor": "\(getCurrentTimes())", "slipType": "UP"]
        
        HomeNetworking().getHomePageData(parameters: parameters, needLoading: true, logEnable: true) { (status, result, tipString) in
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 获取时间戳
    func getCurrentTimes() -> Int {
        // 获取当前时间
        let now = NSDate()
        
        // 创建一个日期格式器
        let dformatter = DateFormatter()
        dformatter.dateFormat = "yyyy年MM月dd日 HH:mm:ss"
        
        // 当前时间的时间戳
        let timeInterval: TimeInterval = now.timeIntervalSince1970
        return Int(timeInterval)
    }

}

