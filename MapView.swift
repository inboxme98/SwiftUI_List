//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by Varun Kumar on 01/07/19.
//  Copyright © 2019 Likeit. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
   
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        let coordinate = CLLocationCoordinate2D(latitude: 34.011, longitude: -116.166)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)        
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
