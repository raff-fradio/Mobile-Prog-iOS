//
//  APIRequest.swift
//  MobileProg-iOS
//
//  Created by Raff on 13/01/22.
//

import Foundation

func get(url : String) {
    let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {data, response, error in
        guard let data = data, error == nil else {
            return
        }
        print(data);
    })
    task.resume();
}

func post(url: String, body : [String: AnyHashable]) {
    guard let url = URL(string: url) else {
        print("Something is wrong");
        return
    }
    
    var request = URLRequest(url: url)
    
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    
    let task = URLSession.shared.dataTask(with: request, completionHandler: {data, response, error in
        guard let data = data, error == nil else {
            print("Something is wrong2")
            return
        }
        print(data)
    })
    task.resume()
}
