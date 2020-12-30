//
//  Double+Extensions.swift
//  Weather
//
//  Created by Sergey Antoniuk on 12/30/20.
//

import Foundation

extension Double {
    func toFahrenheit() -> Double{
        //current temperatura is always in Kelvin
        let temperature = Measurement<UnitTemperature>(value: self, unit: .kelvin)
        let convertrdTemperature = temperature.converted(to: .fahrenheit)
        return convertrdTemperature.value
    }
    
    func toCelsius() -> Double {
        //current temperatura is always in Kelvin
        let temperature = Measurement<UnitTemperature>(value: self, unit: .kelvin)
        let convertrdTemperature = temperature.converted(to: .celsius)
        return convertrdTemperature.value
    }
}
