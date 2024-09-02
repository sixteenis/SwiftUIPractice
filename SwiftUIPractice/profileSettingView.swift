//
//  profileSettingView.swift
//  SwiftUIPractice
//
//  Created by 박성민 on 9/2/24.
//

import SwiftUI

struct profileSettingView: View {
    let profileList = ProfileImage.allCases
    let columns = Array(repeating: GridItem(.flexible()), count: 4)
    @State var selecetProfile: ProfileImage
    @State private var select = false
    var body: some View {
        CameraProfile(profile: .profile_0)
            .navigationTitle("PROFILE SETTING")
        Spacer()
            .frame(height: 50)
        LazyVGrid(columns: columns) {
            ForEach(profileList, id: \.image) {
                Profile(profile: $0, size: 80, isSelect: $select)
            }
        } //:VSTACK
        .padding(20)
        Spacer()
    }
}

#Preview {
    profileSettingView(selecetProfile: .profile_1)
}
