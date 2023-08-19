//
//  MaPoMapViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/05/28.
//

import UIKit
import MapKit

class MaPoMapViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var mapoMap: MKMapView!
    let locationManager = CLLocationManager()
    let targetLocation = CLLocation(latitude: 37.123456, longitude: 126.789012)
    let targetRadius: CLLocationDistance = 500

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
        // Do any additional setup after loading the view.
        
        let initialLocation = CLLocationCoordinate2D(latitude: 37.5564, longitude:  126.9)
        //길동역 중심
        let regionRadius: CLLocationDistance = 5000
        let coordinateRegion = MKCoordinateRegion(center: initialLocation, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapoMap.setRegion(coordinateRegion, animated: true)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 37.5685, longitude: 126.9059)
        annotation5.title = "잼잼칩스"
        annotation5.subtitle = ""
        mapoMap.addAnnotation(annotation5)
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2D(latitude: 37.5483, longitude: 126.9182)
        annotation6.title = "우리콩순두부"
        annotation6.subtitle = ""
        mapoMap.addAnnotation(annotation6)
        
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2D(latitude: 37.5445, longitude: 126.9532)
        annotation7.title = "길동불막창"
        annotation7.subtitle = ""
        mapoMap.addAnnotation(annotation7)
        
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = CLLocationCoordinate2D(latitude: 37.555, longitude: 126.9106)
        annotation8.title = "진사문닭꼬치"
        annotation8.subtitle = ""
        mapoMap.addAnnotation(annotation8)
        
        let annotation9 = MKPointAnnotation()
        annotation9.coordinate = CLLocationCoordinate2D(latitude: 37.5564, longitude: 126.906)
        annotation9.title = "우이락"
        annotation9.subtitle = ""
        mapoMap.addAnnotation(annotation9)
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
