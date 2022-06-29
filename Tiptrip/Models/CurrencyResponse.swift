//
//  CurrencyResponse.swift
//  Tiptrip
//
//  Created by jonathan P on 29/06/2022.
//

import Foundation

struct CurrencyResponse: Decodable {
  let base: String
  let date: String
  let rates: Rates

}

struct Rates: Decodable {
  var euro:String = "EUR"
  var dollar:String = "USD"
  var yen:String = "YEN"
  var rouble:String = "ROUBLE"
  var roupies:String = "ROUPIES"
}
//["$", "€", "£", "¥", "₽", "₨"]
//{
//  "base": USD,
//  "date": "2018-02-13",
//  "rates": {
//     "CAD": 1.260046,
//     "CHF": 0.933058,
//     "EUR": 0.806942,
//     "GBP": 0.719154,
//     [170 world currencies]
//  }
