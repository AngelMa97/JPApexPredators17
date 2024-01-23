//
//  ContentView.swift
//  JPApexPredators17
//
//  Created by Angel Martínez Escobar on 23/01/24.
//

import SwiftUI

struct ContentView: View {
    let predatorsRepo = Predators()
    
    var body: some View {
        List(predatorsRepo.apexPredators) { predator in
            HStack {
                Image(predator.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .shadow(color: .white, radius: 1)
                
                VStack(alignment: .leading) {
                    Text(predator.name)
                        .fontWeight(.bold)
                    
                    Text(predator.type.rawValue.capitalized)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 13)
                        .padding(.vertical, 5)
                        .background(predator.type.background)
                        .clipShape(.capsule)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
