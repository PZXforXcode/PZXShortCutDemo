//
//  ViewController.swift
//  PZXShortCutDemo
//
//  Created by 彭祖鑫 on 2023/11/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .cyan
    }

    func openShortcutsApp() {
        guard let url = URL(string: "shortcuts://") else {
            return
        }

        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        openShortcutsApp2()
    }
    
    func openShortcutsApp2() {
        //    https:www.icloud.com/shortcuts/37cb070261f44e2ea13bfe15477065f7
//        guard let url = URL(string: "shortcuts://create-shortcut") else {
//        guard let url = URL(string: "shortcuts://gallery/search?query=[Intent]") else {
//        guard let url = URL(string: "shortcuts://run-shortcut?name=[Intent签到]") else {
        guard let url = URL(string: "https://www.icloud.com/shortcuts/15fa3a49274a42ebb9dcbfafafdfc506") else {
            return
        }

        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }

    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
//        openShortcutsApp2()
        
    }
}

