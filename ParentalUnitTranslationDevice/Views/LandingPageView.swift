//
//  LandingPageView.swift
//  ParentalUnitTranslationDevice
//
//  Created by Franka Keil on 2021-12-11.
//

import SwiftUI

struct LandingPageView: View {
    var body: some View {
        List{
            NavigationLink(destination: ContentView()){
                Text("Short form translation (text field)")
            }
            
            NavigationLink(destination: TranslatorPickerView()){
                Text("Short form translation (picker)")
            }
            
        }
        .padding()
        .navigationTitle("Text Translator")
    }
}

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandingPageView()
        }
    }
}
