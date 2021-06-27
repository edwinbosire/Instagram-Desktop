//
//  MenuButton.swift
//  Instagram
//
//  Created by Edwin Bosire on 26/06/2021.
//

import SwiftUI

struct MenuButton: View {
	var title: String
	var image: String

	@Binding var selected: String
	var animation: Namespace.ID

    var body: some View {
		Button(action: {
			withAnimation(.spring()) { selected = title }
		}, label: {
			HStack(spacing: 10) {
				Image(systemName: image)
					.font(.system(size: 24))
					.foregroundColor(selected == title ? Color.orange : Color.gray)
					.frame(width: 30)

				Text(title)
					.fontWeight(.semibold)
					.foregroundColor(.gray)

				Spacer(minLength: 0)

				ZStack {
					Capsule()
						.fill(Color.clear)
						.matchedGeometryEffect(id: "Tab", in: animation)

					if selected == title {
						Capsule()
							.fill(Color.orange)
							.matchedGeometryEffect(id: "Tab", in: animation)
					}
				}
				.frame(width: 2, height: 25)
			}
			.padding(.leading)
			.padding(.top, 5)
			.contentShape(Rectangle())
		})
		.buttonStyle(PlainButtonStyle())
    }
}

//struct MenuButton_Previews: PreviewProvider {
//    static var previews: some View {
//		let selected = "Feed"
//		var animation = Namespace.I
//
//		return Group {
//			MenuButton(title: "Feed", image: "magnifyingglass", selected: .constant(selected), animation: animation)
//			MenuButton(title: "bell", image: "Notifications", selected: .constant(selected), animation: animation)
//			MenuButton(title: "paperplane", image: "Messages", selected: .constant(selected), animation: animation)
//		}
//    }
//}
