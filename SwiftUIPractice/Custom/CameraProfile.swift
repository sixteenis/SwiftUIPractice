//
//  CameraProfile.swift
//  SwiftUIPractice
//
//  Created by 박성민 on 9/2/24.
//

import SwiftUI

struct CameraProfile: View {
    let profile: ProfileImage
    var body: some View {
        Circle()
            .stroke(.blue, lineWidth: 5)
            .overlay(
                Image(profile.image)
                    .resizable()
                    .scaledToFill()
                    .clipShape(.circle)
                    .frame(width: 110, height: 110)
                
            )
            .overlay(
                Circle()
                    .fill(.blue)
                    .frame(width: 40)
                    .overlay (
                        Image(systemName: "camera.fill")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.white)
                    )
                    .offset(x: 45, y: 40)
                
            )
            .frame(width: 120)
        
        
        
        
    }
}

#Preview {
    CameraProfile(profile: .profile_0)
}
