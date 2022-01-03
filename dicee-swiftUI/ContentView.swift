//
//  ContentView.swift
//  dicee-swiftUI
//
//  Created by Sarosh Tahir on 03/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var diceNo1 = 1
    @State var diceNo2 = 2
    
    var body: some View {
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: diceNo2)
                    DiceView(n: diceNo1)
                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    self.diceNo1 = Int.random(in: 1...6)
                    self.diceNo2 = Int.random(in: 1...6)
                }) {
                    Text("Roll").font(.system(size: 50).weight(.heavy)).foregroundColor(.white).padding(.horizontal)
                }.background(Color.red)
            }
        }
        
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit).padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

