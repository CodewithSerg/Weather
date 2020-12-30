//
//  ContentView.swift
//  Weather
//
//  Created by Sergey Antoniuk on 12/27/20.
//

import SwiftUI



struct ContentView: View {
    
    @ObservedObject private var weatherVM = WeatherViewModel()
    @State private var city: String = ""
    
    
    var body: some View {
        VStack{
            TextField("Search", text: self.$city, onEditingChanged: {_ in}, onCommit: {self.weatherVM.fetchWeather(city: self.city)}).textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            
            switch self.weatherVM.loadingState {
            case .loading: Text("Loading...")
            case .success: WeatherView(temperature: self.weatherVM.temperature, humidity: self.weatherVM.humidity)
            case .failed: Text("\(weatherVM.message)")
            case .none: Text("")
            }
           
            Spacer()
            
            
        }.padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherView : View {
    
    let temperature: Double
    let humidity: Double
    
    var body: some View {
        VStack{
        Text("\(temperature)")
            .font(.title3)
            .foregroundColor(.white)
        Text("\(humidity)")
                .foregroundColor(.white)
                .opacity(0.7)
        }
        .padding()
        .frame(width: 300, height: 150)
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
}
