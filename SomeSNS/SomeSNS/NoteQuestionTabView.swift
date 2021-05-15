//
//  NoteQuestionTabView.swift
//  SomeSNS
//
//  Created by AKADA TEPPEI on 2021/05/15.
//

import SwiftUI

struct NoteQuestionTabView: View {
    @State private var selection = 0
    @State var certificationName: String
    var body: some View {
        ZStack(alignment: .top) {
            TabView(selection: $selection) {
                NotesListView()
                    .tag(0)
                Text("page 2")
                    .tag(1)
            }
            .tabViewStyle(PageTabViewStyle())

            Picker("", selection: $selection) {
                Text("ノート").tag(0)
                Text("質問").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.all, 4)
        }
        .navigationBarTitle(Text(certificationName), displayMode: .inline)
    }

    init(certificationName: String) {
        self.certificationName = certificationName
    }
}

struct NoteQuestionTabView_Previews: PreviewProvider {
    static var previews: some View {
        NoteQuestionTabView(certificationName: "")
    }
}
