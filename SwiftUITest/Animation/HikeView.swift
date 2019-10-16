//
//  HikeView.swift
//  SwiftUITest
//
//  Created by gelei on 2019/10/15.
//  Copyright © 2019 gelei. All rights reserved.
//

import SwiftUI

extension AnyTransition {
    //定义不同的动画
    static var moveAndFade:AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct HikeView: View {
    var hike: Hike
    @State private var showDetail = false

    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)

                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }

                Spacer()

                Button(action: {
                    withAnimation(.easeInOut(duration: 4)) {
                        self.showDetail.toggle()
                    }
//                    self.showDetail.toggle()
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
//                        .rotationEffect(.init(degrees: showDetail ? 90 : 0))
                        .animation(nil)
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
                        .animation(.spring())
                }
            }

            if showDetail {
                HikeDetail(hike: hike)
                    .transition(.moveAndFade)
            }
        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HikeView(hike: hikeData[0]).padding()
            Spacer()
        }
    }
}
