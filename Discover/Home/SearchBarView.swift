//
//  SearchBarView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 10.05.2023.
//

import SwiftUI

struct SearchBarView: View {
  @Binding var searchText : String
    var body: some View {
      HStack {
        TextField("Search destination", text: $searchText)
          .padding()
          .overlay {
            HStack {
              Spacer()
              Image(systemName: "magnifyingglass")
                .opacity(0.6)
                .padding()
            }
          }
      }
      .frame(maxHeight: 52)
      .frame(maxWidth: .infinity)
      .background(.white)
      .cornerRadius(15)
      .padding(.horizontal, 22)
    }
}

//struct SearchBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBarView()
//    }
//}
