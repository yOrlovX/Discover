//
//  WishlistView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 09.05.2023.
//

import SwiftUI

struct WishlistView: View {
  let wishListData = WishlistCellModel.mockData
  
    var body: some View {
      VStack {
        Text("Wishlist")
          .font(.system(size: 25, weight: .semibold))
        List(wishListData) { data in
          WishlistCell(data: data)
        }
      }
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}
