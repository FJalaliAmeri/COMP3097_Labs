//
//  ViewController.swift
//  lab06_101303158
//
//  Created by Farshad Jalali Ameri on 2023-03-09.
//

import UIKit
import CoreMotion
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    let motionManager = CMMotionManager()
    let locationManager = CLLocationManager()
    var timer : Timer!
    var pin : MKPlacemark?
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate =  self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        //locationManager.startMonitoringSignificantLocationChanges()
        //locationManager.startMonitoringVisits()
        
        if(motionManager.isAccelerometerActive &&
           motionManager.isAccelerometerAvailable){
            print("Acc present and active")
        } else {
            print("Acc status: active = \(motionManager.isAccelerometerActive), avalible = \(motionManager.isAccelerometerAvailable)")
        }
        timer =
        //Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
        Timer(timeInterval: 3.0, repeats: true, block: {(timer) in self.update()})
        RunLoop.current.add(self.timer, forMode: RunLoop.Mode.default)
    }
    @objc func update(){
        if let accData = motionManager.accelerometerData{
            print(accData)
        } else {
            print("No data avalible")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let location =  locations.last else {return}
        
        let geoCoder = CLGeocoder()
        
        geoCoder.reverseGeocodeLocation(location, completionHandler: {
            (placemarks, err) in
            if let pls = placemarks{
                for p in pls {
                    let desc =  p.description
                    print(desc)
                    
                }
            } else {
              print(location)
            }
        })
        
        if let myPin = pin{
            mapView.removeAnnotation(pin!)
        }
        
        pin = MKPlacemark(coordinate: location.coordinate)
        
        mapView.setRegion(MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 300, longitudinalMeters: 300), animated: true)
        mapView.addAnnotation(pin!)
    }
    
    func locationManager(_ manager: CLLocationManager, didVisit visit: CLVisit) {
        print("Visit: \(visit.coordinate)")
    }
    

}

