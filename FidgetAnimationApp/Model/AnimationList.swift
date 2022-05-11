//
//  AnimationList.swift
//  FidgetAnimationApp
//
//  Created by Claire Coding Account on 2022-05-10.
//

import Foundation

struct FidgetAnimation: Identifiable {
    let name: String
    let id: Int
}

let testItem = FidgetAnimation(name: "Cirlces", id: 1)

let animationsList = [

    FidgetAnimation(
        name: "Circles",
        id: 1)
    
    ,
    
    FidgetAnimation(
        name: "Squares",
        id: 2)
    
    ,
    
    FidgetAnimation(
        name: "Loading",
        id: 3)
    
]
