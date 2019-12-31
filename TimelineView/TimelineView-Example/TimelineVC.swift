//
//  ViewController.swift
//  TimelineView
//
//  Created by devanshvyas on 12/27/2019.
//  Copyright (c) 2019 devanshvyas. All rights reserved.
//

import UIKit
import TimelineView

class TimelineVC: UIViewController {

    @IBOutlet weak var timeline: TimelineView!
    
    var darkGreen = UIColor.init(red: 2/255, green: 138/255, blue: 75/255, alpha: 1)
    var lightBlack = UIColor(red:37/255, green:48/255, blue:64/255, alpha:1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeline.timelineData = [
            Timeline(title: "Order Created", timeString: "Apr", desc: "Order details are subject to area which you have selected", actionPerformed: [], titleColor: lightBlack, actionItemColor: lightBlack),
            Timeline(title: "Tank Reading", timeString: "Mar", desc: "", actionPerformed: ["Order Delivered","Order Loaded"], titleColor: lightBlack, actionItemColor: lightBlack),
            Timeline(title: "Order Created", timeString: "Feb", desc: "", actionPerformed: ["Maintenance Req. Raised"], titleColor: darkGreen,actionItemColor: lightBlack),
            Timeline(title: "", timeString: "Jan", desc: "", actionPerformed: ["Tank Dips Missed","Credit Note Received","","","","","","Price Book Updated"], titleColor: lightBlack,actionItemColor: darkGreen)
        ]
    }

}

