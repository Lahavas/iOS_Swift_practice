//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Jaeho on 2017. 9. 25..
//  Copyright © 2017년 yeon. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    // MARK: - Properties
    
    var mapView: MKMapView!
    
    // MARK: - View Life Cycle
    
    override func loadView() {
        
        mapView = MKMapView()
        
        view = mapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Memory Management

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
