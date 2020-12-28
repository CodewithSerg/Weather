//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Sergey Antoniuk on 12/27/20.
//

import Foundation

class WeatherViewModel: ObservableObject {
    
    @Published private var weather: Weather?
    
    var temperature: Double {
        guard let temp =  weather?.temp else {
            return 0.0
        }
        return temp
    }
    
    func fetchWeather(city: String) {
        
        WeatherService().getWeather(city: city) { result in
            switch result {
            
            case.success(let weather):
                
                DispatchQueue.main.async {
                    self.weather = weather
                }
                
            case .failure(_ ):
                print("error")
            }
        
        }
    }
}
