//
//  OnboardingView.swift
//  SwiftUIPractice
//
//  Created by 박성민 on 9/2/24.
//

import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                    .frame(height: 50)
                Image(.launch)
                Image(.launchImage1)
                Spacer()
                BaseButton(bTitlt: "시작하기", backColor: .blue, nextView: JoinView())
//                NavigationLink {
//                    JoinView()
//                } label: {
//                    BaseButton(bTitlt: "시작하기", backColor: .blue) 
//                }

                
                
            } //:VSTACK
        } //:NAVIGATION
    }
    
}

#Preview {
    OnboardingView()
}
