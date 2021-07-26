//
//  ChatModel.swift
//  chatting
//
//  Created by 곽보선 on 2021/07/26.
//

import Foundation

//마지막 말풍선의 위치를 변수에 저장하여 왼쪽과 오른쪽 풍선위치를 번갈아 사용
class ChatModel: ObservableObject{
    var text = ""
    @Published var arrayOfMessages : [String] = []
    @Published var arrayOfPositions : [BubblePosition] = []
    @Published var position = BubblePosition.right
}
