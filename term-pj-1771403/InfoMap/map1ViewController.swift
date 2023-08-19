//
//  map1ViewController.swift
//  term-pj-1771403
//
//  Created by 이승기 on 2023/06/10.
//

import UIKit
import MapKit

class map1ViewController: UIViewController {

    @IBOutlet weak var map1: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocation = CLLocationCoordinate2D(latitude: 37.4935, longitude: 127.1456
)
        let regionRadius: CLLocationDistance = 500
        
        let coordinateRegion = MKCoordinateRegion(center: initialLocation, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        map1.setRegion(coordinateRegion, animated: true)
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 37.4935, longitude: 127.1456)
        annotation1.title = "아우네매운갈비찜"
        annotation1.subtitle = ""
        map1.addAnnotation(annotation1)

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
