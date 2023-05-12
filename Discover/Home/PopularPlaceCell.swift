//
//  PopularPlaceCell.swift
//  Discover
//
//  Created by Yaroslav Orlov on 12.05.2023.
//

import SwiftUI

struct PopularPlaceCell: View {
  
  let model: PopularPlaceCellModel
  @State private var isFavorite: Bool = false
  
  var body: some View {
    VStack {
      VStack(alignment: .leading, spacing: 5) {
        Image(model.image)
          .resizable()
          .scaledToFill()
          .frame(maxHeight: 236)
          .frame(maxWidth: 230)
          .cornerRadius(15, corners: [.topLeft, .topRight])
          .overlay {
            VStack {
              HStack {
                Spacer()
                Circle()
                  .frame(width: 36, height: 36)
                  .foregroundColor(.white)
                  .padding(.top, 16)
                  .padding(.trailing, 16)
                  .onTapGesture {
                    isFavorite.toggle()
                  }
                  .overlay {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                      .foregroundColor(isFavorite ? .red : .black)
                      .padding(.top, 16)
                      .padding(.trailing, 16)  
                  }
              }
              Spacer()
            }
          }
        Text(model.placeName)
          .font(.system(size: 16, weight: .semibold))
          .padding(.leading, 10)
          .padding(.top, 10)
        HStack(spacing: 10) {
          ForEach(0..<5) { item in
            Image(systemName: "star.fill")
              .frame(width: 13, height: 12)
              .foregroundColor(item < 3 ? .yellow : .gray)
          }
          Text("100 reviews")
            .font(.system(size: 12, weight: .regular))
        }
        .padding(.leading, 10)
        Text(model.description)
          .font(.system(size: 12, weight: .regular))
          .opacity(0.6)
          .padding(.leading, 10)
          .padding(.bottom, 10)
      }
    }
    .overlay(RoundedRectangle(cornerRadius: 15)
      .stroke(.gray.opacity(0.6), lineWidth: 1))
  }
}

struct PopularPlaceCellModel : Identifiable {
  
  let id = UUID()
  let image: String
  let placeName: String
  let description: String
  
  static let mockData: [PopularPlaceCellModel] = [
    PopularPlaceCellModel(image: "1", placeName: "Koh Rong Samloem", description: "Lorem ipsum dolor sit amet..."),
    PopularPlaceCellModel(image: "2", placeName: "Koh Rong Samloem", description: "Lorem ipsum dolor sit amet..."),
    PopularPlaceCellModel(image: "3", placeName: "Koh Rong Samloem", description: "Lorem ipsum dolor sit amet..."),
    PopularPlaceCellModel(image: "4", placeName: "Koh Rong Samloem", description: "Lorem ipsum dolor sit amet..."),
    PopularPlaceCellModel(image: "5", placeName: "Koh Rong Samloem", description: "Lorem ipsum dolor sit amet..."),
    PopularPlaceCellModel(image: "6", placeName: "Koh Rong Samloem", description: "Lorem ipsum dolor sit amet...")
  ]
}

struct PopularPlaceCell_Previews: PreviewProvider {
  
  static let previewData = PopularPlaceCellModel(image: "6", placeName: "Koh Rong Samloem", description: "Lorem ipsum dolor sit amet...")
  
  static var previews: some View {
    PopularPlaceCell(model: previewData)
  }
}
