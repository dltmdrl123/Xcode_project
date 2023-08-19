//
//  unpyeongViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/06/17.
//

import UIKit

class unpyeongViewController: UIViewController {
    
    @IBOutlet weak var second: UIView!
    @IBOutlet weak var first: UIView!
    @IBAction func info1(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView27") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    @IBAction func info2(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView28") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }

    
    @IBAction func MapStart4(_ sender: Any) {
        guard let start = self.storyboard?.instantiateViewController(withIdentifier: "MapView8") else {return}
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
            
        } else if sender.selectedSegmentIndex == 2{
            first.alpha = 0
            second.alpha = 1
            
            
        } else {
            first.alpha = 1
            second.alpha = 0
            
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
