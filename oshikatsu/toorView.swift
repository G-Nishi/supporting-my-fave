//
//  toorView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/26.
//

import SwiftUI

struct toorView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                HStack {
                    NavigationLink(destination: ListView()) {
                    ZStack {
                        Rectangle()
                            .frame(width: 131, height: 80)
                            .foregroundColor(.gray)
                        Image(systemName: "list.bullet.clipboard")
                            .resizable()
                            .frame(width: 37, height: 37)
                            .foregroundColor(.black)
                        }
                    }
                    .offset(x: 8, y: 0)
                    NavigationLink(destination: FavoriteView()) {
                        ZStack {
                            Rectangle()
                                .frame(width: 131, height: 80)
                                .foregroundColor(.gray)
                            Image(systemName: "suit.heart")
                                .resizable()
                                .frame(width: 37, height: 37)
                                .foregroundColor(.black)
                        }
                    }
                    NavigationLink(destination: SettingView()) {
                        ZStack {
                            Rectangle()
                                .frame(width: 131, height: 80)
                                .foregroundColor(.gray)
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width: 37, height: 37)
                                .foregroundColor(.black)
                        }
                    }
                    .offset(x: -8, y: 0)
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    toorView()
}
