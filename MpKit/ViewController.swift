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
    var lan = 0.5;
    var lant = 0.5;

    @IBAction func zoomOut(_ sender: Any) {
        lan = lan + 0.5
        lant = lant + 0.5
        let x = CLLocationCoordinate2DMake(43.6532, -79.3849)
        let y = MKCoordinateSpan(latitudeDelta: lant,longitudeDelta: lan)
        let z = MKCoordinateRegionMake(x, y)
        self.mpKit.setRegion(z, animated: true)

    }
    @IBAction func zoomIn(_ sender: UIButton) {
        lan = lan - 0.5
        lant = lant - 0.5
        let x = CLLocationCoordinate2DMake(43.6532, -79.3849)
        let y = MKCoordinateSpan(latitudeDelta: lant,longitudeDelta: lan)
        let z = MKCoordinateRegionMake(x, y)
        self.mpKit.setRegion(z, animated: true)

    }
    @IBOutlet weak var mpKit: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let x = CLLocation()
         let x = CLLocationCoordinate2DMake(43.6532, -79.3849)
        let y = MKCoordinateSpan(latitudeDelta: lant,longitudeDelta: lan)
        let z = MKCoordinateRegionMake(x, y)
        self.mpKit.setRegion(z, animated: true)
        
        
        // example 2
        // add pin
        
        let annotation = MKPointAnnotation()
        //annotation.coordinate = CLLocationCoordinate2D(latitude: 11.12, longitude: 12.11)
        annotation.coordinate = x
        annotation.title = "Toronto"
        mpKit.addAnnotation(annotation)
        
        // 2nd pin
        let pin2 = MKPointAnnotation()

        pin2.coordinate = CLLocationCoordinate2DMake(43.683334, -79.766670)
        pin2.title = "Brampton City"
        mpKit.addAnnotation(pin2)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

