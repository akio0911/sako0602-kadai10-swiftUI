//
//  ContentView.swift
//  kadai10-sako0602-swiftUI
//
//  Created by sako0602 on 2022/12/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List {
                ForEach(JapanesePrefectures.allCases){ prefecture in
                    HStack{
                        Text(prefecture.name)
                        Spacer()
                        Text("\(prefecture.rawValue + 1)番目の都道府県です")
                            .opacity(0.5)
                    }
                    .listRowBackground(rawColor(index: prefecture.rawValue))
                }
            }
            .navigationTitle("47都道府県とその番号")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    func rawColor(index: Int) -> Color {
        if index % 3 == 0 {
            return Color.red
        } else if index % 3 == 1 {
            return Color.green
        } else {
            return Color.blue
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
