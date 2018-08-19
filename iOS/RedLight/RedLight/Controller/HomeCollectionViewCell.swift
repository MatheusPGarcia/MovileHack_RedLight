//
//  HomeCollectionViewCell.swift
//  RedLight
//
//  Created by Matheus Garcia on 19/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var favoriteOutlet: UIImageView!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var tattooistName: UILabel!

    var imageUrl: String?
    var rating: String?
    var tattooist: String?
}
