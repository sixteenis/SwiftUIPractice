//
//  Profile.swift
//  SwiftUIPractice
//
//  Created by 박성민 on 9/2/24.
//

import SwiftUI

struct Profile: View {
    let profile: ProfileImage
    let size: CGFloat
    @Binding var isSelect: Bool
    var body: some View {
        Circle()
            .stroke(isSelect ? .blue : .gray, lineWidth: isSelect ? 5 : 1)
            .overlay(
                Image(profile.image)
                    .resizable()
                    .scaledToFill()
                    .clipShape(.circle)
                    .frame(width: size - 10, height: size - 10)
                    .opacity(isSelect ? 1 : 0.6)
            )
            .frame(width: size)
        
        
        
        
    }
}

//#Preview {
//   
//
//    Profile(profile: .profile_0)
//}
