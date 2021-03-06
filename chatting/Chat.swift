//
//  Chat.swift
//  chatting
//
//  Created by 곽보선 on 2021/07/26.
//

import Foundation
import SwiftUI

struct Chat: View {
    @ObservedObject var model = ChatModel()
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                //MARK:- ScrollView
                CustomScrollView(scrollToEnd: true) {
                    LazyVStack {
                        ForEach(0..<model.arrayOfMessages.count, id:\.self) {
                            index in
                            ChatBubble(position: model.arrayOfPositions[index], color: model.arrayOfPositions[index] == BubblePosition.right ?.blue : .gray) {
                                Text(model.arrayOfMessages[index])
                            }
                        }
                    }
                }.padding(.top)
                //MARK:- text editor
                HStack {
                    ZStack {
                        TextEditor(text: $model.text)
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                            .foregroundColor(.gray)
                    }.frame(height: 50)
                    
                    Button("send") {
                        
                        if model.text != "" {
                            model.position = model.position == BubblePosition.right ? BubblePosition.left : BubblePosition.right
                            model.arrayOfPositions.append(model.position)
                            model.arrayOfMessages.append(model.text)
                            model.text = ""
                        }
                    }
                }.padding()
            }
        }
    }
}
