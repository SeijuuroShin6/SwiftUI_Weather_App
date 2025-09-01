//
//  ContentView.swift
//  SwiftUI_Weather_App
//
//  Created by Jin Sakai Shin on 25/08/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                CityTextView(city: "Munich, BAV")
                
                VStack(spacing: 1) {
                    MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 27)
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
                    Button {
                        isNight.toggle()
                    } label: {
                        WeatherButton(title: "Change Time Of Day", textColor: .blue, backgroundColor: .white)
                    }
                }
                Spacer()
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

struct BackgroundView: View {

    @Binding var isNight: Bool

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                                   isNight ? .gray : Color("LightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea(edges:.all)
    }
}

struct CityTextView: View {
    
    var city: String
    
    var body: some View {
        Text(city)
        .font(.system(size: 33, weight: .medium,))
        .foregroundColor(.white)
        .padding()
    }
}


struct MainWeatherView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 1) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°C")
                .font(.system(size: 70, weight: .medium,))
                .foregroundColor(.white)
        }
        
    }
}
