//
//  SomeSNSApp.swift
//  SomeSNS
//
//  Created by AKADA TEPPEI on 2021/05/15.
//

import SwiftUI

@main
struct SomeSNSApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(CertificationModel())
        }
    }
}
