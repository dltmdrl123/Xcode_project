//
//  SongPaMapViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/05/28.
//

import UIKit
import MapKit
import CoreLocation
class SongPaMapViewController: UIViewController, CLLocationManagerDelegate, UIGestureRecognizerDelegate {

    @IBOutlet weak var myMap: MKMapView!
    
    let locationManager = CLLocationManager()
    // 아래 3줄 지도 검색
    let searchController = UISearchController(searchResultsController: nil)
       var searchCompleter = MKLocalSearchCompleter()
       var searchResults = [MKLocalSearchCompletion]()
    
    
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
        myMap.showsUserLocation = true
        myMap.isZoomEnabled = true
        
        let initialLocation = CLLocationCoordinate2D(latitude: 37.5145, longitude:  127.1059)
        //송파구청 중심
        let regionRadius: CLLocationDistance = 1000
        
        let coordinateRegion = MKCoordinateRegion(center: initialLocation, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        myMap.setRegion(coordinateRegion, animated: true)
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 37.4935, longitude: 127.1456)
        annotation1.title = "아우네매운갈비찜"
        annotation1.subtitle = ""
        myMap.addAnnotation(annotation1)
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 37.49855, longitude: 127.14725)
        annotation2.title = "차박사얼큰이"
        annotation2.subtitle = ""
        myMap.addAnnotation(annotation2)
        
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 37.4984, longitude: 127.1472)
        annotation3.title = "남한산성"
        annotation3.subtitle = ""
        myMap.addAnnotation(annotation3)
        
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 37.5097, longitude: 127.0807)
        annotation4.title = "홀짝집"
        annotation4.subtitle = ""
        myMap.addAnnotation(annotation4)
        
        
        
        // Do any additional setup after loading the view.
    }
    }




