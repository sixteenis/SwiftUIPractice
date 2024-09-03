//
//  SearchView.swift
//  SwiftUIPractice
//
//  Created by 박성민 on 9/3/24.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State var market = [MarketModle]()
    var filteredData: [MarketModle] {
            if searchText.isEmpty {
                return market
            } else {
                return market.filter { $0.koreanName.contains(searchText) }
            }
        }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                listView()
            }

            .navigationTitle("Search")
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer, prompt: "Search")
        .task {
            do {
                let result = try await UpbitAPI.fetchMarket()
                market = result.map {$0.transformModel()}
            } catch {
                
            }
        }
        
    }
    func listView() -> some View {
        
        return LazyVStack { ForEach(filteredData, id: \.id) { item in
            rowView(item)
                .padding(.horizontal)
                .padding(.vertical, 6)
        }}
    }
    func rowView(_ item: MarketModle) -> some View {
        VStack{
            HStack {
                Image(systemName: "heart.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.blue)
                VStack(alignment: .leading) {
                    Text(item.koreanName)
                        .fontWeight(.bold)
                    Text(item.market)
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                Spacer()
                Image(systemName: item.isLikes ? "star.fill" : "star")
                    .wrapToButton {
                        item.isLikes.toggle()
                    }
            } //:HSTACK
            Divider()
        } //:VSTACK
        
    }
}

#Preview {
    SearchView()
}
