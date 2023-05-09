//
//  NotificationView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 09.05.2023.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
      VStack(alignment: .leading, spacing: 20) {
        Text("Today")
          .padding(.horizontal, 25)
        HStack(spacing: 11) {
          Circle()
            .foregroundColor(.purple)
            .frame(width: 56, height: 56)
          VStack(alignment: .leading, spacing: 5) {
            Text("New Recommended place Just for you")
              .font(.system(size: 14, weight: .regular))
            
            Text("1 day ago")
              .font(.system(size: 14, weight: .regular))
              .opacity(0.6)
          }
          Text("View")
            .foregroundColor(.white)
            .padding(.vertical, 5)
            .padding(.horizontal, 16)
            .background(.blue)
            .cornerRadius(3)
        }
        .padding(.horizontal, 25)
        HStack(spacing: 11) {
          Circle()
            .foregroundColor(.purple)
            .frame(width: 56, height: 56)
          VStack(alignment: .leading, spacing: 5) {
            Text("New Recommended place Just for you")
              .font(.system(size: 14, weight: .regular))
            
            Text("1 day ago")
              .font(.system(size: 14, weight: .regular))
              .opacity(0.6)
          }
          Text("View")
            .foregroundColor(.white)
            .padding(.vertical, 5)
            .padding(.horizontal, 16)
            .background(.blue)
            .cornerRadius(3)
        }
        .padding(.horizontal, 25)
        
        HStack(spacing: 11) {
          Circle()
            .foregroundColor(.purple)
            .frame(width: 56, height: 56)
          VStack(alignment: .leading, spacing: 5) {
            Text("New Recommended place Just for you")
              .font(.system(size: 14, weight: .regular))
            
            Text("1 day ago")
              .font(.system(size: 14, weight: .regular))
              .opacity(0.6)
          }
          Text("View")
            .foregroundColor(.white)
            .padding(.vertical, 5)
            .padding(.horizontal, 16)
            .background(.blue)
            .cornerRadius(3)
        }
        .padding(.horizontal, 25)
        Spacer()
      }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
