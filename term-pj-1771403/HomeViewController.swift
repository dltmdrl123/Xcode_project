//
//  TestTabViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/05/26.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func SongPa(_ sender: Any) {
        guard let songpa = self.storyboard?.instantiateViewController(withIdentifier: "SongPaViewController") else {return}
        self.navigationController?.pushViewController(songpa, animated: true)
    }
    @IBAction func GangDong(_ sender: Any) {
        guard let gangdong = self.storyboard?.instantiateViewController(withIdentifier: "GangDongViewController") else {return}
        self.navigationController?.pushViewController(gangdong, animated: true)
        
    }
    @IBAction func MaPo(_ sender: Any) {
        guard let mapo = self.storyboard?.instantiateViewController(withIdentifier: "MaPoViewController") else {return}
        self.navigationController?.pushViewController(mapo, animated: true)
       
    }
    @IBAction func JongLo(_ sender: Any) {
        guard let jonglo = self.storyboard?.instantiateViewController(withIdentifier: "JongLoViewController") else {return}
        self.navigationController?.pushViewController(jonglo, animated: true)
        
    }
    @IBAction func GangNam(_ sender: Any) {
        guard let gangdnam = self.storyboard?.instantiateViewController(withIdentifier: "GangNamViewController") else {return}
        self.navigationController?.pushViewController(gangdnam, animated: true)
        
    }
    
    @IBAction func Sungdong(_ sender: Any) {
        guard let gangdnam = self.storyboard?.instantiateViewController(withIdentifier: "SungDongViewController") else {return}
        self.navigationController?.pushViewController(gangdnam, animated: true)
    }
    
    @IBAction func Sungbok(_ sender: Any) {
        guard let gangdnam = self.storyboard?.instantiateViewController(withIdentifier: "SungBokViewController") else {return}
        self.navigationController?.pushViewController(gangdnam, animated: true)
    }
    @IBAction func unpyeong(_ sender: Any) {
        guard let gangdnam = self.storyboard?.instantiateViewController(withIdentifier: "UnPyeongViewController") else {return}
        self.navigationController?.pushViewController(gangdnam, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

}
