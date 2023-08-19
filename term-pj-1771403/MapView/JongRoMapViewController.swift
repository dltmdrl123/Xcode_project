//
//  JongRoMapViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/05/28.
//

import UIKit
import MapKit

class JongRoMapViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate {
    
    let locationManager = CLLocationManager()
    let targetLocation = CLLocation(latitude: 37.123456, longitude: 126.789012)
    let targetRadius: CLLocationDistance = 500

    @IBOutlet weak var jongloMap: MKMapView!
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
        
        let initialLocation = CLLocationCoordinate2D(latitude: 37.5544, longitude:  127.011)
        //길동역 중심
        let regionRadius: CLLocationDistance = 1000
        let coordinateRegion = MKCoordinateRegion(center: initialLocation, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        jongloMap.setRegion(coordinateRegion, animated: true)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 37.5628, longitude: 126.9926)
        annotation5.title = "강릉장칼국수&보쌈 충무로"
        annotation5.subtitle = ""
        jongloMap.addAnnotation(annotation5)
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2D(latitude: 37.5703, longitude: 127.0059)
        annotation6.title = "명동닭한마리 본점 "
        annotation6.subtitle = ""
        jongloMap.addAnnotation(annotation6)
        
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2D(latitude: 37.5535, longitude: 127.0103)
        annotation7.title = "약수동춘천막국수"
        annotation7.subtitle = ""
        jongloMap.addAnnotation(annotation7)
        
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = CLLocationCoordinate2D(latitude: 37.5576, longitude: 127.012)
        annotation8.title = "약수의밤"
        annotation8.subtitle = ""
        jongloMap.addAnnotation(annotation8)
        
        let annotation9 = MKPointAnnotation()
        annotation9.coordinate = CLLocationCoordinate2D(latitude: 37.5578, longitude: 127.0121)
        annotation9.title = "토리양꼬치"
        annotation9.subtitle = ""
        jongloMap.addAnnotation(annotation9)

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
