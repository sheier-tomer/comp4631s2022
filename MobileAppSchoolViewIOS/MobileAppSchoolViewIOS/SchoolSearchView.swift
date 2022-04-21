//
//  SchoolSearchView.swift
//  MobileAppSchoolViewIOS
//
//  Created by Tomer Sheier on 4/19/22.
//


import SwiftUI
import UIKit

struct SchoolSearchView: View {
    // 1.
    let schools = ["University of Massachussetts Lowell", "University of Massachussetts Amherst", "University of Massachussetts Boston", "Boston College", "Boston University", "Harvard University", "Massachussetts Institute of Technology", "University of New Hampshire"]
    // 2.
    @State var searchText = ""
    @State var searching = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                SearchView(searchText: $searchText, searching: $searching)
                
                List {
                  // 3.
                  ForEach(schools, id: \.self) { school in
                        Text(school)
                          .onTapGesture {
                              print("tapped")
                          }
                    }
                    
                }
                // 4.
                .listStyle(GroupedListStyle())
                .navigationTitle(searching ? "Searching " : "Schools")
              
            }
        }
    }
}

struct SchoolSearchView_Previews: PreviewProvider {
    static var previews: some View {
      SchoolSearchView()
    }
}


class SchoolSearchViewVHC: UIHostingController< SchoolSearchView> {
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder, rootView: SchoolSearchView())
    }
}
