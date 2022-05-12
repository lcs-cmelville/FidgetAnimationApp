//
//  LoadingView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-11.
//

import SwiftUI

struct LoadingView: View {
    
    //MARK: Stored Properties
    
    @Binding var favourites: [FidgetAnimation]
    
    @State private var shouldAnimate = false
    
    @State var heartOpacity = 1.0
    
    @State var firstDotColour: Color
    @State var secondDotColour: Color
    @State var thirdDotColour: Color
    
    var body: some View {
        
        VStack {
            
            Image(systemName: "heart.circle")
                .foregroundColor(.pink)
                .scaleEffect(2)
                .opacity(heartOpacity)
                .padding()
                .onTapGesture {
                    
                    favourites.append(FidgetAnimation(name: "Loading", id: 3))
                    
                    heartOpacity = 0.0
                }
            
            Spacer()
        
        HStack {
            
            Circle()
                .foregroundColor(firstDotColour)
                .frame(width: 20, height: 20)
                .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                .animation(Animation.easeInOut(duration: 0.5).repeatForever())
            
            Circle()
                .foregroundColor(secondDotColour)
                .frame(width: 20, height: 20)
                .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.3))
            
            Circle()
                .foregroundColor(thirdDotColour)
                .frame(width: 20, height: 20)
                .scaleEffect(shouldAnimate ? 1.0 : 0.5)
                .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.6))
        }
        .onAppear {
            self.shouldAnimate = true
            }
            
            Spacer()
            
            VStack {
                
                ColorPicker("Set the First Dot Colour",
                            selection: $firstDotColour)
                
                ColorPicker("Set the Second Dot Colour",
                            selection: $secondDotColour)
                
                ColorPicker("Set the Third Dot Colour",
                            selection: $thirdDotColour)
            }
            .padding()
            
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(favourites: .constant([testItem]), firstDotColour: .red, secondDotColour: .purple, thirdDotColour: .blue)
    }
}
