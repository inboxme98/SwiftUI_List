//
//  ContentView.swift
//  SwiftUI_List
//
//  Created by Varun Kumar on 01/07/19.
//  Copyright © 2019 Likeit. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        
        VStack(alignment: .center)
        {
            MapView().frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage().offset(x: 0, y: -130).padding(.bottom, -130)
            
            Text("Title").font(.title).color(.green)
            
            HStack()
                {
                    Text("Text 1").font(.subheadline).color(.purple)
                    Spacer(minLength: 10)
                    Text("Text 2").font(.subheadline).color(.purple)
                    Spacer(minLength: 10)
                    Text("Text 3").font(.subheadline).color(.purple)
            }
            
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
