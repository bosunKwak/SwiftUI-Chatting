//
//  chattinglog.swift
//  chatting
//
//  Created by 곽보선 on 2021/07/26.
////
//
import Foundation

struct ChattLog: Codable, Identifiable{
    var id:UUID = UUID()
    let FriendName:String
    let LastMsg:String
    var headCount:Int
    var IconName:BtnIcon    //무음설정, 등과 같은 시스템 아이콘
}

struct BtnIcon: Codable{
    var msg:String
    var isNotification:Bool
    var isPin:Bool
    var isChat:Bool
    
    init( _ msg:String="None", _ notification:Bool, _ pin:Bool, _ Chat:Bool){
        self.msg = msg
        self.isNotification = notification
        self.isPin=pin
        self.isChat = Chat
    }
}

struct ChatLogView: View{
    let widthText:CGFloat = 300
    let ImageWH:CGFloat = 40
    
    var ImgName:String
    var FriendName:String
    var LastMSg:String
    var headCount:Int
    var IconName:BtnIcon
}
