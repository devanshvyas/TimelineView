//
//  TimelineView.swift
//  PumaHub
//
//  Created by Devansh Vyas on 11/07/19.
//  Copyright © 2019 Concentric Pvt. Ltd. All rights reserved.
//

import UIKit

@IBDesignable public class TimelineView: UIView {
    @IBOutlet weak var tableView: UITableView!
    
    public var timelineData = [Timeline]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    func sharedInit() {
        nibSetup(nibName: .TimelineView)
        
        let cellNib = UINib(nibName: String(describing: TimelineCell.self), bundle: .init(for: TimelineCell.self))
        tableView.register(cellNib, forCellReuseIdentifier: String(describing: TimelineCell.self))
        tableView.removeFooterView()
        tableView.backgroundColor = .white
    }
}

//MARK:- Tableview Datasource Methods
extension TimelineView: UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timelineData.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(TimelineCell.self, for: indexPath)
        let index = indexPath.row
        let timeLine = timelineData[index]
        cell.timeLabel.text = timeLine.timeString
        cell.titleLabel.textColor = timeLine.titleColor
        cell.titleLabel.text = timeLine.title
        cell.descreiptionLabel.text = timeLine.descriptionText
        cell.actionLbl.textColor = timeLine.actionItemColor
        cell.yearLbl.isHidden = timeLine.timeString == "Jan" ? false : true
        cell.dottedLineView.isHidden = index == timelineData.count 
        return cell
    }
}

//MARK:- Tableview Delegate Methods
extension TimelineView: UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
