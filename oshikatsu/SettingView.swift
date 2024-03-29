import SwiftUI

struct SettingView: View {
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
                    .padding(.top, 134)
                    .padding(.bottom, 54)
                    
                    VStack {
                        NavigationLink(destination: SignupView()) {
                            Text("PROFILE")
                                .foregroundStyle(Color.black)
                                .frame(width: 400, height: 71)
                                .border(.black, width: 1)
                        }
                        NavigationLink(destination: SignupView()) {
                            Text("HISTORY")
                                .foregroundStyle(Color.black)
                                .frame(width: 400, height: 71)
                                .border(.black, width: 1)
                                .offset(x: 0, y: -9)
                        }
                        NavigationLink(destination: SignupView()) {
                            Text("ACCOUNT")
                                .foregroundStyle(Color.black)
                                .frame(width: 400, height: 71)
                                .border(.black, width: 1)
                                .offset(x: 0, y: -18)
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
                        Text("SETTING")
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
    SettingView()
}
