//
//  SquaresView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-10.
//

import SwiftUI

struct SquaresView: View {
    
    
    //MARK: Stored Properties
    
    @State var firstSquareColour: Color
    @State var secondSquareColour: Color
    @State var thirdSquareColour: Color
    @State var fourthSquareColour: Color
    
    @State var rotationAmount = -10.0
    
    @State var xOffsetOne = 0.0
    @State var yOffsetOne = 0.0
    
    @State var xOffsetTwo = 0.0
    @State var yOffsetTwo = 0.0
    
    @State var xOffsetThree = 0.0
    @State var yOffsetThree = 0.0
    
    @State var xOffsetFour = 0.0
    @State var yOffsetFour = 0.0
    
    @State var heartOpacity = 1.0
    
    let timer = Timer.publish(every: 0.50, on: .main, in: .common).autoconnect()
    
    @Binding var favourites: [FidgetAnimation]
    
    var body: some View {
        
        VStack {
            
            Image(systemName: "heart.circle")
                .foregroundColor(.pink)
                .scaleEffect(2)
                .opacity(heartOpacity)
                .padding()
                .onTapGesture {
                    
                    favourites.append(FidgetAnimation(name: "Squares", id: 2))
                    
                    heartOpacity = 0.0
                }
            
            Spacer()
            
            ZStack {
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(firstSquareColour)
                    .rotationEffect(.degrees(rotationAmount), anchor: .center)
                    .offset(x: xOffsetOne, y: yOffsetOne)
                    .onReceive(timer) { Input in
                        
                        withAnimation (
                            Animation
                                .easeInOut(duration: 2.0)
                                .repeatForever(autoreverses: true)
                        ) {
                            xOffsetOne = 0.0
                            
                            yOffsetOne = -100.0
                            
                            // One full rotation
                            rotationAmount = 370.0
                            
                        }
                        
                        // turn off the timer
                        timer.upstream.connect().cancel()
                    }
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(secondSquareColour)
                    .rotationEffect(.degrees(rotationAmount), anchor: .center)
                    .offset(x: xOffsetTwo, y: yOffsetTwo)
                    .onReceive(timer) { Input in
                        
                        withAnimation(
                            Animation
                                .easeInOut(duration: 2.0)
                                .repeatForever(autoreverses: true)
                        ) {
                            
                            xOffsetTwo = 100.0
                            
                            yOffsetTwo = 0.0
                            
                            // One full rotation
                            rotationAmount = 370.0
                            
                        }
                        
                        // turn off the timer
                        timer.upstream.connect().cancel()
                    }
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(thirdSquareColour)
                    .rotationEffect(.degrees(rotationAmount), anchor: .center)
                    .offset(x: xOffsetThree, y: yOffsetThree)
                    .onReceive(timer) { Input in
                        
                        withAnimation(
                            Animation
                                .easeInOut(duration: 2.0)
                                .repeatForever(autoreverses: true)
                        ) {
                            xOffsetThree = 0.0
                            
                            yOffsetThree = 100.0
                            
                            // One full rotation
                            rotationAmount = 370.0
                        }
                        
                        // turn off the timer
                        timer.upstream.connect().cancel()
                    }
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(fourthSquareColour)
                    .rotationEffect(.degrees(rotationAmount), anchor: .center)
                    .offset(x: xOffsetFour, y: yOffsetFour)
                    .onReceive(timer) { Input in
                        
                        withAnimation(
                            Animation
                                .easeInOut(duration: 2.0)
                                .repeatForever(autoreverses: true)
                        ) {
                            xOffsetFour = -100.0
                            
                            yOffsetFour = 0.0
                            
                            // One full rotation
                            rotationAmount = 370.0
                        }
                        
                        // turn off the timer
                        timer.upstream.connect().cancel()
                    }
                
            }
            
            Spacer()
            
            VStack {
                
                ColorPicker("Set the First Square Colour",
                            selection: $firstSquareColour)
                
                ColorPicker("Set the Second Square Colour",
                            selection: $secondSquareColour)
                
                ColorPicker("Set the Third Square Colour",
                            selection: $thirdSquareColour)
                
                ColorPicker("Set the Fourth Square Colour",
                            selection: $fourthSquareColour)
                
            }
            .padding()
            
        }
    }
}

struct SquaresView_Previews: PreviewProvider {
    static var previews: some View {
        SquaresView(firstSquareColour: .red, secondSquareColour: .purple, thirdSquareColour: .blue, fourthSquareColour: .green, favourites: .constant([testItem]))
    }
}
