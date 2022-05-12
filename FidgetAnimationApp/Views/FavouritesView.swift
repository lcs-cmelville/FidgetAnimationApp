//
//  FavouritesView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-11.
//

import SwiftUI

struct FavouritesView: View {
    
    @Binding var favourites: [FidgetAnimation]
    
    @State private var phrase: String = ""
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                if favourites.isEmpty {
                    
                    Spacer()
                    
                    Text("No Favourites yet")
                        .font(.title)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Spacer()
                    
                } else {
                    List(favourites) { currentAnimation in
                        NavigationLink(destination: {
                            
                            AnimationDetailView(
                                animationToShow: currentAnimation,
                                favourites: $favourites)
                            
                        }, label: {
                            
                            Text(currentAnimation.name)
                            
                            
                        })
                        
                    }
                }
            }
            .navigationTitle("Favourites")
        }
        
    }
}


struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView(favourites: .constant([testItem]))
    }
}
