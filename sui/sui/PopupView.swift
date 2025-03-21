//
//  PopupView.swift
//  sui
//
//  Created by Oliver Keefe on 21/03/2025.
//

import SwiftUI

struct PopupView: View {
    var body: some View {
        VStack {
            Text("You clicked on a thing.")
                .font(.title)
                .padding()
            
            Button("Close"){
                dismiss()
                
            }
            .buttonStyle(.borderedProminent)
        }
    }
    
    @Environment(\.dismiss) private var dismiss
}

#Preview {
    PopupView()
}
