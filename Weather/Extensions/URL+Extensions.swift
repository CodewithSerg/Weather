//
//  URL+Extensions.swift
//  Weather
//
//  Created by Sergey Antoniuk on 12/27/20.
//

import Foundation

extension URL {
    
    static func urlForWeather(_ city: String)-> URL? {
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=6276a3e8ea47208fa9616b3212f3c494&units=metric") else {
            return nil
        }
        return url
    }
}
