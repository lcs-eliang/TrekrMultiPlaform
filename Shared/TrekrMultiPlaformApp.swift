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
            
            TabView {
                
                NavigationView {
                    LocationsList(store: store)
                    
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Locations")
                }
                
                #if os(iOS)
                NavigationView {
                    WorldMap(store: testStore)
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                #else
                NavigationView {
                    WorldMap(store: testStore)
                        .frame(width: 400)
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                #endif
                
                NavigationView {
                    TipsList()
                }
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
                
            }
            

        }
    }
}
