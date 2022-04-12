//
//  RoomDetail.swift
//  HCI_AS1
//
//  Created by 刘洪博 on 2022/4/10.
//

import SwiftUI

struct RoomDetail: View {
    let room:RoomData
    init(Room:RoomData){
        self.room=Room
 
    }
    var body: some View {
        VStack(alignment: .leading){
            NavigationLink(destination: RoomScene()){
            Image(room.img)
                .resizable()
            }
            Spacer()
            
                VStack(alignment: .leading){
                    Text(room.name).font(.title)
                        .fontWeight(.bold)
                    HStack( spacing: 10){
                    ForEach(room.peoples.indices,id:\.self){
                        i in
                        NavigationLink(destination: PersonView(person: room.peoples[i])){
                        Text(room.peoples[i].name).font(.subheadline).foregroundColor(.secondary)
                        }
                    }
                    }
                }
            Divider()
            Text("简介").font(.title2)
                .fontWeight(.bold)
            Text(room.description)
            
            
            
        }
    }
}

struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetail(Room: AI)
    }
}
