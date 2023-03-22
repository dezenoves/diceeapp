//
//  ContentView.swift
//  Dicee
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 6
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    VStack {
                        Image(systemName: "die.face.1.fill")
                            .resizable()
                            .foregroundColor(.orange)
                            .frame(width: 30, height: 30)
                        
                        Image(systemName: "die.face.2.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                    }
                    
                    VStack {
                        Image(systemName: "die.face.3.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                        
                        Image(systemName: "die.face.4.fill")
                            .resizable()
                            .foregroundColor(.orange)
                            .frame(width: 30, height: 30)
                    }
                    
                    VStack {
                        Image(systemName: "die.face.5.fill")
                            .resizable()
                            .foregroundColor(.orange)
                            .frame(width: 30, height: 30)
                        
                        Image(systemName: "die.face.6.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                    }
                }
                
                Text("Casino")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding(.top, 25)
                
                Text("D i c e e")
                    .font(.title2)
                    .foregroundColor(.orange)
                
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                
                Button(
                    action: {
                        self.leftDiceNumber = Int.random(in: 1...6)
                        self.rightDiceNumber = Int.random(in: 1...6)
                    },
                    label: {
                        Text("Rool")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal, 25)
                            .padding(.vertical, 10)
                    }
                )
                .background(.orange)
                .clipShape(Capsule())
                .padding(.top, 100)
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image(systemName: "die.face.\(n)")
            .resizable()
            .foregroundColor(.white)
            .frame(width: 100, height: 100)
            .padding(.top, 100)
            .padding(.horizontal, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
