//
//  HomeView.swift
//  HCI_AS1
//
//  Created by 刘洪博 on 2022/4/9.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
        VStack{
         
        Text("济事楼四楼导览图").font(.largeTitle)
                .fontWeight(.bold).offset(x:0,y:-100)
  
            Button(action:{
                
            }){
                NavigationLink(destination: RoomDetail(Room: software)){
            Text("软件工程实验室").font(.subheadline).frame(width: 150, height: 30).background(.cyan)
                    .foregroundColor(.black)
            }
            }.offset(x:0,y:46)
        
            
            Button(action:{
                
            }){
                NavigationLink(destination: RoomDetail(Room: embed)){
            Text("嵌入式实验室").font(.subheadline).frame(width: 150, height: 30).background(.cyan)
                    .foregroundColor(.black)
                }}.offset(x:0,y:88)
            HStack( spacing: 0){
                
                Text("走廊").frame(width: 50, height: 300).background(.red).offset(x:80,y:0)
                
                Text("走廊").frame(width: 200, height: 50).background(.red).offset(x: 80, y: -125)
                Button(action:{
                    
                })
                {
                    NavigationLink(destination: RoomDetail(Room: AI)){
                Text("机\n器\n智\n能\n实\n验\n室").font(.subheadline).frame(width: 50, height: 150).background(.cyan)
                        .foregroundColor(.black)
                }
                }.offset(x:-120,y:20)
                Button(action:{
                    
                })
                {
                    NavigationLink(destination: RoomDetail(Room: net)){
                Text("网\n络\n智\n能\n实\n验\n室").font(.subheadline).frame(width: 50, height: 150).background(.cyan)
                        .foregroundColor(.black)
                }
                }.offset(x:-20,y:20)
                Button(action:{
                    
                })
                {
                    NavigationLink(destination: RoomDetail(Room: sroom)){
                Text("学公办").font(.subheadline).frame(width: 60, height: 30).background(.cyan)
                        .foregroundColor(.black)
                }
                }.offset(x:-80,y:130)
                Text("走廊").frame(width: 50, height: 300).background(.red).offset(x:-80,y:0)
        }
        }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
