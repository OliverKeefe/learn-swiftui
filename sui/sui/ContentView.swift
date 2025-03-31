//
//  ContentView.swift
//  sui
//
//  Created by Oliver Keefe on 21/03/2025.
//

import SwiftUI

enum Destination: Hashable {
    case otherView
}

struct ContentView: View {
    @State private var path: [Destination] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                MonzoCardView(path: $path)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.white)
            .padding(.top)
            .navigationDestination(for: Destination.self) { destination in
                            switch destination {
                            case .otherView:
                                OtherView()
                            }
                        }
                        
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
