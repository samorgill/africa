//
//  VideoModel.swift
//  Africa
//
//  Created by Sam Orgill on 04/01/2021.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computer property
    var thumbnail: String {
        "video-\(id)"
    }
}


