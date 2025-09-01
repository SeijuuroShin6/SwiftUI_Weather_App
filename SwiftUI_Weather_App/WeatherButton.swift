//
//  WeatherButton.swift
//  SwiftUI_Weather_App
//
//  Created by Seijuuro Jin Sakai Shin on 01/09/2025.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color

    var body: some View {
        Text(title)
          .frame(width: 280, height: 50)
          .foregroundColor(textColor)
          .background(backgroundColor)
          .font(.system(size: 21, weight: .bold))
          .cornerRadius(10)
      }
    }

