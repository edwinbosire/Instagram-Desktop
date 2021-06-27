//
//  Searchbar.swift
//  Instagram
//
//  Created by Edwin Bosire on 27/06/2021.
//

import SwiftUI

struct Searchbar: View {
	@State var search = ""

    var body: some View {
		HStack {
			TextField("Search", text: $search)
				.padding(.vertical, 10)
				.padding(.horizontal)
				.background(Color.white.opacity(0.25))
				.cornerRadius(10)
				.textFieldStyle(PlainTextFieldStyle())

			Button(action: {}, label: {
				Label(title: { Text("Add Photos")},
					  icon: { Image(systemName: "plus.square") })
					.foregroundColor(.white)
					.padding(10)
					.background(gradient)
					.cornerRadius(10)
			})
			.buttonStyle(PlainButtonStyle())

			Spacer()
		}
		.padding()
		.padding(.top, 20)
    }
}

struct Searchbar_Previews: PreviewProvider {
    static var previews: some View {
        Searchbar()
    }
}
