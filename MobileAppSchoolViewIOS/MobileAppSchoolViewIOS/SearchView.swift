//
//  SearchView.swift
//  MobileAppSchoolViewIOS
//
//  Created by Tomer Sheier on 4/19/22.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    @Binding var searching: Bool
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("searchBarColor"))
            HStack{
                Image(systemName: "magnifyingglass")
                TextField("Search for something...", text: $searchText) { startedSearching in
                    if startedSearching {
                        withAnimation{
                            searching = true
                        }
                    }
                } onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
            }
            .foregroundColor(.gray
            )
            .padding()
        }
        .frame(height: 40)
        .cornerRadius(10)
        .padding()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: .constant(""), searching: .constant(false))
    }
}
