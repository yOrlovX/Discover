//
//  WishlistCell.swift
//  Discover
//
//  Created by Yaroslav Orlov on 09.05.2023.
//

import SwiftUI

struct WishlistCell: View {
    
  let data: WishlistCellModel
  
    var body: some View {
      HStack(spacing: 15) {
        Image(data.imageName)
          .resizable()
          .scaledToFill()
          .frame(width: 122, height: 122)
          .cornerRadius(15)
        VStack(alignment: .leading, spacing: 4) {
          Text(data.tourName)
            .font(.system(size: 14, weight: .semibold))
          HStack(spacing: 8) {
            ForEach(0..<5) { item in
              Image(systemName: "star.fill")
                .frame(width: 13, height: 12)
                .foregroundColor(item < 3 ? .yellow : .gray)
            }
            Text("100 reviews")
              .font(.system(size: 12, weight: .regular))
          }
          
          Text(data.placeName)
            .font(.system(size: 10, weight: .regular))
          
          Text(data.price)
            .font(.system(size: 12, weight: .regular))
          
          Text(data.daysCount)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .font(.system(size: 12, weight: .regular))
            .overlay(
              RoundedRectangle(cornerRadius: 3)
                .stroke(.gray.opacity(0.6), lineWidth: 1)
            )
        }
      }
    }
}

struct WishlistCellModel: Identifiable {
  let id = UUID()
  let imageName: String
  let tourName: String
  let placeName: String
  let price: String
  let daysCount: String
  
  static let mockData: [WishlistCellModel] = [
    WishlistCellModel(imageName: "1", tourName: "Camping 1 night at chongkranroy", placeName: "Krong Siem Reap", price: "from $25/person", daysCount: "2 day 1 night"),
    WishlistCellModel(imageName: "2", tourName: "Camping 1 night at chongkranroy", placeName: "Krong Siem Reap", price: "from $25/person", daysCount: "2 day 1 night"),
    WishlistCellModel(imageName: "3", tourName: "Camping 1 night at chongkranroy", placeName: "Krong Siem Reap", price: "from $25/person", daysCount: "2 day 1 night")
  ]
  
}

