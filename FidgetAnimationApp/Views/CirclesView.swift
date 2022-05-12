//
//  CirlcesView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-10.
//

import SwiftUI

struct CirclesView: View {
    
    //MARK: Stored Properties
    
    @Binding var favourites: [FidgetAnimation]
    
    @State var isFavourite: Bool
    
    @State var circleOpacity = 1.0
    
    @State var xOffset = 0.0
    @State var yOffset = 0.0
    
    
    @State var circleOpacityTwo = 1.0
    
    @State var xOffsetTwo = 0.0
    @State var yOffsetTwo = 0.0
    
    
    @State var circleOpacityThree = 1.0
    
    @State var xOffsetThree = 0.0
    @State var yOffsetThree = 0.0
    
    
    @State var circleOpacityFour = 1.0
    
    @State var xOffsetFour = 0.0
    @State var yOffsetFour = 0.0
    
    
    @State var circleOpacityFive = 1.0
    
    @State var xOffsetFive = 0.0
    @State var yOffsetFive = 0.0
    
    
    @State var circleOpacitySix = 1.0
    
    @State var xOffsetSix = 0.0
    @State var yOffsetSix = 0.0
    
    
    @State var selectedColour = Color.red
    @State var selectedColourTwo = Color.red
    @State var selectedColourThree = Color.red
    @State var selectedColourFour = Color.red
    @State var selectedColourFive = Color.red
    @State var selectedColourSix = Color.red

    
    var body: some View {
        
        NavigationView {
        
        VStack {
            
        Image(systemName: "heart.circle")
                .foregroundColor(.black)
                .opacity(50)
                .scaleEffect(2)
                .padding()
                .onTapGesture {
            
                    favourites.append(FidgetAnimation(name: "Circles", id: 1))
                    
                    print(dump(favourites))
                    
                }
            
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
                    .foregroundColor(selectedColourSix)
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
                    .foregroundColor(selectedColourFive)
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
                    .foregroundColor(selectedColourFour)
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
                    .foregroundColor(selectedColourThree)
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
                    .foregroundColor(selectedColourTwo)
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
                    .foregroundColor(selectedColour)
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
            
//            List{
//                NavigationLink(destination: ColourPickerView(),
//                label: {
//                    Text("Pick")
//
//                })
//            }
//            .frame(height: 75, alignment: .bottom)
            
            VStack {
                
                ColorPicker("Set the First Circle or Square Colour",
                            selection: $selectedColour)
                    
                ColorPicker("Set the Second Circle or Square Colour",
                            selection: $selectedColourTwo)
                    
                ColorPicker("Set the Third Circle or Square Colour",
                            selection: $selectedColourThree)
                    
                ColorPicker("Set the Fourth Circle or Square Colour",
                            selection: $selectedColourFour)
                    
                ColorPicker("Set the Fifth Circle Colour",
                            selection: $selectedColourFive)
                
                ColorPicker("Set the Sixth Circle Colour",
                            selection: $selectedColourSix)
                
            }
            .padding()

            }
        }
    }
}

struct CirclesView_Previews: PreviewProvider {
    static var previews: some View {
        CirclesView(favourites: .constant([testItem]), isFavourite: false)
    }
}
