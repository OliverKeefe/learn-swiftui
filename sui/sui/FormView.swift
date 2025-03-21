//
//  FormView.swift
//  sui
//
//  Created by Oliver Keefe on 21/03/2025.
//

import SwiftUI

struct FormView: View {
    @State private var firstname: String = ""
    @State private var surname: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Fill out a form")) {
                TextField("Firstname", text: $firstname)
                    .padding()
                TextField("Surname", text: $surname)
                    .padding()
                
                Button("Submit") {
                    print("Submitted: \(firstname), \(surname)")
                }
                
            }
        }
        .navigationTitle("Form Example")
    }
}

#Preview {
    NavigationStack {
        FormView()
    }
}
