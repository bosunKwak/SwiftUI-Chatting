//
//  ContentView.swift
//  chatting
//
//  Created by 곽보선 on 2021/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack{
                AppTitle1
            }
        }
        
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            VStack{
                Chat()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private extension ContentView{
    var AppTitle1: some View{
        
        VStack{
            Text("개집사")
                .font(.title)
                .fontWeight(.medium)
                .padding()
            
        }
        .frame(maxHeight: 150, alignment: .center)
    }
}
