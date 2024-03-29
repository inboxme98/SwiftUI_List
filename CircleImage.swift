//
//  CircleImage.swift
//  SwiftUI_List
//
//  Created by Varun Kumar on 01/07/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
   
    var image : Image
    var body: some View {
        
        
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarkData[0].image(forSize: 250)).previewLayout(.fixed(width: 250, height: 250))
    }
}
#endif
