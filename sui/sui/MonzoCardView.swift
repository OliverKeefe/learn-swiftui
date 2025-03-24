import SwiftUI

struct MonzoCardView: View {
    private var balance: Double = 25.40
    @State private var showPopup = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.red)
                .frame(height: 180)
                .shadow(radius: 5)
            
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Text("monzo")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 30)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("£\(String(format: "%.2f", balance))")
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top, 30)
                        
                        Text("Balance")
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.8))
                    }
                }
                
                Text("6942 0954 2832 9991")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Button(action: {
                        print("Add Money Tapped")
                    }) {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(Color.white)
                            Text("Add Money")
                                .foregroundColor(Color.white)
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 8)
                        .background(Color.white.opacity(0.2))
                        .clipShape(Capsule())
                        .padding(.bottom, 30)
                    }
                    
                    Button(action: {
                        print("Card Tapped")
                        showPopup = true
                            }) {
                                HStack {
                                    Image(systemName: "creditcard.fill")
                                        .foregroundColor(Color.white)
                                    Text("Card")
                                        .foregroundColor(Color.white)
                                }
                                .padding(.horizontal, 15)
                                .padding(.vertical, 8)
                                .background(Color.white.opacity(0.2))
                                .clipShape(Capsule())
                                .padding(.bottom, 30)
                            }
                            .sheet(isPresented: $showPopup) {
                                PopupView()
                            }
                            
                    Spacer()
                    
                    Button(action: {
                        print("More tapped")
                    }) {
                        Image(systemName: "ellipsis")
                            .padding(10)
                            .foregroundColor(Color.white)
                            .background(Color.white.opacity(0.2))
                            .clipShape(Circle())
                            .padding(.bottom, 30)
                    }
                    Spacer()
                }

            }
            .padding(20)
        }
        .frame(height: 180)
        .padding()
    }
}

#Preview {
    MonzoCardView()
}
