//
//  LandmarkRow.swift
//  SwiftUITest
//
//  Created by gelei on 2019/10/14.
//  Copyright © 2019 gelei. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: Common.landmarkData[0])
                .previewLayout(.fixed(width: 300, height: 70))
            LandmarkRow(landmark: Common.landmarkData[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
