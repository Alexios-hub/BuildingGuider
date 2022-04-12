//
//  RoomData.swift
//  HCI_AS1
//
//  Created by 刘洪博 on 2022/4/10.
//

import SwiftUI

struct RoomData{
    let name:String
    let description:String
    let peoples:[people]
    let img:String
    

}
let AI = RoomData(name: "机器智能实验室", description: "在计算机视觉、自然语言处理、语音识别等领域深入研究，促进人类科技进步", peoples: [
Shen,Liang,Zhang],img: "img2")
let software = RoomData(name: "软件工程实验室", description: "研究最新的软件开发技术，用软件改变世界", peoples: [
Fan,Yuan],img: "img4")
let embed = RoomData(name: "嵌入式实验室", description: "软硬通吃，研究嵌入式领域相关技术", peoples: [
Zhu,Gao],img: "img3")
let net = RoomData(name: "网络智能实验室", description: "研究最新网络技术，提升人们联网体验", peoples: [
Zhangg,Tang],img: "img1")
let sroom = RoomData(name: "学工办", description: "同济大学软件学院学生工作处", peoples: [Ge], img: "sroom")

let FunFacts = ["同济大学嘉定校区济事楼位于上海市嘉定区曹安公路4800号","2011年10月10日，在嘉定校区国际会议中心底楼大厅，隆重举行了道路楼宇景观命名仪式，正式命名了校区纵横两条主干道分别为“中央大道、同嘉大道，校前区4幢楼宇分别为“同心楼”、“同德楼”、“济人楼”和“济事楼”","同济大学软件学院位于济事楼，同时还有中德学院坐落于此","同济大学软件学院成立于2001年9月20日，是国家示范性软件学院，设有国际软件测评委员会中国分会","同济大学软件学院设有4个教研室，分别为软件工程理论与平台教研室、领域软件系统教研室、软件工程技术与管理教研室、媒体艺术与科学教研室"]







