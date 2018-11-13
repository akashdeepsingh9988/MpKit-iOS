//
//  GetUserLocationViewController.swift
//  MpKit
//
//  Created by MacStudent on 2018-11-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import CoreLocation

class GetUserLocationViewController: UIViewController, CLLocationManagerDelegate {
    
    var manager: CLLocationManager!
    

    @IBAction func getLocation(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestAlwaysAuthorization()
        
        // tell the manager to get the person's location
        manager.startUpdatingLocation()
        

        // Do any additional setup after loading the view.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("new loc")
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
