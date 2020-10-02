//
//  PostData.swift
//  Hacker News
//
//  Created by Victor Vieira Veiga on 01/10/20.
//  Copyright © 2020 Victor Vieira Veiga. All rights reserved.
//

import Foundation

struct Results : Decodable {
    let hits : [Post]
}

struct Post : Decodable, Identifiable {
    var id: String {return objectID}
    let objectID : String
    let points: Int
    let title : String
    let url: String?
    
}
