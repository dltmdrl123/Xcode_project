//
//  info27ViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/06/17.
//

import UIKit

class info27ViewController: UIViewController {
    
    @IBAction func blog(_ sender: Any) {
        if let url = URL(string: "https://blog.naver.com/13jsplus/223127186721") {
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
