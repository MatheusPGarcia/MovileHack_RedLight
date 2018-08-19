//
//  MyselfTableViewCell.swift
//  RedLight
//
//  Created by Matheus Garcia on 19/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import UIKit

class MyselfTableViewCell: UITableViewCell {

    @IBOutlet weak var menssageContent: UILabel!
    @IBOutlet weak var avatar: UIImageView!

    override func layoutSubviews() {
        avatar.backgroundColor = .clear
        avatar.layer.borderWidth = 2
        avatar.layer.borderColor = UIColor.white.cgColor

        avatar.layer.cornerRadius = avatar.frame.width / 2
        avatar.layer.masksToBounds = true
    }
}
