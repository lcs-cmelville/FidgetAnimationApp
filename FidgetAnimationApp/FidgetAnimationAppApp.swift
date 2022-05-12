//
//  FidgetAnimationAppApp.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-10.
//

import SwiftUI

@main
struct FidgetAnimationAppApp: App {
    
    @State var favourites: [FidgetAnimation] = []
    
    var body: some Scene {
        WindowGroup {
            
            TabView{
                FidgetsListView(favourites: $favourites)
                    .tabItem {
                        Image(systemName: "lasso.and.sparkles")
                        Text("Fidgets")
                    }
                
                FavouritesView(favourites: $favourites)
                    .tabItem {
                        Image(systemName: "heart.circle")
                        Text("Favourites")
                        
                    }
            }
        }
    }
}
