//
//  MainView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 09.05.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
      //MARK: Default tab items color
      TabView {
        Text("Home")
          .tabItem {
            Label("Home", systemImage: "house")
          }
        Text("Wishlist")
          .tabItem {
            Label("Wishlist", systemImage: "heart")
          }
        Text("Notification")
          .tabItem {
            Label("Notification", systemImage: "bell")
          }
        Text("Profile")
          .tabItem {
            Label("Profile", systemImage: "person")
          }
      }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
