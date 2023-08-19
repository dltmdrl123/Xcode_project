//
//  GangNamMapViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/05/28.
//

import UIKit
import MapKit
class GangNamMapViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate {
    
    let locationManager = CLLocationManager()

    @IBOutlet weak var gangnamMap: MKMapView!
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
        
        let initialLocation = CLLocationCoordinate2D(latitude: 37.4975, longitude:  127.027)
        //길동역 중심
        let regionRadius: CLLocationDistance = 5000
        let coordinateRegion = MKCoordinateRegion(center: initialLocation, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        gangnamMap.setRegion(coordinateRegion, animated: true)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 37.5018, longitude: 127.0272)
        annotation5.title = "60년전통신촌소곱창"
        annotation5.subtitle = ""
        gangnamMap.addAnnotation(annotation5)
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2D(latitude: 37.5036, longitude: 127.0265)
        annotation6.title = "매우매오 강남역별관"
        annotation6.subtitle = ""
        gangnamMap.addAnnotation(annotation6)
        
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2D(latitude: 37.4825, longitude: 126.9823)
        annotation7.title = "남산터 이수점"
        annotation7.subtitle = ""
        gangnamMap.addAnnotation(annotation7)
        
        // Do any additional setup after loading the view.
    }
    

    

}
