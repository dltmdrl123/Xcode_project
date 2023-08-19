//
//  dialogViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/06/16.
//

import UIKit

class dialogViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(selectedDateDidChange(_:)), name: Notification.Name(rawValue: "updateDialog"), object: nil)

        // Do any additional setup after loading the view.
    }
    
    @objc func selectedDateDidChange(_ notification: NSNotification?){
        if let noti = notification{
            dialog = noti.object as! Date
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
