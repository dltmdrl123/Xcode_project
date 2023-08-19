//
//  map24ViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/06/17.
//

import UIKit
import MapKit
import CoreLocation

class map24ViewController: UIViewController {

    @IBOutlet weak var map2: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocation = CLLocationCoordinate2D(latitude: 37.5633, longitude: 127.0334
)
        let regionRadius: CLLocationDistance = 500
        
        let coordinateRegion = MKCoordinateRegion(center: initialLocation, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        map2.setRegion(coordinateRegion, animated: true)
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 37.5633, longitude: 127.0334)
        annotation1.title = "호호호닭발"
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
