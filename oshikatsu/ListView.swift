//
//  ListView.swift
//  oshikatsu
//
//  Created by NG on 2024/01/23.
//

import SwiftUI

struct ListView: View {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.gray
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black, .font: UIFont.systemFont(ofSize: 50)]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationView {
            Text("gh")
                .navigationBarTitle(Text("LIST"))
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ListView()
}
