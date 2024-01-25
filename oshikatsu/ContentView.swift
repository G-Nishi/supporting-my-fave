//
//  ContentView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                VStack {
                    NavigationLink(destination: LoginView()) {
                        Text("LOGIN")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .frame(width: 259, height: 83)
                            .background(Color.gray)
                            .cornerRadius(50)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.bottom, 51)
                    NavigationLink(destination: SignupView()) {
                        Text("SIGNUP")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .frame(width: 259, height: 83)
                            .background(Color.gray)
                            .cornerRadius(50)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .position(x: UIScreen.main.bounds.width / 2, y: 458)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ContentView()
}
