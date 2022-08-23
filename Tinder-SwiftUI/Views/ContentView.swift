//
//  ContentView.swift
//  Tinder-SwiftUI
//
//  Created by Safar Safarov on 23/08/22.
//

import SwiftUI

struct Tab {
    let id: Int
    let name: String
    let color: Color
    let image: String
    
    static let tabs = [
        Tab(id: 0, name: "home", color: .electricPink, image: "flame.fill"),
        Tab(id: 1, name: "likes", color: .gold, image: "sparkles"),
        Tab(id: 2, name: "messages", color: .electricPink, image: "message.fill"),
        Tab(id: 3, name: "profile", color: .electricPink, image: "person.fill")
    ]
}

struct ContentView: View {
    let tabs = Tab.tabs
    @State private var selectedTab: Int = 0
    @State var isLoading: Bool = true
    
    var body: some View {
        Group {
            if isLoading {
                LoadingView()
            } else {
                VStack {
                    HStack {
                        Spacer()
                        ForEach(tabs)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
