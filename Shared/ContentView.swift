//
//  ContentView.swift
//  Shared
//
//  Created by Shamsuddin Refaei on 08/03/2022.
//

import SwiftUI

struct ContentView: View {
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
                    
                    Image("card3")
                    
                    Spacer()
                    
                    Image("card4")
                    
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    
                    print("Card dealt!")
                    
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
                        
                        Text("0")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("CPU")
                            .foregroundColor(.white)
                            .padding(.bottom)
                            .font(.title2)
                        
                        Text("0")
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
