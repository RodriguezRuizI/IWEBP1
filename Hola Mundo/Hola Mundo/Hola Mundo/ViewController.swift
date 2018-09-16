//
//  ViewController.swift
//  Hola Mundo
//
//  Created by Isabel on 7/9/18.
//  Copyright © 2018 CarlIsa. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!

    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateHola(_ sender: UIButton) {
        msgLabel.text = "Hola"
        let center = CLLocationCoordinate2D(latitude: 40.6892, longitude: -74.0445)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        slider.value = 0.5
        mapView.mapType = MKMapType.hybrid
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateMundo(_ sender: UIButton) {
        msgLabel.text = "Mundo"
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        mapView.mapType = MKMapType.satellite
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateSol(_ sender: UIButton) {
        msgLabel.text = "Puerta del Sol"
        let center = CLLocationCoordinate2D(latitude: 40.4167278, longitude: -3.7033387)
        let span = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        let reg = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(reg, animated: true)
        
    }
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
}

