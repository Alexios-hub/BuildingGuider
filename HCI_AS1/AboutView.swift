//
//  AboutView.swift
//  HCI_AS1
//
//  Created by 刘洪博 on 2022/4/9.
//

import SwiftUI

struct AboutView: View {
   @State var random_fact = FunFacts.randomElement()!
    var body: some View {
        VStack{
        Text("点击按钮，即刻查看与济事楼有关的资讯！").font(.largeTitle)
            .fontWeight(.bold)
            Text(random_fact)
                .frame(minHeight:280)
        
        Button(action:{
          random_fact = FunFacts.randomElement()!
        })
        {
            Image(systemName: "eye")
            Text("更换讯息")
        }.frame(width: 120, height: 40)
            .background(RoundedRectangle(cornerRadius: 15).stroke(Color.red,lineWidth: 1))
            .foregroundColor(.red)
        }
    }
    
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
