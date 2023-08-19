//
//  TestViewController.swift
//  term-pj-1771403
//
//  Cre/Users/leesgi/Desktop/term-pj-1771403/term-pj-1771403/Base.lproj/Main.storyboardated by 이승기 on 2023/05/26.
//

import UIKit

class SongPaViewController: UIViewController {

    
    @IBOutlet weak var second: UIView!
    @IBOutlet weak var first: UIView!
   
    @IBOutlet weak var third: UIView!
    @IBAction func infoview(_ sender: Any) {        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView") else {return}
        self.navigationController?.pushViewController(view, animated: true)
        
    }
    @IBAction func infoview2(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView2") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    @IBAction func infoview3(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView3") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    
    @IBAction func infoview4(_ sender: Any) {
        guard let view = self.storyboard?.instantiateViewController(withIdentifier: "InfoView4") else {return}
        self.navigationController?.pushViewController(view, animated: true)
    }
    @IBAction func MapStart(_ sender: Any) {
        guard let start = self.storyboard?.instantiateViewController(withIdentifier: "MapView1") else {return}
        self.navigationController?.pushViewController(start, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
