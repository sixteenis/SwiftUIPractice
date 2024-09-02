//
//  ProfileImage.swift
//  PolaroidProject
//
//  Created by 박성민 on 7/22/24.
//

import Foundation
@frozen
enum ProfileImage: Int, CaseIterable, Codable {
    case profile_0
    case profile_1
    case profile_2
    case profile_3
    case profile_4
    case profile_5
    case profile_6
    case profile_7
    case profile_8
    case profile_9
    case profile_10
    case profile_11
    
    var image: String {
        return String(describing: self)
    }
    static var randomImage: String {
        guard let image =  Self.allCases.randomElement()?.image else {return self.profile_0.image}
        return String(describing: image)
    }
}
