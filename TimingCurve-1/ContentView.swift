//
//  ContentView.swift
//  TimingCurve-1
//
//  Created by Seyfo on 22.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var show = false // True panel will be shown
    
    var body: some View {
        
        ZStack{
            Color(.lightGray).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20){
                Text("Custom Timing Curve")
                Text("Renk a Bike").foregroundColor(.white).fontWeight(.bold)
                
                Spacer()
                Button("Send"){
                    withAnimation(.timingCurve(0, 0, 0, 1.5,duration: 0.8)){
                        self.show = true // Panel is shown
                        
                    }
                }.foregroundColor(Color(.systemPink))
                
                
            }.font(.title)
                
            if show {
                VStack{
                    Text("Do you want to rent a bike?").font(.title)
                    Image("bic")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 310)
                    HStack{
                        // HStack 1.Button (Send)
                        Button("Yes, Send Now"){
                            withAnimation(.timingCurve(0, -0.3, 1, 0,duration: 0.6)){
                                self.show = false // Panel Gizlensin
                            }
                        }.padding()
                            .foregroundColor(Color(.white))
                            .background(Capsule().fill(Color(.systemPink)))
                        //2.Button
                        Button("Cancel"){
                            self.show = false // Panel Gizlensin
                        }.foregroundColor(Color(.systemPink))
                    }//HStack End
                    
                }// VStack End
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color(.gray)).shadow(radius: 8))
                .transition(AnyTransition.slide)
                .zIndex(1)
                
                
                
            }
        
            
        }
    }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


