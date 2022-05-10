//
//  AnimationDetailView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-10.
//

import SwiftUI

struct AnimationDetailView: View {
    
    let animationToShow: FidgetAnimation
    
    var body: some View {
        if animationToShow.name == "Circles" {
            CirclesView()
        } else if animationToShow.name == "Squares" {
            SquaresView()
        }
    }
}

struct AnimationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationDetailView(animationToShow: testItem)
    }
}
