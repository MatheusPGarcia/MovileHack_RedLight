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
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tattooist.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TattooistCell", for: indexPath) as? HomeCollectionViewCell else {
            return UICollectionViewCell()
        }

        let index = indexPath.item
        let details = tattooist[index]

        guard let urlStringArray = details.portifolioUrl else {
            return UICollectionViewCell()
        }

        let urlString = urlStringArray.first

        cell.tattooist = details.name
        cell.rating = String(describing: details.score!)
        cell.imageUrl = urlString

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let index = indexPath.item

        let profile = tattooist[index]

        let view = UIStoryboard(name: "Home", bundle: nil)

        guard let destination = view.instantiateViewController(withIdentifier: "TattooistProfile") as? TattooistProfileViewController else {
            return
        }

        destination.detail = profile

        self.present(destination, animated: true, completion: nil)
    }
}
