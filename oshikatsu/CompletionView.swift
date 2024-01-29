//
//  Completion.swift
//  oshikatsu
//
//  Created by NG on 2024/01/29.
//

import SwiftUI

struct CompletionView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Text("completion")
                    .font(.system(size: 50))
                ZStack {
                    VStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(height: 117)
                        Spacer()
                    }
                    VStack {
                        Text("推す")
                            .font(.system(size: 50))
                            .padding(.top, 56)
                        Spacer()
                    }
                }
                .ignoresSafeArea()
                
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
        .navigationBarBackButtonHidden(true)    }
}

#Preview {
    CompletionView()
}
