//
//  PersonView.swift
//  HCI_AS1
//
//  Created by 刘洪博 on 2022/4/11.
//

import SwiftUI

struct PersonView: View {
    let person:people
    
    var body: some View {
        VStack{
            VStack{
            Image(person.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150, alignment: .top)
                .cornerRadius(75)
            Text(person.name)
                .fontWeight(.bold)
                .font(.title2)
            Text(person.position)
                .font(.title3)
                .foregroundColor(.secondary)
                
            
            Divider()
            }
            Text("Papers").bold().font(.largeTitle)
            
            ForEach(person.works.indices,id:\.self){
                i in
                Text(person.works[i]).padding(10)
            }
        }.offset(x:0,y:-20)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Liang)
    }
}
