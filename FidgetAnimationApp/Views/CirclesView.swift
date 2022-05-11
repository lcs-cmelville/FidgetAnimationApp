//
//  CirlcesView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-10.
//

import SwiftUI

struct CirclesView: View {
    
    //MARK: Stored Properties
    
    let firstCircleColour: Color
    
    @State var circleOpacity = 1.0
    
    @State var xOffset = 0.0
    @State var yOffset = 0.0
    
    let secondCircleColour: Color
    
    @State var circleOpacityTwo = 1.0
    
    @State var xOffsetTwo = 0.0
    @State var yOffsetTwo = 0.0
    
    let thirdCircleColour: Color
    
    @State var circleOpacityThree = 1.0
    
    @State var xOffsetThree = 0.0
    @State var yOffsetThree = 0.0
    
    let fourthCircleColour: Color
    
    @State var circleOpacityFour = 1.0
    
    @State var xOffsetFour = 0.0
    @State var yOffsetFour = 0.0
    
    let fifthCircleColour: Color
    
    @State var circleOpacityFive = 1.0
    
    @State var xOffsetFive = 0.0
    @State var yOffsetFive = 0.0
    
    let sixthCircleColour: Color
    
    @State var circleOpacitySix = 1.0
    
    @State var xOffsetSix = 0.0
    @State var yOffsetSix = 0.0
    

    
    var body: some View {
        
        NavigationView {
        
        VStack {
            
            
            Text("Tap the Circle!")
                
                Spacer()
            
            
            
            ZStack {
                
                Circle()
                    .frame(width: 75, height: 75)
                    .opacity(0.1)
                    .onTapGesture {
                        
                        circleOpacity = 1.0
                        xOffset = 0.0
                        yOffset = 0.0
                        
                        circleOpacityTwo = 1.0
                        xOffsetTwo = 0.0
                        yOffsetTwo = 0.0
                        
                        circleOpacityThree = 1.0
                        xOffsetThree = 0.0
                        yOffsetThree = 0.0
                        
                        circleOpacityFour = 1.0
                        xOffsetFour = 0.0
                        yOffsetFour = 0.0
                        
                        circleOpacityFive = 1.0
                        xOffsetFive = 0.0
                        yOffsetFive = 0.0
                        
                        circleOpacitySix = 1.0
                        xOffsetSix = 0.0
                        yOffsetSix = 0.0
                        
                    }
                
                Circle()
                    .frame(width: 75, height: 75)
                    .foregroundColor(sixthCircleColour)
                    .opacity(circleOpacitySix)
                    .offset(x: xOffsetSix, y: yOffsetSix)
                    .onTapGesture {
                        
                        withAnimation(
                            Animation
                                .easeInOut(duration: 0.5)
                                .repeatCount(1, autoreverses: true)
                        ) {
                            circleOpacitySix = 0.0
                            xOffsetSix = -75.0
                            yOffsetSix = 0.0
                        }
                    }
                
                Circle()
                    .frame(width: 75, height: 75)
                    .foregroundColor(fifthCircleColour)
                    .opacity(circleOpacityFive)
                    .offset(x: xOffsetFive, y: yOffsetFive)
                    .onTapGesture {
                        
                        withAnimation(
                            Animation
                                .easeInOut(duration: 0.5)
                                .repeatCount(1, autoreverses: true)
                        ) {
                            circleOpacityFive = 0.0
                            xOffsetFive = -25.0
                            yOffsetFive = 100.0
                        }
                    }
                
                Circle()
                    .frame(width: 75, height: 75)
                    .foregroundColor(fourthCircleColour)
                    .opacity(circleOpacityFour)
                    .offset(x: xOffsetFour, y: yOffsetFour)
                    .onTapGesture {
                        
                        withAnimation(
                            Animation
                                .easeInOut(duration: 0.5)
                                .repeatCount(1, autoreverses: true)
                        ) {
                            circleOpacityFour = 0.0
                            xOffsetFour = 25.0
                            yOffsetFour = 100.0
                        }
                    }
                
                Circle()
                    .frame(width: 75, height: 75)
                    .foregroundColor(thirdCircleColour)
                    .opacity(circleOpacityThree)
                    .offset(x: xOffsetThree, y: yOffsetThree)
                    .onTapGesture {
                        
                        withAnimation(
                            Animation
                                .easeInOut(duration: 0.5)
                                .repeatCount(1, autoreverses: true)
                        ) {
                            circleOpacityThree = 0.0
                            xOffsetThree = 75.0
                            yOffsetThree = 0.0
                        }
                    }
                
                Circle()
                    .frame(width: 75, height: 75)
                    .foregroundColor(secondCircleColour)
                    .opacity(circleOpacityTwo)
                    .offset(x: xOffsetTwo, y: yOffsetTwo)
                    .onTapGesture {
                        
                        withAnimation(
                            Animation
                                .easeInOut(duration: 0.5)
                                .repeatCount(1, autoreverses: true)
                        ) {
                            circleOpacityTwo = 0.0
                            xOffsetTwo = 25.0
                            yOffsetTwo = -100.0
                        }
                    }
                
                Circle()
                    .frame(width: 75, height: 75)
                    .foregroundColor(firstCircleColour)
                    .opacity(circleOpacity)
                    .offset(x: xOffset, y: yOffset)
                    .onTapGesture {
                        
                        withAnimation(
                            Animation
                                .easeInOut(duration: 0.5)
                                .repeatCount(1, autoreverses: true)
                        ) {
                            circleOpacity = 0.0
                            xOffset = -25.0
                            yOffset = -100.0
                        }
                    }
            }
            .padding()
            
            
            Spacer()
            
            List{
                NavigationLink(destination: ColourPickerView(),
                label: {
                    Text("Pick")
                    
                })
            }
            .frame(height: 75, alignment: .bottom)

            }
        }
    }
}

struct CirclesView_Previews: PreviewProvider {
    static var previews: some View {
        CirclesView(firstCircleColour:.pink, secondCircleColour: .red, thirdCircleColour: .purple, fourthCircleColour: .blue, fifthCircleColour: .green, sixthCircleColour: .yellow)
    }
}
