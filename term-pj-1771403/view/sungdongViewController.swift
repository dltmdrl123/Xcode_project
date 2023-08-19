//
//  sungdongViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/06/17.
//

import UIKit

class sungdongViewController: UIViewController {
    
    @IBOutlet weak var first: UIView!
    @IBOutlet weak var second: UIView!
    @IBOutlet weak var third: UIView!
    @IBAction func info1(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView22") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    @IBAction func info2(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView23") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    @IBAction func info3(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView24") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }

    
    @IBAction func MapStart4(_ sender: Any) {
        guard let start = self.storyboard?.instantiateViewController(withIdentifier: "MapView6") else {return}
        self.navigationController?.pushViewController(start, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchView(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            first.alpha = 1
            second.alpha = 0
            third.alpha = 0
        } else if sender.selectedSegmentIndex == 1{
            first.alpha = 0
            second.alpha = 1
            third.alpha = 0
            
        } else {
            first.alpha = 0
            second.alpha = 0
            third.alpha = 1
        }
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
