//
//  UserData.swift
//  SwiftUITest
//
//  Created by gelei on 2019/10/15.
//  Copyright © 2019 gelei. All rights reserved.
//

import Foundation
final class UserData: ObservableObject {
    //@Published 信息修改时,对外发出通知
    @Published var showFavoritesOnly = false
    @Published var landmarks = Common.landmarkData
}
