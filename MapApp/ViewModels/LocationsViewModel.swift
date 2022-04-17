//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Богдан Зыков on 17.04.2022.
//

import Foundation

class LocationsViewModel: ObservableObject{
    @Published var locations: [Location]
    
    init(){
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
}
