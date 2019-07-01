//
//  LandmarkList.swift
//  SwiftUI_List
//
//  Created by Varun Kumar on 01/07/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
    
    NavigationView
    {
    
    List(landmarkData) { landmark in
    
        NavigationButton(destination: LandmarkDetail(landmark: landmark))
    {
    LandmarkRow(landmark: landmark)
    }
    }
    }
    
    
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
    LandmarkList()
    }
}
#endif
