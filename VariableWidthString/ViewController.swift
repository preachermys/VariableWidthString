//
//  ViewController.swift
//  VariableWidthString
//
//  Created by Preacher on 20.01.2021.
//  Copyright © 2021 Yulia Milovanova. All rights reserved.
//

import UIKit

// run on, say, iPhone 7 simulator, and switch between portrait and landscape

class ViewController: UIViewController {
    @IBOutlet weak var lab: UILabel!

    override func viewDidLayoutSubviews() {
        let s = NSLocalizedString("Greeting", comment:"Greeting") as NSString
        self.lab.text = s.variantFittingPresentationWidth(Int(self.lab.bounds.width))
    }
}
