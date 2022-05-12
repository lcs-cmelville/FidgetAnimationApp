//
//  FidgetsListView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-10.
//

import SwiftUI

struct FidgetsListView: View {
    
    @Binding var favourites: [FidgetAnimation]
    
    var body: some View {
        
        NavigationView{
        
        List(animationsList) { currentAnimation in
            
            NavigationLink(destination: {
                
                AnimationDetailView(animationToShow: currentAnimation, favourites: $favourites)
                
            }, label: {
                
                Text(currentAnimation.name)
                
            })
        }
        }
     }
}

struct FidgetsListView_Previews: PreviewProvider {
    static var previews: some View {
        FidgetsListView(favourites: .constant([testItem]))
    }
}
