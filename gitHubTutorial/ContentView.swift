//
//  ContentView.swift
//  gitHubTutorial
//
//  Created by Ayushree Beura on 7/12/24.
//

// Log in page (When you first open the app)
import SwiftUI

struct ContentView: View {
    
    @State private var TextTitle = "What is your name?"
    @State private var name = ""
    @State private var showAlert = false
    @State private var showNav = false
    
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            HStack {
                
                Text("Unwind")
                    .font(.system(size: 70, weight: .black, design: .serif))
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
            }
        }
        VStack {
            
            NavigationStack {
                VStack{
                    
                    Text(TextTitle)
                        .font(.system(size: 30, weight: .black, design: .serif))
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                    
                    TextField("", text: $name)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .border(Color.gray, width: 1)
                    
                    Button("Submit Name")
                    {
                        TextTitle = "Welcome, \(name)!✨"
                        showNav = true
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.pink)
                }
                
                if showNav{
                    NavigationLink(destination: nextPage()) {
                        Text("➡️")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(showNav)
                    }
                    
                    .padding()
                }
            }
            
        }
    }
}
    #Preview {
        ContentView()
    }
