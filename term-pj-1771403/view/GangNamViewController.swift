//
//  GangNamViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/05/28.
//

import UIKit

class GangNamViewController: UIViewController {
    
    @IBAction func info1(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView19") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    @IBAction func info2(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView20") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    @IBAction func info3(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView21") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }

    
    @IBAction func MapStart4(_ sender: Any) {
        guard let start = self.storyboard?.instantiateViewController(withIdentifier: "MapView5") else {return}
        self.navigationController?.pushViewController(start, animated: true)
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
