//
//  UIView.swift
//  ONUS
//
//  Created by Devansh Vyas on 21/01/19.
//  Copyright © 2019 Solution Analysts. All rights reserved.
//

import UIKit

enum NibNames: String {
    case TimelineView
    case TimelineCell
}

extension UIView {
     //MARK: To load nib
    func nibSetup(nibName: NibNames) {
        backgroundColor = .clear
        guard let view = Bundle(for: self.classForCoder).loadNibNamed(nibName.rawValue, owner: self, options: nil)?.first as? UIView else { return }
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        view.isUserInteractionEnabled = true
        
        addSubview(view)
    }
}
