//
//  ContentView.swift
//  myGrocery
//
//  Created by macbook on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var mygrocery = ["pepsi", "kitkat", "chips", "oreo", "milk"]
    @State var items = ""
    var body: some View {
        
        VStack{
            List(mygrocery, id: \.self) {
                grocery in
                
                HStack{
                    Image(grocery)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 82, height: 75)
                    Text(grocery)
                }
            }
                HStack{
                    Image(systemName: "plus")
                        .clipShape(Capsule())
                        .frame(width: 20, height: 20)
                        .background(.blue)
                        .onTapGesture {
                            mygrocery.append(items)
                        }
                    TextField("Enter the Item", text: $items)
                    HStack{
                        Image(systemName: "minus")
                            .clipShape(Capsule())
                            .foregroundColor(.white)
                            .frame(width: 20, height: 20)
                            .background(.blue)
                            .onTapGesture {
                            mygrocery.remove(at:0)
                                }
                    HStack{
                        Image("Part1")
                            .resizable()
                            .clipShape(Capsule())
                            .foregroundColor(.white)
                            .frame(width: 20, height: 20)
                            .background(.blue)
                            .onTapGesture {
                                let randomItem =
                                mygrocery.randomElement() ?? "water"
                                mygrocery.append(randomItem)
                            }
                    }
                            
                        }
                    }
                }
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
