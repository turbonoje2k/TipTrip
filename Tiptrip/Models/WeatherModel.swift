//
//  WeatherModel.swift
//  Tiptrip
//
//  Created by jonathan P on 11/05/2022.
//

import Foundation

class WeatherModel {
  // API Key à placer dans dossier secret
  let token = "14e872fac1b9bbf044a4687056a58472"
  let apiAdress = "https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}"
  
// array + API to convert town in LonLat code key : town: def : LonLat
  let townList = ["Shanghai", "Delhi", "Tokyo-Yokohama", "São Paulo", "Mexico", "Dacca", "Le Caire", "Beijing", "Bombay", "Osaka", "New York", "Karachi", "Chongqing", "Istanbul", "Buenos Aires", "Calcutta", "Kinshasa", "Lagos", "Manila", "Tianjin", "Canton", "Rio de Janeiro", "Lahore", "Bangalore", "Moscou", "Shenzhen", "Bogota", "Jakarta", "Lima", "Paris", "Bangkok", "Hyderabad", "Séoul", "Chengdu", "Téhéran", "Nanjing", "Londres", "Hô Chi Minh", "Luanda", "Wuhan", "Xi'an", "Hong Kong", "Bagdad", "Hanoï", "Madrid", "Santiago", "Ahmedabad", "Riyad", "Singapour", "Saint-Pétersbourg", "Abidjan", "Rangoun", "Sydney"]

//  switch (condition) {
//          case 200, 201, 230 :
//              return "thunder\(completion)"
//          case 202...229, 231...299:
//              return "thunder\(type)"
//          case 300, 301, 310, 311 :
//              return "drizzle\(completion)"
//
//          case 302...309, 312...399:
//              return "drizzle\(type)"
//          case 500, 501, 505...599 :
//              return "rain\(completion)"
//          case 502...504, 522, 531:
//              return "rain\(type)"
//          case 60
//  case 600, 601, 603...612, 614...620, 623...699 :
//              return "snow\(completion)"
//          case 602, 613, 621, 622:
//              return "snow\(type)"
//          case 700...799 :
//              return "fog\(type)"
//          case 800 :
//              return "clear\(completion)"
//          case 801...802 :
//              return "cloud\(completion)"
//          case 803...804 :
//              return "cloud\(type)"
//          default :
//              return "clear\(completion)"
//          }
}
