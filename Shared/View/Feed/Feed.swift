//
//  Feed.swift
//  Instagram
//
//  Created by Edwin Bosire on 27/06/2021.
//

import SwiftUI

struct Feed: View {
	let feeds = ["Latest", "Popular"]
	let posts = PostsViewModel()

	@State var currentFeed = "Latest"
	@Namespace private var animation

	var body: some View {
		VStack {
			HStack(alignment: .top) {
				Text("Feed")
					.font(.title2)
					.fontWeight(.bold)
					.foregroundColor(.white)

				Spacer()

				ForEach(feeds, id: \.self) { feed in
					Button(action: { withAnimation(.spring()) {
						currentFeed = feed
					}}, label: {
						VStack(spacing: 10) {
							Text(feed)
								.foregroundColor(currentFeed == feed ? .white : .gray)
							ZStack {
								Circle()
									.fill(Color.clear)
									.frame(width: 5, height: 5)
									.matchedGeometryEffect(id: "feed", in: animation)

								if currentFeed == feed {
									Circle()
										.fill(Color.white)
										.frame(width: 5, height: 5)
										.matchedGeometryEffect(id: "feed", in: animation)
								}
							}
						}
					})
						.buttonStyle(PlainButtonStyle())
				}
			}
			.padding(.horizontal)
			.padding(.top, 8)

			// posts
			LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)){
				ForEach(posts.latestPosts, id: \.self) { model in
					Post(post: model)
				}
			}
			.padding()
		}
	}
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}

