//
//  NotesModel.swift
//  SomeSNS
//
//  Created by AKADA TEPPEI on 2021/05/15.
//

import Foundation

class NotesModel: ObservableObject {
    @Published var notes: [Note] = []

    init() {
        let decoder = JSONDecoder()
        let notes = try! decoder.decode([Note].self, from: Mocks().notesData)
        self.notes = notes
    }
}
