//
//  sungbokMapViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/06/17.
//

import UIKit
import CoreLocation
import MapKit

class sungbokMapViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate {
    
    let locationManager = CLLocationManager()

    @IBOutlet weak var mapview: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        locationManager.delegate = self
        
        //정확도 최고로 설정
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        //위치 승인 요구
        locationManager.requestWhenInUseAuthorization()
        //위치 업데이트
        locationManager.startUpdatingLocation()
        
        let initialLocation = CLLocationCoordinate2D(latitude: 37.59, longitude:  127.0105)
        //길동역 중심
        let regionRadius: CLLocationDistance = 5000
        let coordinateRegion = MKCoordinateRegion(center: initialLocation, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapview.setRegion(coordinateRegion, animated: true)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 37.5911, longitude: 127.017)
        annotation5.title = "돌쇠참나무장작구이"
        annotation5.subtitle = ""
        mapview.addAnnotation(annotation5)
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2D(latitude: 37.5882, longitude: 127.0095)
        annotation6.title = "팽팽닭발"
        annotation6.subtitle = ""
        mapview.addAnnotation(annotation6)
        
        
        
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
