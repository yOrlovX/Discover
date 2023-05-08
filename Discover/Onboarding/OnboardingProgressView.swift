//
//  OnboardingProgressView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 08.05.2023.
//

import SwiftUI

struct OnboardingProgressView: View {
  @Binding var newValue : Int
  var value: Int = 1
  
  var body: some View {
    HStack(spacing: 5) {
      ForEach(0..<3) { index in
        Rectangle()
          .frame(width: 15, height: 6)
          .foregroundColor(index < self.newValue ? .white : .gray)
          .cornerRadius(10)
      }
    }
  }
}
