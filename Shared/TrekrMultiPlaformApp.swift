//
//  TrekrMultiPlaformApp.swift
//  Shared
//
//  Created by Xiaoyu Liang on 2022-01-18.
//

import SwiftUI

@main
struct TrekrMultiPlaformApp: App {
    
    @StateObject var store = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationsList(store: store)
            }
        }
    }
}
