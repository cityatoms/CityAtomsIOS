//
//  CityAtomClient.swift
//  CityAtoms
//
//  Created by Feras Alnatsheh on 4/3/20.
//  Copyright © 2020 City Atoms. All rights reserved.
//

import Foundation
 
struct CityAtomsService {
    enum RequestMethod: String {
        case get = "GET"
        case post = "POST"
        case put = "PUT"
        case delete = "DELETE"
    }
    
    enum CityAtomsHeader: String {
        case authToken = "x-auth-token"
        case cityAtomsAuthToken = "x-cityatom-auth-token"
    }
    
    enum EndPoint {
        static let baseUrl = URL(string: "http://ec2-3-12-160-215.us-east-2.compute.amazonaws.com:3000/api/v1/")!
        
        case user
        case dataPoints
        
        var url: URL {
            switch self {
            case .user:
                return EndPoint.baseUrl.appendingPathComponent("/me/users")
            case .dataPoints:
                return EndPoint.baseUrl.appendingPathComponent("/me/")
            }
        }
    }
    
    func createUser(user: User, completion: @escaping (Result<Void, Error>) -> Void) {
        var request = URLRequest(url: EndPoint.user.url)
        request.httpMethod = RequestMethod.post.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("auth-token", forHTTPHeaderField: CityAtomsHeader.cityAtomsAuthToken.rawValue)
        request.httpBody = try? JSONEncoder().encode(user)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
             if let error = error {
                completion(.failure(error))
                return
            }
            completion(.success(()))
        }.resume()
    }
    
    func sendDataPoints(dataPoints: [DataPoint], instanceID: InstanceID, completion: @escaping (Result<Void, Error>) -> Void) {
        var request = URLRequest(url: EndPoint.dataPoints.url)
        request.httpMethod = RequestMethod.post.rawValue
        request.httpBody = try? JSONEncoder().encode(dataPoints)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("auth-token", forHTTPHeaderField: CityAtomsHeader.cityAtomsAuthToken.rawValue)
        request.addValue(instanceID, forHTTPHeaderField: CityAtomsHeader.authToken.rawValue)
        
        URLSession.shared.dataTask(with: request) { data, request, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            completion(.success(()))
        }.resume()
    }
}
