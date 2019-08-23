//
//  Hike.swift
//  HikingApp
//
//  Created by ioannis giannakidis on 23/8/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
import SwiftUI
struct Hike:Identifiable {
    let id = UUID()
    let name:String
    let imageURL: String
    let miles: Double
    
}

extension Hike {
    
    static func all()->[Hike] {
        return [ Hike(name: "Salmonberry Trail  ", imageURL: "sal", miles: 6),
                 Hike(name: "Tom, Dick, and Harry Mountain", imageURL: "tom", miles: 5.8),
                 Hike(name: "Tamanawas", imageURL: "tam", miles: 5)]
    }
}
