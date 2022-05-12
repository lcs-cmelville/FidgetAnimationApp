//
//  FidgetAnimationAppApp.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-10.
//

import SwiftUI

@main
struct FidgetAnimationAppApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView{
                FidgetsListView(favourites: .constant([testItem]))
                    .tabItem {
                        Image(systemName: "lasso.and.sparkles")
                        Text("Fidgets")
                    }
                
                FavouritesView(favourites: .constant([testItem]))
                    .tabItem {
                        Image(systemName: "heart.circle")
                        Text("Favourites")
                        
                    }
            }
        }
    }
}
