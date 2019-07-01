//
//  LandmarkDetail.swift
//  SwiftUI_List
//
//  Created by Varun Kumar on 01/07/19.
//  Copyright © 2019 Apple. All rights reserved.
//


import SwiftUI

struct LandmarkDetail: View {
   
    var landmark : Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate).edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage(image: landmark.image(forSize: 250))
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
    }
}

#if DEBUG
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif
