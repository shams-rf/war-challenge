//
//  ContentView.swift
//  Shared
//
//  Created by Shamsuddin Refaei on 08/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    // declare properties
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Spacer()

            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    Image(playerCard)
                    
                    Spacer()
                    
                    Image(cpuCard)
                    
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    
                    // update cards
                    playerCard = "card11"
                    cpuCard = "card12"
                    
                    //update score
                    playerScore += 1
                    cpuScore += 1
                    
                }, label: {
                    
                    Image("dealbutton")
                    
                })
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("Player")
                            .foregroundColor(.white)
                            .padding(.bottom)
                            .font(.title2)
                        
                        Text(String(playerScore))
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("CPU")
                            .foregroundColor(.white)
                            .padding(.bottom)
                            .font(.title2)
                        
                        Text(String(cpuScore))
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
