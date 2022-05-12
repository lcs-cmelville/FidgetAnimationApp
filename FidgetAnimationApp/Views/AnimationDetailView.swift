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
            CirclesView(favourites: $favourites, isFavourite: true)
        } else if animationToShow.name == "Squares" {
            SquaresView(firstSquareColour: .red, secondSquareColour: .purple, thirdSquareColour: .blue, fourthSquareColour: .green, favourites: $favourites)
        } else if animationToShow.name == "Loading" {
            LoadingView(favourites: $favourites, firstDotColour: .red, secondDotColour: .purple, thirdDotColour: .blue)
        }
    }
}

struct AnimationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationDetailView(animationToShow: testItem, favourites: .constant([testItem]))
    }
}
