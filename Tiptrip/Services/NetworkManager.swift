//
//  NetworkManager.swift
//  Tiptrip
//
//  Created by noje on 11/05/2022.
//

import Foundation
import Combine

class NetworkManager < T : Decodable > {

  func getData() {
    var body:String = .init()
    let urlString:String = .init()
    let url = URL(string: urlString)
    let session = URLSession.shared
    let dataTask = session.dataTask(with: url!) { (data, response, error) in
      //check for errors
      if error == nil && data != nil {
        //parse JSON
        let decoder = JSONDecoder()
        do {
          var _ = try decoder.decode(T.self, from: data!)
        } catch {
          debugPrint("Error in JSON parsing !")
        }
      }
    }
    //Make the API Call
    dataTask.resume()
  }

  func getData2() -> AnyPublisher <T> {
    var body:String = .init()
    let urlString:String = .init()
    let url = URL(string: urlString)
    let session = URLSession.shared
    let dataTask = session.dataTask(with: url!) { (data, response, error) in
      //check for errors
      if error == nil && data != nil {
        //parse JSON
        let decoder = JSONDecoder()
        do {
          var _ = try decoder.decode(T.self, from: data!)
        } catch {
          debugPrint("Error in JSON parsing !")
        }
      }
    }
    //Make the API Call
    dataTask.resume()
  }
}

//static func createRequest() -> URLRequest {
//  var request = URLRequest(url: url)
//  request.httpMethod = "POST"
//
//  //   var body = model.body
//  request.httpBody = body.data(using: .utf8)
//
//  return request
//}
