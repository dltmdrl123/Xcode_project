//
//  map25ViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/06/17.
//

import UIKit
import MapKit
import CoreLocation

class map25ViewController: UIViewController {

    @IBOutlet weak var map2: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocation = CLLocationCoordinate2D(latitude: 37.5911, longitude: 127.017
)
        let regionRadius: CLLocationDistance = 500
        
        let coordinateRegion = MKCoordinateRegion(center: initialLocation, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        map2.setRegion(coordinateRegion, animated: true)
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 37.5911, longitude: 127.017)
        annotation1.title = "돌쇠참나무장작구이"
        annotation1.subtitle = ""
        map2.addAnnotation(annotation1)

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
