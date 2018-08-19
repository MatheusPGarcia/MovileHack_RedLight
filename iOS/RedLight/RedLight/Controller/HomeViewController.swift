//
//  HomeViewController.swift
//  RedLight
//
//  Created by Matheus Garcia on 19/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    var tattooist = [TattooistDetails]()

    override func viewDidLoad() {
        super.viewDidLoad()

        loadTattooist()
    }

    func loadTattooist() {
        let tattooistAccess = TattooistController()
        tattooistAccess.getAllTattooist { (tattooists) in
            self.tattooist = tattooists
            self.collectionView.reloadData()
        }
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tattooist.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = UICollectionViewCell() as? HomeCollectionViewCell else {
            return UICollectionViewCell()
        }

        let index = indexPath.count
        let details = tattooist[index]

        cell.tattooist = details.name
        cell.rating = String(describing: details.score)
        cell.imageUrl = details.avatarUrl

        return cell
    }
}
