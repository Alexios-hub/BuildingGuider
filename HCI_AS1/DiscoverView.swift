//
//  DiscoverView.swift
//  HCI_AS1
//
//  Created by 刘洪博 on 2022/4/9.
//

import SwiftUI

let rooms = [software,AI,embed,net]
let peoples = [Fan,Yuan,Zhu,Gao,Shen,Liang,Zhang,Zhangg,Tang,Ge]

class ViewModel:ObservableObject{
    @Published var input_search = ""
    var filtered_rooms:[RoomData] {
        input_search.isEmpty ? rooms : rooms.filter({
            room in room.name.lowercased().contains(input_search.lowercased())
        })
    }
    var filterd_peoples:[people]{
        input_search.isEmpty ? peoples : peoples.filter({
            person in person.name.lowercased().contains(input_search.lowercased())
        })
    }
    
    
}


struct DiscoverView: View {
    
    @State var choices = Category.room

    @ObservedObject var vm = ViewModel()


    // enum类型需要被迭代时,必须符合CaseIterable协议
    enum Category:String,CaseIterable{
        case room = "实验室"
        case person = "人员"
    }


    var body: some View {
        NavigationView{
        VStack{



            Picker("select", selection: $choices) {
                // Category遵循CaseIterable协议后,可使用allCases属性迭代
                ForEach(DiscoverView.Category.allCases, id: \.self) {choice in
                    Text(choice.rawValue).tag(choice)
                }
            }
                // 这里是水平展示所有可选项的.segment,
            .pickerStyle(SegmentedPickerStyle()).padding()

            if(choices == Category.person){
            List{

                ForEach(vm.filterd_peoples.indices,id:\.self){
                    i in
                    NavigationLink(destination: PersonView(person: vm.filterd_peoples[i])){
                        HStack{
                        Image(vm.filterd_peoples[i].photo)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                            Text(vm.filterd_peoples[i].name).font(.title3)
                        }
                    }
                }
            }
            }
                else{
                    List{
                        ForEach(vm.filtered_rooms.indices,id:\.self){
                            i in
                            NavigationLink(destination: RoomDetail(Room: vm.filtered_rooms[i])){
                                HStack{
                                    Image(vm.filtered_rooms[i].img)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 80, height: 80)
                                     
                            Text(vm.filtered_rooms[i].name)
                            }
                            }

                    }
                    }
                }}.searchable(text: $vm.input_search)




//                    List{
//                        ForEach(rooms.indices,id: \.self){
//                            i in
//                                Text(rooms[i].name)
//
//                        }
//                    }



        }
    }
}
//
//  ContentView.swift
//  LearnCombine
//
//  Created by wangxuncai on 2021/8/18
//

//import SwiftUI
//
//
//class ViewModel:ObservableObject{
//
//    @Published var allItems:[ItemModel] = datas
//    @Published var searchedItem:String = ""
//
//     var filtedItems:[ItemModel]{
//         searchedItem.isEmpty ? allItems : allItems.filter({ str in
//            str.name.lowercased().contains(searchedItem.lowercased())
//        })
//    }
//
//}
//struct DiscoverView:View{
//    @ObservedObject var vm = ViewModel()
//    var body: some View{
//        ZStack {
//                 LinearGradient(gradient: Gradient(colors: [Color.purple,Color.blue]), startPoint: .bottom, endPoint: .top)
//                .edgesIgnoringSafeArea(.all)
//            NavigationView {
//                List{
//                    ForEach(vm.filtedItems){item in
//                        NavigationLink(item.name, destination:  item.detailView)
//
//                    }
//                }.searchable(text: $vm.searchedItem)
//                    .navigationTitle(Text("Searchable"))
//            }
//        }
//
//
//
//
//    }
//}
//
//struct DetailView:View,Identifiable{
//    var id = UUID()
//    var detail:String
//    var body: some View{
//        ZStack{
//            LinearGradient(gradient: Gradient(colors: [Color.purple,Color.blue]), startPoint: .bottom, endPoint: .top)
//                .edgesIgnoringSafeArea(.all)
//            Text(detail)
//        }
//
//    }
//}
//
//struct ItemModel:Identifiable{
//    var id = UUID()
//    var name:String
//    var detailView:DetailView
//}
//
//let datas:[ItemModel] = [
//
//ItemModel(name: "wangxuncai", detailView:DetailView(detail: "A teacher")),
//ItemModel(name: "Lucy", detailView:DetailView(detail: "A worker")),
//
//ItemModel(name: "Mike", detailView:DetailView(detail: "A seller")),
//
//ItemModel(name: "Michale", detailView:DetailView(detail: "A driver")),
//
//
//]

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
       DiscoverView()
    }
}
