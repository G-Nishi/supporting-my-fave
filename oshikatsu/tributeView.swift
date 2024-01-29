//
//  tributeView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/29.
//

import SwiftUI

struct tributeView: View {
    
    var randomPoint: Int
    var randomLevel: Int
    var displayPoint: Int
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack {
                        HStack {
                            Image("kanta")
                                .resizable()
                                .frame(width: 98, height: 98)
                                .clipShape(Circle())
                                .padding(.trailing, 48)
                            VStack(alignment: .leading) {
                                Text("name")
                                    .font(.system(size: 50))
                                Text("level \(randomLevel)")
                                    .font(.system(size: 15))
                                    .padding(.bottom, 9)
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
                        .padding(.top, 134)
                        
                        Image(systemName: "arrowshape.down")
                            .resizable()
                            .frame(width: 72, height: 72)
                            .padding()
                        
                        HStack {
                            Image("kanta")
                                .resizable()
                                .frame(width: 98, height: 98)
                                .clipShape(Circle())
                                .padding(.trailing, 48)
                            VStack(alignment: .leading) {
                                Text("name")
                                    .font(.system(size: 50))
                                HStack {
                                    Text("level \(randomLevel + Int((randomPoint + displayPoint) / 191))")
                                        .font(.system(size: 15))
                                    Image(systemName: "arrowshape.up.fill")
                                        .foregroundColor(.green)
                                }
                                .padding(.bottom, 9)
                                ZStack(alignment: .leading) {
                                    Rectangle()
                                        .foregroundColor(.gray)
                                        .frame(width: 191, height: 10)
                                    Rectangle()
                                        .foregroundColor(.green)
                                        .frame(width: CGFloat((randomPoint + displayPoint) % 191), height: 10)
                                }
                            }
                        }
                        NavigationLink(destination: OsuView(randomPoint: randomPoint, randomLevel: randomLevel)) {
                            HStack {
                                Text("tribute")
                                    .font(.system(size: 30))
                                    .padding(.leading, 46)
                                    .foregroundColor(.black)
                                Spacer()
                                Text("\(displayPoint) pt")
                                    .font(.system(size: 30))
                                    .padding(.trailing, 46)
                                    .foregroundColor(.black)
                            }
                            .frame(width: 337, height: 63)
                            .border(Color.black)
                            .padding(.top, 58)
                            .padding(.bottom, 58)
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 267, height: 481)
                                .foregroundColor(.white)
                                .border(Color.black)
                                .padding(.top, 33)
                            Text("COMMENT")
                                .font(.system(size: 30))
                        }
                        NavigationLink(destination: CompletionView()) {
                            Text("推す")
                                .foregroundStyle(.black)
                                .font(.system(size: 50))
                                .frame(width: 187, height: 60)
                                .background(.gray)
                                .padding(.top, 49)
                        }
                        .padding(.bottom, 136)
                    }
                    .frame(maxWidth: .infinity)
                }
                .ignoresSafeArea()
                
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
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    tributeView(randomPoint: 0, randomLevel: 0, displayPoint: 0)
}
