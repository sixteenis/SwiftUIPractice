//
//  MBTIModel.swift
//  SwiftUIPractice
//
//  Created by 박성민 on 9/2/24.
//

import Foundation

struct MBTIModel: Hashable, Identifiable {
    let id = UUID()
    let top: String
    let bottom: String
}
