//
//  songpaDiaryViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/06/16.
//

import UIKit

class songpaDiaryViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateDialog), name: Notification.Name("updateDialog"), object: nil)

        // Do any additional setup after loading the view.
        
    }
    
    @objc func updateDialog(_ notification: Notification){
        if let info = notification.object as? String {
            print("테스트: \(info)")
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
