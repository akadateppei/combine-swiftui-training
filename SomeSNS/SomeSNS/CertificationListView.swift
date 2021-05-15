//
//  CertificationListView.swift
//  SomeSNS
//
//  Created by AKADA TEPPEI on 2021/05/15.
//

import SwiftUI

struct CertificationListView: View {
    @EnvironmentObject var certificationModel: CertificationModel

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(certificationModel.certifications, id: \.self) { certification in
                        NavigationLink(
                            destination: NoteQuestionTabView(certificationName: certification.name),
                            label: {
                                Text(certification.name)
                            })
                    }
                }
                .navigationBarTitle("資格一覧")
                .listStyle(GroupedListStyle())
                Spacer()
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CertificationListView_Previews: PreviewProvider {
    static var previews: some View {
        CertificationListView()
    }
}
