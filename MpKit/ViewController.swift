//
//  ViewController.swift
//  MpKit
//
//  Created by MacStudent on 2018-11-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mpKit: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let x = CLLocation()
         let x = CLLocationCoordinate2DMake(40.4168, -3.7038)
        let y = MKCoordinateSpan(latitudeDelta: 1.5,longitudeDelta: 1.5)
        let z = MKCoordinateRegionMake(x, y)
        self.mpKit.setRegion(z, animated: true)
        
        
        // example 2
        // add pin
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

