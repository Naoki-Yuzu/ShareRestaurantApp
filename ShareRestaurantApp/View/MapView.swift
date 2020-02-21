//
//  MapView.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/17.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MapView: MKMapView {
    
    var mapView: MKMapView!
    
    override init(frame: CGRect) {
        super.init(frame: CGRect())
        print("init")
        
        configureSubView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        print("auto layout..")
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        
        mapView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
    }
    
    func configureSubView() {
        
        mapView = MKMapView(frame: self.bounds)
        self.addSubview(mapView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }

}
