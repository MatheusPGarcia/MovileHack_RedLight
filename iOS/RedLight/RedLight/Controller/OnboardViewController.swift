//
//  OnboardViewController.swift
//  RedLight
//
//  Created by Matheus Garcia on 18/08/18.
//  Copyright © 2018 Matheus Garcia. All rights reserved.
//

import UIKit

class OnboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let urlFormatter = UrlFormatter(parameter: "/v1/tatuador")
        let url = urlFormatter.getUrlString()

        let network = NetworkConnection()
        network.fetch(url: url) { (data) in
            let parser = Parser()
            parser.parseTattooistDetails(data: data)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
