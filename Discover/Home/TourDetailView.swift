//
//  TourDetailView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 12.05.2023.
//

import SwiftUI

struct TourDetailView: View {
  
  let columns: [GridItem] = [
    GridItem(.adaptive(minimum: 143)),GridItem(.adaptive(minimum: 143)),GridItem(.adaptive(minimum: 200))
  ]
    var body: some View {
      VStack {
        ScrollView(.vertical) {
          mainPhotoSection
          aboutSection
          infoSection
          mapSection
          photoGridSection
        }
      }
      .ignoresSafeArea(edges: .top)
    }
}

extension TourDetailView {
  private var mainPhotoSection: some View {
    Image("2")
      .resizable()
      .scaledToFill()
      .overlay {
        VStack(alignment: .leading, spacing: 6) {
          Spacer()
          Text("Koh Rong Samloem")
            .font(.system(size: 20, weight: .semibold))
          HStack(spacing: 15) {
            ForEach(0..<5) { item in
              Image(systemName: "star.fill")
                .frame(width: 13, height: 12)
                .foregroundColor(item < 3 ? .yellow : .gray)
            }
            Text("100 reviews")
              .font(.system(size: 12, weight: .regular))
            Rectangle()
              .frame(width: 100, height: 42)
              .background(.ultraThinMaterial)
              .cornerRadius(15)
              .overlay {
                Text("+100 Photos")
                  .font(.system(size: 12, weight: .regular))
                  .padding(12)
              }
          }
          .padding(.bottom, 12)
        }
      }
  }
  
  private var aboutSection: some View {
    VStack(alignment: .leading, spacing: 10) {
      Text("About")
        .font(.system(size: 20, weight: .semibold))
      
      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Convallis condimentum morbi non egestas enim amet sagittis. Proin sed aliquet rhoncus ut pellentesque ullamcorper sit eget ac.Sit nisi, cras amet varius eget egestas pellentesque. Cursus gravida euismod non...")
        .font(.system(size: 12, weight: .regular))
      
      Rectangle()
        .frame(height: 1)
        .foregroundColor(.gray)
        .padding(.top, 10)
        .opacity(0.6)
    }
    .padding(.horizontal, 26)
  }
  
  private var infoSection: some View {
    VStack(alignment: .leading) {
      Text("What is included")
        .font(.system(size: 20, weight: .semibold))
      
      HStack {
        HStack(spacing: 10) {
          Image(systemName: "bus")
            .resizable()
            .scaledToFit()
            .frame(width: 21, height: 21)
            .padding(.leading, 15)
            .padding(.top, 15)
            .padding(.bottom, 15)
          
          VStack(alignment: .leading) {
            Text("Bus")
              .font(.system(size: 14, weight: .regular))
            
            Text("Transportaion")
              .font(.system(size: 12, weight: .regular))
              .opacity(0.6)
              .padding(.trailing, 15)
          }
        }
        .overlay(RoundedRectangle(cornerRadius: 15)
          .stroke(.gray.opacity(0.6), lineWidth: 1))
        
        HStack(spacing: 10) {
          Image("time")
            .resizable()
            .scaledToFit()
            .frame(width: 21, height: 21)
            .padding(.leading, 15)
            .padding(.top, 15)
            .padding(.bottom, 15)
          
          VStack(alignment: .leading) {
            Text("2 day 1 night")
              .font(.system(size: 14, weight: .regular))
              .padding(.trailing, 15)
            
            Text("Duration")
              .font(.system(size: 12, weight: .regular))
              .opacity(0.6)
              .padding(.trailing, 15)
          }
        }
        .overlay(RoundedRectangle(cornerRadius: 15)
          .stroke(.gray.opacity(0.6), lineWidth: 1))
      }
      
      HStack(spacing: 10) {
        Image("QRcode")
          .resizable()
          .scaledToFit()
          .frame(width: 21, height: 21)
          .padding(.leading, 15)
          .padding(.top, 15)
          .padding(.bottom, 15)
        
        VStack(alignment: .leading) {
          Text("TAC200812695")
            .font(.system(size: 14, weight: .regular))
            .padding(.trailing, 15)
          
          Text("Product code")
            .font(.system(size: 12, weight: .regular))
            .opacity(0.6)
            .padding(.trailing, 15)
        }
      }
      .overlay(RoundedRectangle(cornerRadius: 15)
        .stroke(.gray.opacity(0.6), lineWidth: 1))
      
      Rectangle()
        .frame(height: 1)
        .foregroundColor(.gray)
        .padding(.top, 10)
        .opacity(0.6)
    }
    .padding(.horizontal, 26)
  }
  
  private var mapSection: some View {
    VStack(alignment: .leading) {
      Text("Where will you stay")
        .font(.system(size: 20, weight: .semibold))
      
      Text("View the location on map")
        .font(.system(size: 12, weight: .regular))
        .opacity(0.6)
      
      Image("map")
        .resizable()
        .scaledToFill()
      
      Text("Angkor Mails Hotel")
        .font(.system(size: 12, weight: .regular))
        .opacity(0.6)
      
      Text("NR6, Krong Siem Reap Cambodia")
        .font(.system(size: 12, weight: .regular))
        .opacity(0.6)
      
      Rectangle()
        .frame(height: 1)
        .foregroundColor(.gray)
        .padding(.top, 10)
        .opacity(0.6)
    }
    .padding(.horizontal, 26)
  }
  
  private var photoGridSection: some View {
    LazyVGrid(columns: columns, spacing: 10) {
      ForEach(1..<4) { data in
        Image(data.description)
          .resizable()
          .scaledToFit()
      }
    }
  }
}

struct TourDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TourDetailView()
    }
}
