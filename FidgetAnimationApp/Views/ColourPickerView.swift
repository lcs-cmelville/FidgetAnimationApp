//
//  ColourPickerView.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-11.
//

import SwiftUI

struct ColourPickerView: View {
    
    //MARK: Stored Properties
    
    @State var selectedColour = Color.red
    @State var selectedColourTwo = Color.red
    @State var selectedColourThree = Color.red
    @State var selectedColourFour = Color.red
    @State var selectedColourFive = Color.red
    @State var selectedColourSix = Color.red
    
    var body: some View {
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
        
        Spacer()
    }
}

struct ColourPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColourPickerView()
    }
}
