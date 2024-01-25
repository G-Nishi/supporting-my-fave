//
//  BackgroundView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Text("TITLE")
                .font(.system(size: 60))
                .frame(width: 163, height: 73)
                .position(x: UIScreen.main.bounds.width / 2, y: 173)
    }
}

#Preview {
    BackgroundView()
}
