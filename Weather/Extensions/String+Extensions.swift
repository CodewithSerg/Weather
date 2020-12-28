//
//  String+Extensions.swift
//  Weather
//
//  Created by Sergey Antoniuk on 12/29/20.
//

import Foundation

extension String {
    func escaped ()-> String?{
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
    }
    
}
