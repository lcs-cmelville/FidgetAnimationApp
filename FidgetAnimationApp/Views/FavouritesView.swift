//
//  FavouritesView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-11.
//

import SwiftUI

struct FavouritesView: View {
    
    @Binding var favourites: [FidgetAnimation]
    
    var body: some View {
        NavigationView {
            
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

                    AnimationDetailView(animationToShow: currentAnimation, favourites: .constant([testItem]))

                }, label: {

                    Text(currentAnimation.name)

                })
            
                }
            }
            
        }
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView(favourites: .constant([testItem]))
    }
}
