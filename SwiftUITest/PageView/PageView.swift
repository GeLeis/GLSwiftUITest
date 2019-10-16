//
//  PageView.swift
//  SwiftUITest
//
//  Created by gelei on 2019/10/16.
//  Copyright © 2019 gelei. All rights reserved.
//


import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)//底部对齐
        }
    }
}

struct PageView_Preview: PreviewProvider {
    static var previews: some View {
        PageView(features.map { FeatureCard(landmark: $0) })
        .aspectRatio(3/2, contentMode: .fit)
    }
}
