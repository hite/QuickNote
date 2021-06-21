//
//  ViewController.swift
//  QuickNote
//
//  Created by liang on 2021/6/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .red
        
        // 创建 activity
        let activity = NSUserActivity(activityType: "me.hite.app.QuickNote.type1")
        activity.title = "I am in ViewController and background color is red."
        activity.targetContentIdentifier = "me.hite.app.QuickNote.type1_\(ViewController.self)"
        // persistentIdentifier 也可以，这样 Spotlight 也可以搜到
        activity.persistentIdentifier = "me.hite.app.QuickNote.type1_\(ViewController.self)"
        activity.userInfo = ["timestamp": "\(Date.now)", "text": "我是支持 Spotlight 的#吃饭#下雨"]
        // 注册为最新的 activity
        self.userActivity = activity
    }


}

