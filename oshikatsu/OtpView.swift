//
//  OtpView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/23.
//

import SwiftUI
import Combine

struct OtpView: View {
    @State private var otpNumber = ""
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
                        Text("We've sent an OTP on Input phone")
                        Spacer()
                    }
                    .padding(.bottom, 4)
                    TextField("", text:$otpNumber)
                        .frame(width: 347, height: 50)
                        .border(Color.black, width: 1)
                        .padding(.bottom, 22)
                        .keyboardType(.numberPad)
                    NavigationLink(destination: ListView()) {
                        Text("VERIFY OTP")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .frame(width: 347, height: 50)
                            .background(Color.gray)
                            .padding(.bottom, 44)
                    }
                    .buttonStyle(PlainButtonStyle())
                    Button {
                        //OTP再送処理
                    } label: {
                        Text("Not received your code? Resend code")
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
