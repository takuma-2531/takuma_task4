//
//  ViewController.swift
//  takuma_task4
//
//  Created by 小川卓馬 on 2021/06/20.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet weak private var countLabel: UILabel!
    private var count = 0 {
        didSet {
            updateCountLabel()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        updateCountLabel()
    }

    @IBAction private func tapPlusOneButton(_ sender: UIButton) {
        count += 1
    }

    @IBAction private func tapClearButton(_ sender: UIButton) {
        count = 0
    }

    private func updateCountLabel() {
        countLabel.text = String(count)
    }
}
