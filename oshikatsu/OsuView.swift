//
//  OsuView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/29.
//

import SwiftUI

struct OsuView: View {
    var randomPoint: Int
    var randomLevel: Int
    @State var ranPoint = 1100
    var body: some View {
        NavigationView {
            ZStack {
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
                    .padding(.bottom, 54)
                    
                    ForEach(1..<6) { index in
                        let displayPoint = ranPoint - (index * 100)
                        NavigationLink(destination: tributeView(randomPoint: randomPoint, randomLevel: randomLevel, displayPoint: displayPoint)){
                            HStack {
                                Text("tribute \(index)")
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
                            .padding(.bottom, 13)
                        }
                    }
                    
                    
                    
                    Spacer()
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
    OsuView(randomPoint: 0, randomLevel: 0)
}
