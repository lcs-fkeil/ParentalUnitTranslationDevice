//
//  ContentView.swift
//  ParentalUnitTranslationDevice
//
//  Created by Franka Keil on 2021-12-11.
//

import SwiftUI

// MARK: Stored properties
var shortForm: String = ""


// MARK: Computed properties
struct ContentView: View {
    var body: some View {
        ScrollView {
            HStack {
                VStack (alignment: .leading){
                    Text("Short form:")
                        .font(.title)
                        .underline()
                    
                    // user input
                    Text(shortForm)
                        .bold()
                        .padding(10)
                    
                    
                    Text("Translation:")
                        .font(.title)
                        .underline()
                    
                }
                Spacer()
            }
        }
        .navigationTitle("Short form translation")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}
