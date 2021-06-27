//
//  Menu.swift
//  Instagram
//
//  Created by Edwin Bosire on 27/06/2021.
//

import SwiftUI

let gradient = LinearGradient(gradient: Gradient(colors: [Color("gradient1"), Color("gradient2")]), startPoint: .leading, endPoint: .trailing)

struct Menu: View {
	var user = loggedInUser
	var screen = NSScreen.main!.visibleFrame
	@State var selected = "Explore"
	@Namespace var animation

    var body: some View {
		HStack(spacing: 0) {

			VStack(spacing: 15) {
				HStack(spacing: 10) {
					Image("instagram")
						.resizable()
						.aspectRatio(contentMode: .fill)
						.frame(width: 30, height: 30)

					Text("Instagram")
						.font(.custom("Billabong", size: 30))

					Spacer()
				}
				.padding()
				.padding(.top, 20)

				Image(user.profilePic)
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: 65, height: 65)
					.clipShape(Circle())
					.padding(6)
					.background(Circle().stroke(gradient, lineWidth: 2))
					.clipShape(Circle())

				Text(user.name)
					.font(.title)
					.foregroundColor(.white)

				Text("@\(user.username)")
					.foregroundColor(.gray)


				/// Account Stats
				HStack {
					StatsLabel(title: user.stats.posts, value: "Posts")
					Divider()
					StatsLabel(title: user.stats.followers, value: "Followers")
					Divider()
					StatsLabel(title: user.stats.following, value: "Following")
				}
				.frame(height: 50)

				Group {
					MenuButton(title: "Explore", image: "rectangle.3.offgrid", selected: $selected, animation: animation)
						.padding(.top)

					MenuButton(title: "Feed", image: "magnifyingglass", selected: $selected, animation: animation)
					MenuButton(title: "Notifications", image: "bell", selected: $selected, animation: animation)
					MenuButton(title: "Direct", image: "paperplane", selected: $selected, animation: animation)
					MenuButton(title: "IGTV", image: "play.tv", selected: $selected, animation: animation)
					MenuButton(title: "Settings", image: "gear", selected: $selected, animation: animation)
				}
				Spacer()

				Divider()
					.padding(.horizontal, 20)

				MenuButton(title: "", image: "arrow.down.forward.square", selected: .constant(""), animation: animation)
					.padding(.bottom, 20)

			}
		}
		.frame(maxWidth: (screen.width / 2.4) / 3.5, maxHeight: .infinity)
		.background(BlurWindow())
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
