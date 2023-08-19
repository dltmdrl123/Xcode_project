//
//  MaPoViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/05/28.
//

import UIKit

class MaPoViewController: UIViewController {
    
    @IBOutlet weak var first: UIView!
    @IBOutlet weak var second: UIView!
    @IBAction func info1(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView9") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    
    @IBAction func info2(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView10") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    
    @IBAction func info3(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView11") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    
    @IBAction func info4(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView12") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    
    @IBAction func info5(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView13") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }

    
    
    @IBAction func MapStart2(_ sender: Any) {
        guard let start = self.storyboard?.instantiateViewController(withIdentifier: "MapView3") else {return}
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
