//
//  Profile.swift
//  SwiftUIPractice
//
//  Created by 박성민 on 9/2/24.
//

import SwiftUI

struct Profile: View {
    let profile: ProfileImage
    @Binding var isSelect: Bool
    var body: some View {
        Circle()
            .stroke(isSelect ? .blue : .gray, lineWidth: isSelect ? 5 : 1)
            .overlay(
                Image(profile.image)
                    .resizable()
                    .scaledToFill()
                    .clipShape(.circle)
                    .frame(width: 110, height: 110)
                    .opacity(isSelect ? 1 : 0.6)
            )
            .frame(width: 120)
        
        
        
        
    }
}

//#Preview {
//   
//
//    Profile(profile: .profile_0)
//}
