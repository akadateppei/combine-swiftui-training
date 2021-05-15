//
//  CertificationService.swift
//  SomeSNS
//
//  Created by AKADA TEPPEI on 2021/05/15.
//

import Foundation

class CertificationModel: ObservableObject {
    @Published var certifications: [Certification] = []

    init() {
        let decoder = JSONDecoder()
        let certifications = try! decoder.decode([Certification].self, from: Mocks().certificationsData)
        self.certifications = certifications
    }

}
