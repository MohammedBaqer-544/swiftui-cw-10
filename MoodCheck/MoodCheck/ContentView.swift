//
//  ContentView.swift
//  MoodCheck
//
//  Created by Mohammed on 1/4/21.
//

import SwiftUI

enum mood {
    case Happy, Sad, Meh, Fine
}

func feeling (mood: mood) -> String {
    switch mood {
    
    case .Happy:
        return "Happy"
        
    case .Sad:
        return "Sad"

    case .Meh:
        return "Meh"

    case .Fine:
        return "Fine"

    }
}

struct ContentView: View {
    
    @State var Feel: String = "Nothing"
    
    var body: some View {
        VStack {
            HStack {
        Text("MoodCheck")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .padding()

                Spacer()
            }
            
            Spacer()
            
            Text("I feel \(Feel)")
                .font(.title)
                .fontWeight(.black)
                .padding()
            
            HStack {
                Text("😁")
                    .onTapGesture {
                        Feel = feeling(mood: .Happy)
                    }
                
                Text("😞")
                    .onTapGesture {
                        Feel = feeling(mood: .Sad)
                    }
                
                Text("🙁")
                    .onTapGesture {
                        Feel = feeling(mood: .Meh)
                    }
                
                Text("😇")
                    .onTapGesture {
                        Feel = feeling(mood: .Fine)
                    }
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
