//
//  ContentView.swift
//  ParentalUnitTranslationDevice
//
//  Created by Franka Keil on 2021-12-11.
//

import SwiftUI

// MARK: Stored properties
var providedShortForm: String = ""


// MARK: Computed properties

struct ContentView: View {
    
    var feedback: String {
        switch providedShortForm {
            
        case "CU":
            return "see you"
        case ":-)":
            return "I'm happy"
        case ":-(":
            return "I'm unhappy"
        case ";-)":
            return "wink"
        case ":-P":
            return "stick out my tongue"
        case "(~.~)":
            return "sleepy"
        case "TA":
            return "totally awesome"
        case "CCC":
            return "Canadian Cheese Champion"
        case "CUZ":
            return "because"
        case "TY":
            return "thank you"
        case "TW":
            return "you're welcome"
        case "TTYL":
            return "talk to you later"
        default:
            return "Cannot be translated."
            
        }
    }
    var body: some View {
        ScrollView {
            HStack {
                VStack (alignment: .leading){
                    Text("Short form:")
                        .font(.title)
                        .underline()
                    
                    // user input
                    Text(providedShortForm)
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
