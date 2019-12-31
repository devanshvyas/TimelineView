//
//  Timeline.swift
//  PumaHub
//
//  Created by Devansh Vyas on 12/07/19.
//  Copyright © 2019 Concentric Pvt. Ltd. All rights reserved.
//

import Foundation
import UIKit

public class Timeline {
    var title: String!
    var timeString: String!
    var descriptionText: String?
    var actionPerformed: [String]?
    var titleColor: UIColor? = Colors.lightBlack
    var actionItemColor: UIColor? = Colors.lightBlack
    
    public init(title: String,timeString: String,desc: String,actionPerformed: [String], titleColor: UIColor,actionItemColor: UIColor) {
        self.title = title
        self.timeString = timeString
        self.descriptionText = desc
        self.actionPerformed = actionPerformed
        self.titleColor = titleColor
        self.actionItemColor = actionItemColor
    }
}

class TimeLineData: Codable {
    var timeline: [TimelineList]?
}

class TimelineList: Codable {
    var time: String?
    var title: String?
    var details: String?
    var actionPerformed: [String]?
}
