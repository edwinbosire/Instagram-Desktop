//
//  Post.swift
//  Instagram
//
//  Created by Edwin Bosire on 27/06/2021.
//

import SwiftUI

struct Post: View {
	var post: PostModel
    var body: some View {
		GeometryReader { reader in
			VStack {
				Image(post.image )
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: reader.frame(in: .global).width, height: 250)
					.cornerRadius(10)
					.contentShape(Rectangle())

				HStack {
					Image(post.user.profilePic)
						.resizable()
						.aspectRatio(contentMode: .fill)
						.frame(width: 30, height: 30)
						.clipShape(Circle())
						.padding(6)
						.background(Circle().stroke(gradient, lineWidth: 2))
						.clipShape(Circle())

					Text(post.user.username)
						.foregroundColor(.white)

					Spacer(minLength: 0)

					Button(action: {}, label: {
						Label(
							title: { Text("\(post.likes)") },
							icon: { Image(systemName: "suit.heart") })
					})
					.buttonStyle(PlainButtonStyle())

					Button(action: {}, label: {
						Label(
							title: { Text("\(post.comments)") },
							icon: { Image(systemName: "message") })
					})
					.buttonStyle(PlainButtonStyle())
				}
				.padding(.horizontal)
				.foregroundColor(.gray)
			}
		}
		.frame(height: 300)
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
		Post(post: PostsViewModel().latestPosts[1])
    }
}
