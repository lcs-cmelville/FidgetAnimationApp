//
//  SquaresView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-10.
//

import SwiftUI

struct SquaresView: View {
    
    //MARK: Stored Properties
    
    @Binding var favourites: [FidgetAnimation]
    
    var body: some View {
        
        VStack {
        
            Image(systemName: "heart.circle")
                    .scaleEffect(2)
                    .padding()
                    .onTapGesture {
                        favourites.append(FidgetAnimation(name: "Squares", id: 2))
                    }
            
        Text("This is Squares Animation")
        
        }
    }
}

struct SquaresView_Previews: PreviewProvider {
    static var previews: some View {
        SquaresView(favourites: .constant([testItem]))
    }
}
