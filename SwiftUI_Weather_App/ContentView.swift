//
//  ContentView.swift
//  SwiftUI_Weather_App
//
//  Created by Jin Sakai Shin on 25/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white],
                          startPoint: .topLeading,
                          endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Munich, BAV")
                .font(.system(size: 33, weight: .medium,))
                .foregroundColor(.white)
                .padding()
                
                VStack(spacing: 1) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("27°")
                        .font(.system(size: 70, weight: .medium,))
                        .foregroundColor(.white)
                }
                

                
                HStack(spacing: 20) {
                    
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 25)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 20)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind.snow",
                                   temperature: 16)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temperature: 15)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "moon.stars.fill",
                                   temperature: 10)
                    
                }
                .padding(.top, 30)
                
                Spacer()
                
                VStack {
                    Button("Change Time of Day") {}
                        .buttonStyle(.borderedProminent)
                        .tint(.white)
                        .foregroundColor(.blue)
                        .font(.system(size: 23, weight: .bold))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}


struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    
    var body: some View {
        VStack(alignment: .center) {
            Text(dayOfWeek)
                .font(.system(size: 23, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(temperature)°")
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(.white)
        }
    }
}
