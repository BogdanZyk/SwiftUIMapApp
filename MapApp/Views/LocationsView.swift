//
//  LocationsView.swift
//  MapApp
//
//  Created by Богдан Зыков on 17.04.2022.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    @EnvironmentObject var vm: LocationsViewModel
    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    var body: some View {
        ZStack{
            Map(coordinateRegion: $mapRegion)
                .ignoresSafeArea()
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
