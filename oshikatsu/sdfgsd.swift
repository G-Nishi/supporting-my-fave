//
//  sdfgsd.swift
//  oshikatsu
//
//  Created by NG on 2024/01/28.
//

import SwiftUI

struct sdfgsd: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("name")
                .font(.system(size: 32))
                .foregroundStyle(Color.black)
                .background(Color.red)
            HStack {
                Text("level 1")
                    .font(.system(size: 15))
                    .foregroundStyle(Color.black)
                ZStack(alignment: .leading) {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 191, height: 10)
                    Rectangle()
                        .foregroundColor(.green)
                        .frame(width: 130, height: 10)
                }
            }
            .background(Color.red)
        }
    }
}

#Preview {
    sdfgsd()
}
