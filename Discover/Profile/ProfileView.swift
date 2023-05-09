//
//  ProfileView.swift
//  Discover
//
//  Created by Yaroslav Orlov on 09.05.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
      VStack(spacing: 10) {
        userSection
        bookingSection
        accountSection
        legalSection
      }
    }
}

extension ProfileView {
  private var userSection: some View {
    HStack(spacing: 24) {
      Image(systemName: "person.fill")
        .resizable()
        .scaledToFit()
        .frame(width: 68, height: 68)
      
      VStack(alignment: .leading, spacing: 10) {
        Text("John Doe")
          .font(.system(size: 18, weight: .semibold))
        
        Text("JMars, Solar System")
          .font(.system(size: 12, weight: .regular))
          .opacity(0.6)
      }
      Spacer()
    }
    .padding(.horizontal, 26)
  }
  
  private var bookingSection: some View {
    VStack(spacing: 30) {
      Divider()
      HStack {
        Text("Booking")
          .font(.system(size: 15, weight: .regular))
        Spacer()
        Image(systemName: "chevron.right")
          .font(.subheadline)
      }
      HStack {
        Text("Wishlist")
          .font(.system(size: 15, weight: .regular))
        Spacer()
        Image(systemName: "chevron.right")
          .font(.subheadline)
      }
      Divider()
    }
    .padding(.horizontal, 26)
  }
  
  private var accountSection: some View {
    VStack(alignment: .leading, spacing: 15) {
      Text("Account Setting")
        .font(.system(size: 18, weight: .semibold))
      
      HStack {
        Image(systemName: "person.circle.fill")
          .padding(.leading)
        Text("Edit profile")
          .font(.system(size: 15, weight: .regular))
        Spacer()
        Image(systemName: "chevron.right")
          .font(.subheadline)
          .padding()
      }
      .overlay(
        RoundedRectangle(cornerRadius: 15)
          .stroke(.gray.opacity(0.6), lineWidth: 1)
      )
      HStack {
        Image(systemName: "signature")
          .padding(.leading)
        Text("Change language")
          .font(.system(size: 15, weight: .regular))
        Spacer()
        Image(systemName: "chevron.right")
          .font(.subheadline)
          .padding()
      }
      .overlay(
        RoundedRectangle(cornerRadius: 15)
          .stroke(.gray.opacity(0.6), lineWidth: 1)
      )
      HStack {
        Image(systemName: "moon.fill")
          .padding(.leading)
        Text("Color mode")
          .font(.system(size: 15, weight: .regular))
        Spacer()
        Image(systemName: "chevron.right")
          .font(.subheadline)
          .padding()
      }
      .overlay(
        RoundedRectangle(cornerRadius: 15)
          .stroke(.gray.opacity(0.6), lineWidth: 1)
      )
    }
    .padding(.horizontal, 26)
  }
  
  private var legalSection: some View {
    VStack(alignment: .leading, spacing: 15) {
      Text("Derleng Legal")
        .font(.system(size: 18, weight: .semibold))
      
      HStack {
        Image(systemName: "list.bullet.rectangle")
          .padding(.leading)
        Text("Terms and Condition")
          .font(.system(size: 15, weight: .regular))
        
        Image(systemName: "arrow.up.forward.app")
          .padding()
        Spacer()
      }
      .overlay(
        RoundedRectangle(cornerRadius: 15)
          .stroke(.gray.opacity(0.6), lineWidth: 1)
      )
      HStack {
        Image(systemName: "shield.lefthalf.filled")
          .padding(.leading)
        Text("Privacy policy")
          .font(.system(size: 15, weight: .regular))
        
        Image(systemName: "arrow.up.forward.app")
          .padding()
        Spacer()
      }
      .overlay(
        RoundedRectangle(cornerRadius: 15)
          .stroke(.gray.opacity(0.6), lineWidth: 1)
      )
      
      HStack {
        Spacer()
        Text("Logout")
          .font(.system(size: 15, weight: .medium))
          .underline()
          .padding()
        Spacer()
      }
      .overlay(
        RoundedRectangle(cornerRadius: 15)
          .stroke(.gray.opacity(0.6), lineWidth: 1)
      )
      
      HStack {
        Spacer()
        Text("Version 3.0.0")
          .font(.system(size: 12, weight: .regular))
          .opacity(0.6)
        Spacer()
      }
    }
    .padding(.horizontal, 26)
  }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
