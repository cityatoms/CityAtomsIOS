//
//  AuthenticationSession.swift
//  Firebase-Demo
//
//  Created by Alex Paul on 2/28/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import Foundation
import FirebaseAuth

class AuthSession {
  private init() {}
  static let shared = AuthSession()

  public func createNewUser(_ email: String, password: String,
                            completion: @escaping (Result<AuthDataResult, Error>) -> Void) {
    Auth.auth().createUser(withEmail: email, password: password) { (authDataResult, error) in
      if let error = error {
        completion(.failure(error))
      } else if let authDataResult = authDataResult {
        completion(.success(authDataResult))
      }
    }
  }

  public func signExistingUser(_ email: String, password: String,
                               completion: @escaping (Result<AuthDataResult, Error>) -> Void) {
    Auth.auth().signIn(withEmail: email, password: password) { (authDataResult, error) in
      if let error = error {
        completion(.failure(error))
      } else if let authDataResult = authDataResult {
        completion(.success(authDataResult))
      }
    }
  }
}
