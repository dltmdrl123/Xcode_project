//
//  GangDongMapViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/05/28.
//

import UIKit
import MapKit
class GangDongMapViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate {

    @IBOutlet weak var gangdongMap: MKMapView!
    
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
        //위치보기 설정
        gangdongMap.showsUserLocation = true
        gangdongMap.isZoomEnabled = true
        
        let initialLocation = CLLocationCoordinate2D(latitude: 37.5381, longitude:  127.14)
        //길동역 중심
        let regionRadius: CLLocationDistance = 1000
        let coordinateRegion = MKCoordinateRegion(center: initialLocation, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        gangdongMap.setRegion(coordinateRegion, animated: true)
        
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 37.537, longitude: 127.1388)
        annotation5.title = "대관령생고기"
        annotation5.subtitle = ""
        gangdongMap.addAnnotation(annotation5)
        
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = CLLocationCoordinate2D(latitude: 37.5352, longitude: 127.1374)
        annotation6.title = "우리콩순두부"
        annotation6.subtitle = ""
        gangdongMap.addAnnotation(annotation6)
        
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = CLLocationCoordinate2D(latitude: 37.536, longitude: 127.1375)
        annotation7.title = "길동불막창"
        annotation7.subtitle = ""
        gangdongMap.addAnnotation(annotation7)
        
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = CLLocationCoordinate2D(latitude: 37.5411, longitude: 127.1417)
        annotation8.title = "진사문닭꼬치"
        annotation8.subtitle = ""
        gangdongMap.addAnnotation(annotation8)
        
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
