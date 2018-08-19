//
//  TrocaDeIdeiasViewController.swift
//  RedLight
//
//  Created by Matheus Garcia on 19/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import UIKit

class TrocaDeIdeiasViewController: UIViewController {

    var menssages: [String] = [
    "Salve! Acho que você já viu que meu trampo é profissa, né? Conta pra mim aí o que cê tá pensando!",
    "Fala mano! Então, queria saber se você tem algum desenho de sketch pronto aí, curto muito teu trampo..",
    "Pô, tenho sim mano. Dá uma olhada nesses aí e se curtir já fecha!"
    ]
}

extension TrocaDeIdeiasViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menssages.count + 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let index = indexPath.row

        if index > 3 {
            return UITableViewCell()
        } else if index == 3 {
            let cellIdentifier = "SelectionCell"

            guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) else { return UITableViewCell() }

            return cell
        } else if index % 2 == 0 {
            let cellIdentifier = "TatuadorCell"

            guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? TatuadorTableViewCell else {
                print("Ops, something went wrong")
                return UITableViewCell()
            }

            cell.messageContent.text = menssages[index]
            cell.avatar.image = UIImage(named: "tatuador")

            return cell
        } else {
            let cellIdentifier = "ClienteCell"

            guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? MyselfTableViewCell else {
                print("Ops, something went wrong")
                return UITableViewCell()
            }

            cell.menssageContent.text = menssages[index]
            cell.avatar.image = UIImage(named: "user")

            return cell
        }
    }
}
