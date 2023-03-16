//
//  SearchView.swift
//  weather
//
//  Created by Karlis Berzins on 16/03/2023.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String

    var body: some View {
        HStack {
            TextField("", text: $searchText, prompt: Text("Search Location").font(.custom("Poppins-Regular", size: 15)).foregroundColor(Color.appTextGray))
                .font(.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color.appTextDark)
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.appTextGray)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(Color.appItemBackgroundGray)
        .cornerRadius(16)
    }
}

struct SearchView_Previews: PreviewProvider {
    @State static var searchText = ""

    static var previews: some View {
        SearchBarView(searchText: $searchText)
    }
}
