//
//  RotatedBadgeSymbol.swift
//  SwiftUITest
//
//  Created by gelei on 2019/10/15.
//  Copyright © 2019 gelei. All rights reserved.
//


import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
