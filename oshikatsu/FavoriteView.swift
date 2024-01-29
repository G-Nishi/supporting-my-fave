//
//  ListView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/23.
//

import SwiftUI

struct FavoriteView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 337, height: 42)
                            .foregroundColor(.gray)
                        HStack {
                            Text("search")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
                                .padding(.leading, 41)
                            Spacer()
                            Image(systemName: "magnifyingglass")
                                .frame(width: 24, height: 24)
                                .padding(.trailing, 48)
                        }
                    }
                    .padding(.top, 136)
                    ScrollView {
                        
                        ForEach(1..<20) { index in
                            let randomPoint = Int.random(in: 1...191)
                            let randomLevel = Int.random(in: 1...20)
                            
                            NavigationLink(destination: ProfileView(randomPoint: randomPoint, randomLevel: randomLevel)) {
                                HStack {
                                    Image("kanta")
                                        .resizable()
                                        .frame(width: 53, height: 53)
                                        .clipShape(Circle())
                                        .padding(.trailing, 19)
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text("name")
                                            .font(.system(size: 32))
                                            .foregroundStyle(Color.black)
                                            //.background(.red)
                                        HStack(spacing:0) {
                                            Text("level \(randomLevel)")
                                                .frame(width: 66, height: 18)
                                                .font(.system(size: 15))
                                                .foregroundStyle(Color.black)
                                                //.background(.red)
                                            ZStack(alignment: .leading) {
                                                Rectangle()
                                                    .foregroundColor(.gray)
                                                    .frame(width: 191, height: 10)
                                                Rectangle()
                                                    .foregroundColor(.green)
                                                    .frame(width: CGFloat(randomPoint), height: 10)
                                            }
                                        }
                                    }
                                }
                                .frame(width: 337, height: 96)
                                //.background(.blue)
                            }
                            .frame(maxWidth: .infinity)
                            
                            
                        } // ForEach
                        
                        .padding(.bottom, 136)
                    }// ScrollView
                    
                }
                
                ZStack {
                    VStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(height: 117)
                        Spacer()
                    }
                    VStack {
                        Text("FAVORITE")
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
            .ignoresSafeArea()
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    FavoriteView()
}
