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
                    NavigationLink(destination: nextPage()) {
                        Text("➡️")
                        
                            .navigationTitle("Home")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                    }
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
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.pink)
                }
                .padding()
            }
        }
        
    }
}
