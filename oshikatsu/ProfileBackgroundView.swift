//
//  ListBackgroundView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/26.
//

import SwiftUI

struct ProfileBackgroundView: View {
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(height: 117)
                Spacer()
            }
            VStack {
                Text("PROFILE")
                    .font(.system(size: 50))
                    .padding(.top, 56)
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileBackgroundView()
}
