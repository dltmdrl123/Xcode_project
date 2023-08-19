//
//  info14ViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/06/16.
//

import UIKit

class info14ViewController: UIViewController {

    @IBAction func blog(_ sender: Any) {
        if let url = URL(string: "https://blog.naver.com/shinycaptain/223088352571") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
