//
//  ProfileView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/26.
//

import SwiftUI

struct ProfileView: View {
    var randomPoint: Int
    var randomLevel: Int
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView{
                    VStack{
                        Image("kanta")
                            .resizable()
                            .frame(width: 267, height: 267)
                            .padding(.top, 136)
                        Text("name")
                            .font(.system(size: 40))
                            .padding(.top, 36)
                        HStack {
                            Text("level \(randomLevel)")
                                .font(.system(size: 25))
                            ZStack(alignment: .leading) {
                                Rectangle()
                                    .foregroundColor(.gray)
                                    .frame(width: 210.1, height: 11)
                                Rectangle()
                                    .foregroundColor(.green)
                                    .frame(width: CGFloat(randomPoint) * 1.1, height: 10)
                            }
                        }
                        .frame(width: 393)
                        ZStack {
                            Rectangle()
                                .frame(width: 267, height: 481)
                                .foregroundColor(.white)
                                .border(Color.black)
                                .padding(.top, 33)
                            Text("COMMENT")
                                .font(.system(size: 30))
                        }
                        Text("RANKING")
                            .padding(.top, 55)
                            .font(.system(size: 55))
                        
                        
                        
                        
                        
                        
                        let numbers = (1..<5).reduce(into: [200]) { result, _ in
                            let nextNumber = Int.random(in: 100..<result.last!)
                            result.append(nextNumber)
                        }

                        // numbers配列を使ってForEachを構築します。
                        ForEach(numbers.indices, id: \.self) { index in
                            let randomNumber = numbers[index]
                            ZStack {
                                Rectangle()
                                    .frame(width: 337, height: 85)
                                    .cornerRadius(20)
                                    .foregroundColor(.black)
                                Rectangle()
                                    .frame(width: 335, height: 83)
                                    .cornerRadius(20)
                                    .foregroundColor(.white)
                                HStack {
                                    Text(String(index + 1)) // Indexを1から始めるために+1
                                        .font(.system(size: 40))
                                        .frame(width: 66, height: 66)
                                        .background(.gray)
                                        .cornerRadius(33)
                                        .padding(.leading, 45)
                                    VStack {
                                        Text("name")
                                            .font(.system(size: 35))
                                        Text("\(String(randomNumber)) pt")
                                            .font(.system(size: 20))
                                    }
                                    .padding(.leading, 45)
                                Spacer()
                                }
                            }
                        }
                        
                        ForEach(0..<3) { index in
                            Rectangle()
                                .frame(width: 18, height: 18)
                                .cornerRadius(9)
                        }
                        ZStack {
                            Rectangle()
                                .frame(width: 337, height: 85)
                                .cornerRadius(20)
                                .foregroundColor(.black)
                            Rectangle()
                                .frame(width: 335, height: 83)
                                .cornerRadius(20)
                                .foregroundColor(.white)
                            HStack {
                                Text("-")
                                    .font(.system(size: 40))
                                    .frame(width: 66, height: 66)
                                    .background(.gray)
                                    .cornerRadius(33)
                                    .padding(.leading, 45)
                                VStack {
                                    Text("name")
                                        .font(.system(size: 35))
                                    Text("0 pt")
                                        .font(.system(size: 20))
                                }
                                .padding(.leading, 45)
                            Spacer()
                            }
                        }
                        
                        NavigationLink(destination: OsuView(randomPoint: randomPoint, randomLevel: randomLevel)) {
                            Text("推す")
                                .foregroundStyle(.black)
                                .font(.system(size: 50))
                                .frame(width: 187, height: 60)
                                .background(.gray)
                                .padding(.top, 49)
                        }
                        
                        
                        
                    }
                    .padding(.bottom, 136)
                }
                .ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
                
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
    ProfileView(randomPoint: 0, randomLevel: 0)
}
