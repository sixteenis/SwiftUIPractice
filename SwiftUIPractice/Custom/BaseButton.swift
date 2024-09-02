//
//  BaseButton.swift
//  SwiftUIPractice
//
//  Created by 박성민 on 9/2/24.
//

import SwiftUI

struct BaseButton<NextView: View>: View {
    let bTitlt: String
    let backColor: Color
    let nextView: NextView
    var body: some View {
        NavigationLink {
            nextView
        } label: {
            Text(bTitlt)
                .foregroundStyle(.white)
                .font(.title2)
                .frame(height: 45)
                .frame(maxWidth: .infinity)
                .background(backColor)
                .cornerRadius(20)
                .padding(.horizontal, 30)
        }
        
        
    }
}

//#Preview {
//    BaseButton(bTitlt: "감자", backColor: .blue), nextVie
//}
