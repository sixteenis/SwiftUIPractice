//
//  MBTIButton.swift
//  SwiftUIPractice
//
//  Created by 박성민 on 9/2/24.
//

import SwiftUI

struct MBTIButton: View {
    let mbti: MBTIModel
    var body: some View {
        VStack {
            mbtiButton(mbti.top)
            mbtiButton(mbti.bottom)
        }
    }
    private func mbtiButton(_ text: String) -> some View {
        Button {
            // Action
            
        } label: {
            Circle()
                .stroke(.gray, lineWidth: 2)
                .opacity(0.6)
                .overlay (
                    Text(text)
                        .foregroundStyle(.gray)
                )
                .frame(width: 50)
        }
    }
}

//#Preview {
//    MBTIButton()
//}
