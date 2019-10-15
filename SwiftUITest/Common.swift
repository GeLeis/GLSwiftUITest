//
//  Common.swift
//  SwiftUITest
//
//  Created by gelei on 2019/10/14.
//  Copyright © 2019 gelei. All rights reserved.
//

import Foundation
import HandyJSON

class Common {
    class var landmarkData : Array<Landmark> {
        var result : [Landmark] = [];
        if let path = Bundle.main.path(forResource: "landmarkData", ofType: "geojson") {
            if let jsonData = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                do {
                    if let jsonArr:NSArray = try JSONSerialization.jsonObject(with: jsonData, options: JSONSerialization.ReadingOptions()) as? NSArray {
                    //                    根据键名，获得字典对象中的键值，并将键值转化为另一个字典对象
                        for dic in jsonArr {
                            if let landmark = Landmark.deserialize(from: dic as? NSDictionary) {
                                result.append(landmark)
                            }
                        }
                    }
                } catch  {
                    
                }
            }
            return result;
        }
        return result;
    }
}
