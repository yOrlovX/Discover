//
//  ButtonModifier.swift
//  Discover
//
//  Created by Yaroslav Orlov on 08.05.2023.
//

import SwiftUI

struct PrimaryBlueButton: ViewModifier {
  func body(content: Content) -> some View {
    content
      .foregroundColor(.white)
      .frame(maxWidth: .infinity)
      .frame(height: 52)
      .background(Colors.primaryBlue)
      .cornerRadius(15)
      .padding(.horizontal, 20)
  }
}

struct PrimaryLoginButton: ViewModifier {
  func body(content: Content) -> some View {
    content
      .foregroundColor(.white)
      .frame(maxWidth: UIScreen.main.bounds.width - 51)
      .frame(height: 52)
      .background(Colors.primaryBlue)
      .cornerRadius(15)
      
  }
}
