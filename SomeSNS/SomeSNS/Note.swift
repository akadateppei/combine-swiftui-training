//
//  note.swift
//  SomeSNS
//
//  Created by AKADA TEPPEI on 2021/05/15.
//

import Foundation

struct Note: Codable, Hashable {
    var id: String
    var title: String
    var description: String
    var content: String
    var createuser: String
    var comments: [Comment]
}
