//
//  WeatherResponse.swift
//  Weather
//
//  Created by Sergey Antoniuk on 12/27/20.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
