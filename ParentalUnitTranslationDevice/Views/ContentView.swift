//
//  ContentView.swift
//  ParentalUnitTranslationDevice
//
//  Created by Franka Keil on 2021-12-11.
//

import SwiftUI

struct ContentView: View {

// MARK: Stored properties
@State var providedShortForm: String = ""


// MARK: Computed properties


    var translation: String {
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
                    TextField("short form",
                              text: $providedShortForm,
                              prompt: Text("Enter short form . . ."))
                    
                    
                    Text("Translation:")
                        .font(.title)
                        .underline()
                    
                    // Output: translation
                    Text(translation)
                        .bold()
                        .padding(.vertical, 10)
                        
                        
                        
                    
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
