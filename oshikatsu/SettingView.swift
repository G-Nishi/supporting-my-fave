//
//  SettingView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/25.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    Image("kanta")
                        .resizable()
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                        .padding(.trailing, 48)
                    VStack(alignment: .leading) {
                        Text("name")
                            .font(.system(size: 50))
                        Text("level 1")
                            .font(.system(size: 15))
                            .padding(.bottom, 9)
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 191, height: 10)
                            Rectangle()
                                .foregroundColor(.green)
                                .frame(width: 130, height: 10)
                        }
                        
                    }
                }
                .padding(.bottom, 52)
            }
        }
    }
}

#Preview {
    SettingView()
}
