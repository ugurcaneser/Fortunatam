//
//  ContentView.swift
//  Fortunatam
//
//  Created by Uğurcan Eser on 1.01.2025.
//

import SwiftUI

struct ContentView: View {
    // Array to store fortunes
    private let fortunes = [
        "Important changes will happen in your life soon. A new job opportunity may knock on your door. Be open-minded during this period and seize the opportunities. Spending more time with your loved ones will be good for you.",
        "You will receive news you have been waiting for a long time. You are in a lucky period regarding financial matters. It may be the right time for your investments. Unexpected developments may occur in your love life.",
        "You are in a period where you need to pay attention to your health. Regular exercise and balanced nutrition will be important. You may establish new partnerships in your work life. You will receive good news regarding your family.",
        "A close friend will share an important secret with you. Your social circle will expand, and you will form new friendships. A successful period awaits you in your educational life. You may plan travels.",
        "A period of rise in your career is beginning. The people around you will support you. You will experience a passionate period in your love life. It is advisable to be cautious regarding financial matters."
    ]
    
    // State variable to hold the selected fortune
    @State private var currentFortune = "Click the button to see your fortune..."
    
    var body: some View {
        VStack(spacing: 30) {
            // Title
            Text("🔮 Your Daily Fortune")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            // Fortune text
            Text(currentFortune)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.purple.opacity(0.1))
                .cornerRadius(12)
                .padding(.horizontal)
                .foregroundColor(.black)
            
            // Fortune button
            Button(action: getNewFortune) {
                Text("Check My Fortune")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(12)
                    .padding(.horizontal)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
    
    // Function to select a new fortune
    private func getNewFortune() {
        // Select a random fortune
        if let randomFortune = fortunes.randomElement() {
            withAnimation {
                currentFortune = randomFortune
            }
        }
    }
}

#Preview {
    ContentView()
}
