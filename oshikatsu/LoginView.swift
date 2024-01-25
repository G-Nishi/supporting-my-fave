//
//  LoginView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/23.
//

import SwiftUI

struct LoginView: View {
    @State private var phoneNumber = ""
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                VStack{
                    Text("LOGIN")
                        .font(.system(size: 30))
                        .padding(.bottom, 44)
                    HStack {
                        Spacer()
                            .frame(width:28)
                        Text("Please enter your phone number")
                        Spacer()
                    }
                    .padding(.bottom, 4)
                    TextField("", text:$phoneNumber)
                        .frame(width: 347, height: 50)
                        .border(Color.black, width: 1)
                        .padding(.bottom, 22)
                        .keyboardType(.numberPad)
                    NavigationLink(destination: OtpView()) {
                        Text("STEND OTP")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .frame(width: 347, height: 50)
                            .background(Color.gray)
                            .padding(.bottom, 44)
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: SignupView()) {
                        Text("SIGN")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .frame(width: 347, height: 50)
                    }
                }
                .position(x: UIScreen.main.bounds.width / 2, y: 417)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    LoginView()
}
