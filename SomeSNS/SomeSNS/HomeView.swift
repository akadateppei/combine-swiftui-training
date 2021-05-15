//
//  ContentView.swift
//  SomeSNS
//
//  Created by AKADA TEPPEI on 2021/05/15.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            CertificationListView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
                .tag(1)
            CertificationListView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("You")
                    }
                }
                .tag(2)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(CertificationModel())
    }
}
