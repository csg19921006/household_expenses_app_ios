//
//  MapView.swift
//  household_expenses_app_ios
//
//  Created by zhihao zhang on 2022/02/28.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 35.52607, longitude: 139.69788)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true )
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
