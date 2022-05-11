//
//  FidgetsListView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-10.
//

import SwiftUI

struct FidgetsListView: View {
    var body: some View {
        
        List(animationsList) { currentAnimation in
            
            NavigationLink(destination: {
                
                AnimationDetailView(animationToShow: currentAnimation)
                
            }, label: {
                
                Text(currentAnimation.name)
                
            })
        }
     }
}

struct FidgetsListView_Previews: PreviewProvider {
    static var previews: some View {
        FidgetsListView()
    }
}
