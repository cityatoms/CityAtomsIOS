//
//  RegistrationView.swift
//  city-atoms-ios
//
//  Created by Ahad Islam on 3/24/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var selection = 0
    @State private var state = 0

    let countries = ["Venezuela", "Water", "Something", "USA"]
    let states = ["Whatever", "OK"]

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Email", text: $email)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .keyboardType(.emailAddress)
                    }

                    Section {
                        SecureField("Password", text: $password)
                        SecureField("Confirm Password", text: $confirmPassword)
                    }

                    Section {
                        Picker("Countries", selection: $selection) {
                            ForEach(0..<countries.count) {
                                Text(self.countries[$0]).tag($0)
                            }
                        }

                        if countries[selection] == "USA" {
                            Picker("States", selection: $state) {
                                ForEach(0..<states.count) {
                                    Text(self.states[$0]).tag($0)
                                }
                            }
                        }
                    }
                }

                RoundedButton().padding(.top, 12)
                    .navigationBarTitle("Registration", displayMode: .inline)
            }
        }
    }

    func placeOrder() {
        print("OK")
    }
}

struct RoundedButton: View {
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Spacer()
                Text("Save")
                    .font(.headline)
                    .foregroundColor(Color.white)
                Spacer()
            }
        })
            .padding(.vertical, 10.0)
            .background(Color.red)
            .cornerRadius(20)
            .padding(.horizontal, 50)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
