//
//  ContentView.swift
//  card-wars
//
//  Created by Shubham Prashar on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var card1 = "card2"
    @State var card2 = "card3"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    func deal() {
        
        var randomInt1 = Int.random(in: 2...14)
        var randomInt2 = Int.random(in: 2...14)
    
        card1 = "card" + String(randomInt1)
        card2 = "card" + String(randomInt2)
        
        if randomInt1 > randomInt2 {
            playerScore += 1
        } else if randomInt2 > randomInt1 {
            cpuScore += 1
        }
        
    }
    
    var body: some View {
        
            ZStack{
                Image("background-plain")
                    .resizable()
                    .ignoresSafeArea()
                
                
                VStack{
                
                    Spacer()
                    Image("logo")
                    Spacer()
                    
                    Spacer()
                    HStack{
                        
                        Spacer()
                        
                        Image(card1)
//                            .padding()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        
                        Image(card2)
//                            .padding()
                            .shadow(radius: 10)
                        
                        Spacer()
                    }
                    
                    Spacer()
//                    .padding(40)
                    
                    
                    Button {
                        deal()
                    } label: {
                        Image("button")
                    }

                    
//                    Image("button")
                    
                    Spacer()
                    
                    
                    HStack{
                        
                        Spacer()
                        VStack{
                            Text("Player")
                                .font(.title)
                                .fontWeight(.regular)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 10.0)
                                
                            Text(String(playerScore))
                                .font(.title)
                                .fontWeight(.regular)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        
                        VStack{
                            Text("CPU")
                                .font(.title)
                                .fontWeight(.regular)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 10.0)
                            Text(String(cpuScore))
                                .font(.title)
                                .fontWeight(.regular)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                    }
                }
            }
    }
}

#Preview {
    ContentView()
}
