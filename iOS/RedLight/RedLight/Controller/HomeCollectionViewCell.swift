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
    var state: Bool = false

    override func layoutSubviews() {
        guard let imageUrl = imageUrl, let rating = rating, let tattooist = tattooist else {
            return
        }

        favoriteOutlet.image = UIImage(named: "unselectHeart")
        ratingLabel.text = rating
        tattooistName.text = tattooist
        setImage(imageUrl)
    }

    func setImage(_ imageURL: String) {
        let controller = TattooistController()

        controller.getImageByUrl(urlString: imageURL, completion: { (image) in
            DispatchQueue.main.async {
                self.cardImage.image = image
            }
        })
    }

    func changeHeart() {
        if state {
            state = !state
            favoriteOutlet.image = UIImage(named: "unselectHeart")
        } else {
            state = !state
            favoriteOutlet.image = UIImage(named: "selectHeart")
        }
    }
}
