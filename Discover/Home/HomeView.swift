//
//  HomeView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 10.05.2023.
//

import SwiftUI

struct HomeView: View {
  @State private var searchText: String = ""
  let popularPlaceData = PopularPlaceCellModel.mockData
  
  var body: some View {
    VStack {
      ScrollView(.vertical, showsIndicators: false) {
        exploreSection
        popularPlaceSection
      }
    }
    .edgesIgnoringSafeArea(.top)
  }
}

extension HomeView {
  private var exploreSection: some View {
    ZStack {
      Image("2")
        .resizable()
        .scaledToFill()
        .shadow(radius: 10)
      VStack(alignment: .leading, spacing: 20) {
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
        
        categorySection
      }
    }
  }
  
  private var popularPlaceSection: some View {
    VStack(alignment: .leading) {
      Text("Popular Package in asia")
        .font(.system(size: 18, weight: .semibold))
        .padding(.horizontal, 26)
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 15) {
          ForEach(popularPlaceData) { datum in
            PopularPlaceCell(model: datum)
          }
        }
        .padding(.horizontal, 26)
      }
    }
  }
  
  private var categorySection: some View {
    ScrollView(.horizontal) {
      HStack(spacing: 10) {
        ForEach(0..<3) { _ in
          HStack {
            Image(systemName: "heart.fill")
              .resizable()
              .scaledToFit()
              .frame(width: 17, height: 17)
              .foregroundColor(.black)
            Text("Category")
              .font(.system(size: 12, weight: .regular))
              .foregroundColor(.black)
          }
          .padding()
          .background(.white)
          .cornerRadius(15)
        }
      }
      .padding(.horizontal ,26)
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
