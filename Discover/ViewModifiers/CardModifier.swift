//
//  CardModifier.swift
//  Discover
//
//  Created by Yaroslav Orlov on 08.05.2023.
//

import SwiftUI

struct CardModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(maxWidth: UIScreen.main.bounds.width - 40)
      .frame(maxHeight: 316)
      .background(.white)
      .cornerRadius(15)
  }
}
