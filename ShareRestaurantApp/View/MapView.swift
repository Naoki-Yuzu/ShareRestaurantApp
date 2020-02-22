//
//  MapView.swift
//  ShareRestaurantApp
//
//  Created by デュフフくん on 2020/02/17.
//  Copyright © 2020 Naoki-Yuzu. All rights reserved.
//

import UIKit
import GoogleMaps

class MapView: UIView {
    
    // MARK: - Properties
    var mapView: GMSMapView!
    var locationManager: CLLocationManager!
    let defaultLocation = CLLocation(latitude: 35.6809591, longitude: 139.7673068) // 東京駅
    
    // MARK: - Inits
    
    override init(frame: CGRect) {
        super.init(frame: CGRect())
        print("init")
        
        configureMap()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helper Functions
    
    override func updateConstraints() {
        super.updateConstraints()
        print("map view auto layout..")
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        
        mapView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
    
    private func configureMap() {
        print("set up map..")
        // GoogleMapの初期位置(仮で東京駅付近に設定)
        let camera = GMSCameraPosition.camera(withLatitude: defaultLocation.coordinate.latitude, longitude: defaultLocation.coordinate.longitude, zoom: 15)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        print("camera of map view \(mapView.camera)")
        mapView.isMyLocationEnabled = true
        self.addSubview(mapView)
        mapView.isHidden = true
        
        getUserLocation()
    }
    
    private func getUserLocation() {
        
        print("get user location..")
        locationManager = CLLocationManager()
        locationManager.distanceFilter = 0.5
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        // CLLocationManagerDelegateのdidChangeAuthorizationが起動
        
    }

}

// MARK: - Delegate
extension MapView: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("did update locations")
        let location = locations.first
        let latitude = location?.coordinate.latitude ?? 35.6809591 // nilだったら東京駅の緯度
        let longitude = location?.coordinate.longitude ?? 139.7673068 // nilだったら東京駅の経度
        print("latitude\(latitude)\nlongitude\(longitude)")
        
        let camera = GMSCameraPosition.camera(withLatitude: latitude, longitude: longitude, zoom: 15)
        
        if mapView.isHidden {
            mapView.isHidden = false
            mapView.camera = camera
        } else {
            mapView.animate(to: camera)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error: \(error)")
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("did change authorization..")
        switch status {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            break
        case .authorizedWhenInUse:
            print("authorizedWhenInUse..")
            locationManager.startUpdatingLocation()
            // CLLocationManagerDelegateのdidUpdateLocationsが起動
            break
        case .authorizedAlways:
            locationManager.startUpdatingLocation()
            // CLLocationManagerDelegateのdidUpdateLocationsが起動
            break
        case .restricted:
            // restricted by e.g. parental controls. User can't enable Location Services
            break
        case .denied:
            // user denied your app access to Location Services, but can grant access from Settings.app
            break
        default:
            break
        
        }
    }
    
}
