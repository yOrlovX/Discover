//
//  HomeView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 10.05.2023.
//

import SwiftUI

struct HomeView: View {
  @State private var searchText: String = ""
  
    var body: some View {
      VStack {
        exploreSection
        Spacer()
      }
    }
}

extension HomeView {
  private var exploreSection: some View {
    ZStack {
      Image("2")
        .resizable()
        .scaledToFit()
        .shadow(radius: 10)
      VStack(alignment: .leading) {
        Text("Explore the world today")
          .padding(.horizontal, 26)
          .foregroundColor(.white)
          .font(.system(size: 37, weight: .bold))
          .shadow(radius: 10)
        
        Text("Discover - take your travel to next level")
          .padding(.horizontal, 26)
          .foregroundColor(.white)
          .font(.system(size: 12, weight: .regular))
          .shadow(radius: 10)
        
        SearchBarView(searchText: $searchText)
        
        
          
      }
      
      ScrollView(.horizontal) {
        HStack(spacing: 10) {
          ForEach(0..<8) { _ in
            Rectangle()
              .cornerRadius(15)
              .frame(maxWidth: 131)
              .frame(maxHeight: 52)
              .foregroundColor(.white)
              .overlay {
                HStack {
                  Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                  Text("Cat")
                }
              }
            
          }
        }
        .padding(.horizontal ,26)
      }
      .background(.red)
    }
    .edgesIgnoringSafeArea(.top)
  }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
