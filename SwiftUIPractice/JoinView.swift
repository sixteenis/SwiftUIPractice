//
//  JoinView.swift
//  SwiftUIPractice
//
//  Created by 박성민 on 9/2/24.
//

import SwiftUI

struct JoinView: View {
    @State private var nickText = ""
    let mbti = [
        MBTIModel(top: "E", bottom: "I"),
        MBTIModel(top: "S", bottom: "N"),
        MBTIModel(top: "T", bottom: "F"),
        MBTIModel(top: "J", bottom: "P")
    ]
    var body: some View {
        NavigationLink(destination: profileSettingView(selecetProfile: .profile_1)) {
            CameraProfile(profile: .profile_1)
        }
        Spacer()
            .frame(height: 50)
        TextField("닉네임을 입력해주세요 :)", text: $nickText)
            .padding(.horizontal, 35)
        Divider()
            .padding(.horizontal, 30)
        Spacer()
            .frame(height: 50)
        Text("MBTI")
            .bold()
            .font(.title)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 30)
        HStack(spacing: 15){
            Spacer()
                .frame(width: 80)
            ForEach(mbti, id: \.id) {
                MBTIButton(mbti: $0)
            }
        }
        
        Spacer()
        BaseButton(bTitlt: "완료", backColor: .gray, nextView: MainView())
            .navigationTitle("PROFILE SETTING")
    }
}

#Preview {
    JoinView()
}
