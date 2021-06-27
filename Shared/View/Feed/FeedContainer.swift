//
//  Feed.swift
//  Instagram
//
//  Created by Edwin Bosire on 27/06/2021.
//

import SwiftUI

struct FeedContainer: View {

	var body: some View {

		ScrollView {
			VStack {
				Searchbar()
				Text("Stories")
					.font(.title)
					.fontWeight(.bold)
					.foregroundColor(.white)
					.frame(maxWidth: .infinity, alignment: .leading)
					.padding(.horizontal)

				// Stories
				Stories()

				Feed()
			}
		}
		.frame(maxHeight: .infinity)
		.background(Color("Main"))
	}
}

struct FeedContainer_Previews: PreviewProvider {
	static var previews: some View {
		FeedContainer()
	}
}
