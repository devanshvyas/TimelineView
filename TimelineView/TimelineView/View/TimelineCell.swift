//
//  TimelineCell.swift
//  PumaHub
//
//  Created by Devansh Vyas on 11/07/19.
//  Copyright © 2019 Concentric Pvt. Ltd. All rights reserved.
//

import UIKit

class TimelineCell: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descreiptionLabel: UILabel!
    @IBOutlet weak var dottedLineView: DottedLineView!
    @IBOutlet weak var actionLbl: UILabel!
    @IBOutlet weak var yearLbl: UILabel!
    @IBOutlet weak var bigDotLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        yearLbl.isHidden = true
        DispatchQueue.main.async {
            self.bigDotLbl.layer.cornerRadius = self.bigDotLbl.frame.width / 2
            self.bigDotLbl.clipsToBounds = true
        }
    }
}
