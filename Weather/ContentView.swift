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
            Text("\(self.weatherVM.temperature)")
            Spacer()
            Text(weatherVM.message)
            
        }.padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
