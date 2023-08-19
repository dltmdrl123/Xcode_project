//
//  InfoViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/06/10.
//

import UIKit


class InfoViewController: UIViewController {

    
    @IBAction func call(_ sender: Any) {
        let number:Int = 234015753
        
        if let url = NSURL(string:  "tel://0" + "\(number)"),
           UIApplication.shared.canOpenURL(url as URL) {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func blog(_ sender: Any) {
        if let url = URL(string: "https://blog.naver.com/tkrhdwlgus/223124153333") {
                    UIApplication.shared.open(url, options: [:])
                }
                
    }
    
    @IBAction func map(_ sender: Any) {
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
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
