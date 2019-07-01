//
//  CircleImage.swift
//  SwiftUIDemo
//
//  Created by Varun Kumar on 01/07/19.
//  Copyright © 2019 Likeit. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image("turtlerock").clipShape(Circle())
        .overlay(Circle().stroke(Color.green, lineWidth: 2))
        .shadow(radius: 10)        
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
