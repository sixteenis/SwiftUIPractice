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
        HStack{
            Text("MBTI")
                .bold()
                .font(.title3)
                .frame(maxWidth: 300, maxHeight: 100, alignment: .topLeading)
                .padding(.leading)
            HStack(spacing: 15){
                
                ForEach(mbti, id: \.id) {
                    MBTIButton(mbti: $0)
                }
            }
            .padding(.trailing)
        } //:HSTACK
        
        Spacer()
        BaseButton(bTitlt: "완료", backColor: .gray, nextView: MainView())
            .navigationTitle("PROFILE SETTING")
    }
}

#Preview {
    JoinView()
}
