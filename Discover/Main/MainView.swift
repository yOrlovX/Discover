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
        HomeView()
          .tabItem {
            Label("Home", systemImage: "house")
          }
        WishlistView()
          .tabItem {
            Label("Wishlist", systemImage: "heart")
          }
        NotificationView()
          .tabItem {
            Label("Notification", systemImage: "bell")
          }
        ProfileView()
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
