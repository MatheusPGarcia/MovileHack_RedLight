//
//  TattooistProfileViewController.swift
//  RedLight
//
//  Created by Matheus Garcia on 19/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import UIKit

class TattooistProfileViewController: UIViewController {

    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var instaButton: UIButton!
    @IBOutlet weak var trocarUmaIdeiaButton: UIButton!
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var tattooistScoreLabel: UILabel!
    @IBOutlet weak var tattooistLocationLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var tattooistNameLabel: UILabel!
    @IBOutlet weak var firstCategoryLabel: UILabel!
    @IBOutlet weak var secondCategoryLabel: UILabel!
    
    var detail: TattooistDetails?

    override func viewDidLoad() {
        super.viewDidLoad()

        instaButton.backgroundColor = .clear
        instaButton.layer.borderWidth = 2
        instaButton.layer.borderColor = UIColor.black.cgColor

        avatarImage.layer.cornerRadius = avatarImage.frame.width / 2
        avatarImage.layer.masksToBounds = true

        guard let detail = detail else { return }

        aboutLabel.text = detail.description
        tattooistScoreLabel.text = String(describing: detail.score!)
        tattooistNameLabel.text = detail.name

        guard let style = detail.style else { return }
        let categories = style.components(separatedBy: ", ")

        firstCategoryLabel.text = categories[0]
        secondCategoryLabel.text = categories[1]

        if let description = detail.portifolioUrl {
            setImage(description[1])
        }

        if let description = detail.avatarUrl {
            setAvatar(description)
        }
    }

    func setImage(_ imageURL: String) {
        let controller = TattooistController()

        controller.getImageByUrl(urlString: imageURL, completion: { (image) in
            DispatchQueue.main.async {
                self.backImage.image = image
            }
        })
    }

    func setAvatar(_ imageUrl: String) {
        let controller = TattooistController()

        controller.getImageByUrl(urlString: imageUrl) { (image) in
            DispatchQueue.main.async {
                self.avatarImage.image = image
            }
        }
    }

    @IBAction func returnWasPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
