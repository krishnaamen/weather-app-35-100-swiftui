//
//  ContentView.swift
//  weather app
//
//  Created by Macbook on 20/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isDark = false
    var body: some View {
        ZStack{
            BackgroudView(isDark: $isDark)
            VStack{
               CityVeiw(cityName: "Copenhagen, DK")
                
                ImageAndTemp(imgName: "snow", temperature: "-3˚C")
                HStack(spacing:10){
                    PerDayView(dayOfWeek: "TUE",imageName: "snow",temperature: "-2˚")
                    PerDayView(dayOfWeek: "WED",imageName: "cloud.heavyrain.fill",temperature: "4˚")
                    PerDayView(dayOfWeek: "THU",imageName: "sun.max.fill",temperature: "10˚")
                    PerDayView(dayOfWeek: "FRI",imageName: "wind.snow",temperature: "4˚")
                    PerDayView(dayOfWeek: "SAT",imageName: "cloud.fog.fill",temperature: "4˚")
                }
                
                Spacer()
                Button{
                    isDark.toggle()
                } label: {
                    ButtonLabel(labelText: "Toggle Day Night", bgColor: .white, fgColor: .blue)
                    
                }
                Spacer()
                          }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PerDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: String
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50, alignment: .center)
            Text(temperature)
                .font(.system(size: 30, weight: .medium, design: .default))
                .foregroundColor(.white)
            
        }
    }
}

struct BackgroudView: View {
    @Binding var isDark: Bool
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [isDark ? .black : .blue, isDark ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityVeiw: View {
    var cityName: String
    var body: some View{
        Text(cityName)
         .font(.system(size: 32, weight: .medium, design: .default))
         .foregroundColor(.white)
         .padding()    }
}

struct ImageAndTemp: View{
    var imgName: String
    var temperature: String
    var body: some View{
        VStack(spacing: 10){
            Image(systemName: imgName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                
            Text(temperature)
                .font(.system(size: 80, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding(.bottom,30)
            
        }
        
    }
}
