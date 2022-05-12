//
//  AnimationDetailView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-10.
//

import SwiftUI

struct AnimationDetailView: View {
    
    let animationToShow: FidgetAnimation
    
    @Binding var favourites: [FidgetAnimation]
    
    
    var body: some View {
        if animationToShow.name == "Circles" {
            CirclesView(favourites: $favourites, isFavourite: false)
        } else if animationToShow.name == "Squares" {
            SquaresView()
        } else if animationToShow.name == "Loading" {
            LoadingView()
        }
    }
}

struct AnimationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationDetailView(animationToShow: testItem, favourites: .constant([testItem]))
    }
}
