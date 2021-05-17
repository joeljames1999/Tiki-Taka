//
//  FixtureAPI.swift
//  Final Year
//
//  Created by Joel James on 17/05/2021.
//  Copyright © 2021 Joel James. All rights reserved.
//

import Foundation
class FixtureAPICall {
    
    func LeagueCall (){
let headers = [
    "x-rapidapi-key": "SIGN-UP-FOR-KEY",
    "x-rapidapi-host": "api-football-v1.p.rapidapi.com"
]

let request = NSMutableURLRequest(url: NSURL(string: "https://api-football-v1.p.rapidapi.com/v3/leagues")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
request.httpMethod = "GET"
request.allHTTPHeaderFields = headers

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
    if (error != nil) {
        print(error as Any)
    } else {
        let httpResponse = response as? HTTPURLResponse
        print(httpResponse as Any)
    }
})

dataTask.resume()
    }
}
