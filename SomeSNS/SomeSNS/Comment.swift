//
//  Comment.swift
//  SomeSNS
//
//  Created by AKADA TEPPEI on 2021/05/15.
//

import Foundation

struct Comment: Codable, Hashable {
    var id: String
    var user: String
    var content: String
}
