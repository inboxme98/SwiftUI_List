//
//  LandmarkRow.swift
//  SwiftUI_List
//
//  Created by Varun Kumar on 01/07/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
   
    var landmark : Landmark
    var body: some View {
        HStack
            {
                landmark.image(forSize: 50).clipShape(Circle())
                Text(landmark.name)
                Spacer()
            }.padding(.leading,10)
        
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        
        Group
            {
             LandmarkRow(landmark: landmarkData[0])
            }.previewLayout(.fixed(width: 300, height: 70))
        
       
    }
}
#endif
