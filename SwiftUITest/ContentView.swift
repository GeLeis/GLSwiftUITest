//
//  ContentView.swift
//  SwiftUITest
//
//  Created by gelei on 2019/10/14.
//  Copyright © 2019 gelei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            MapView(coordinate: <#CLLocationCoordinate2D#>)
//                .edgesIgnoringSafeArea(.top)//置顶
//                .frame(height: 300)

//            CircleImage()
//                .offset(y: -50)
//                .padding(.bottom,-130)//把底部缩一缩

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack(alignment: .top) {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()//占据剩余空间
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
