//
//  ContentView.swift
//  Weather
//
//  Created by Sergey Antoniuk on 12/27/20.
//

import SwiftUI



struct ContentView: View {
    
    @ObservedObject private var weatherVM = WeatherViewModel()
    
    var body: some View {
        Text("\(self.weatherVM.temperature)")
            
            .onAppear(){
                self.weatherVM.fetchWeather()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
