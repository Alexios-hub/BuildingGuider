//
//  ContentView.swift
//  HCI_AS1
//
//  Created by 刘洪博 on 2022/4/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView().tabItem{
                Label("首页",
                systemImage: "house.fill")
            }
            DiscoverView().tabItem{
                Label("发现",
                systemImage: "magnifyingglass")
            }
            AboutView().tabItem{
                Label("资讯",
                systemImage: "bubble.left")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
