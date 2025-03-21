//
//  ContentView.swift
//  sui
//
//  Created by Oliver Keefe on 21/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                MonzoCardView()

            }
            .background(Color.black.ignoresSafeArea())
            
        }
        
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1.0) {
        self.init(
                .sRGB,
                red: Double((hex >> 16) & 0xFF) / 255,
                green: Double((hex >> 8) & 0xFF) / 255,
                blue: Double(hex & 0xFF) / 255,
                opacity: alpha
        )
    }
}

#Preview {
    ContentView()
}
