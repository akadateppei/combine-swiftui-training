//
//  NotesListView.swift
//  SomeSNS
//
//  Created by AKADA TEPPEI on 2021/05/15.
//

import SwiftUI

struct NotesListView: View {
    @ObservedObject var notesModel = NotesModel()
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(notesModel.notes, id: \.self) { note in
                ZStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(note.title)
                                .font(.headline)
                                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            Text(note.description)
                                .font(.caption)
                                .foregroundColor(.secondary)
                                .padding(.bottom, 4)
                            HStack {
                                Spacer()
                                Image(systemName: "person.circle").foregroundColor(.gray).font(.system(size: 20, weight: .light))
                                Text(note.createuser)
                                    .font(.caption)
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .background(Color.white)
                    .compositingGroup()
                    .cornerRadius(14)
                    .shadow(color: .black.opacity(0.2), radius: 4, x: 0.0, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                }
                .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

            }
            Spacer()
        }
        .padding(.top, 50)
        .navigationBarItems(trailing: Button(action: {

        }, label: {
            Image(systemName: "plus.circle.fill")
                .font(.title)
        }))
    }
}

struct NotesListView_Previews: PreviewProvider {
    static var previews: some View {
        NotesListView()
    }
}
