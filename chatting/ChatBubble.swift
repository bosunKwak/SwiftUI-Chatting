//
//  ChatBubble.swift
//  chatting
//
//  Created by 곽보선 on 2021/07/26.
//

import Foundation
import SwiftUI

struct ChatBubble<Content>: View where Content: View{
    let position: BubblePosition
    let color : Color
    let content: () -> Content
    
    init(position: BubblePosition, color: Color, @ViewBuilder content: @escaping () -> Content){
        self.content = content
        self.color = color
        self.position = position
    }
    
    var body: some View{
        HStack(spacing: 0){
            content()
                .padding(.all, 15)
                .foregroundColor(Color .white)
                .background(color)
                .clipShape(RoundedRectangle(cornerRadius: 18))
                .overlay(
                    Image(systemName: "arrowtriangle.left.fill")
                        .foregroundColor(color)
                        .rotationEffect(Angle(degrees: position == .left ? -50 : -130))
                        .offset(x: position == .left ? -5 : 5)
                    ,alignment:position == .left ? .bottomLeading : .bottomTrailing)
        }
        .padding(position == .left ? .leading : .trailing , 15)
        .padding(position == .right ? .leading : .trailing, 60)
        .frame(width: UIScreen.main.bounds.width, alignment: position == .left ? .leading : .trailing)
    }
}

