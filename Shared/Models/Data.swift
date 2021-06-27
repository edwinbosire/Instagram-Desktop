//
//  Data.swift
//  Instagram
//
//  Created by Edwin Bosire on 27/06/2021.
//

import Foundation

class User: Hashable {
	var name: String
	var username: String
	var profilePic: String
	var stats: Stats

	var posts = [Post]()

	init(name: String,
		 username: String,
		 profilePic: String,
		 stats: Stats) {

		self.name = name
		self.username = username
		self.profilePic = profilePic
		self.stats = stats	}

	func addPost(_ post: Post) {
		self.posts.append(post)
	}

	func hash(into hasher: inout Hasher) {
		hasher.combine(username)
	}

	static func == (lhs: User, rhs: User) -> Bool {
		lhs.username == rhs.username
	}
}

struct Stats: Hashable {
	var followers: String = "1.65M"
	var posts: String = "1.2K"
	var following: String = "323"
}

struct PostModel: Equatable, Hashable {
	var user: User
	var comments: Int
	var likes: Int
	var image: String

	func hash(into hasher: inout Hasher) {
		hasher.combine(user.username)
		hasher.combine(user.name)
		hasher.combine(image)
	}

	static func == (lhs: PostModel, rhs: PostModel) -> Bool {
		lhs.user.username == rhs.user.username &&
		lhs.image == rhs.image
	}
}

struct PostsViewModel: Hashable {
	var latestPosts = [
		PostModel(user: james, comments: 12, likes: 544, image: "zebra"),
		PostModel(user: diane, comments: 12, likes: 544, image: "savannah"),
		PostModel(user: marry, comments: 12, likes: 544, image: "samburu"),
		PostModel(user: paul, comments: 12, likes: 544, image: "guineafowl"),
		PostModel(user: paul, comments: 12, likes: 544, image: "Illusion"),
		PostModel(user: james, comments: 12, likes: 544, image: "deer"),
		PostModel(user: simeon, comments: 12, likes: 544, image: "Cheetah-Cub"),
		PostModel(user: jane, comments: 12, likes: 544, image: "birds")
	]

	func hash(into hasher: inout Hasher) {
		hasher.combine(latestPosts)
	}
}


var james = User(name: "James", username: "jLive", profilePic: "james", stats: Stats())
var peter = User(name: "Peter", username: "peter_pan", profilePic: "peter", stats: Stats())
var marry = User(name: "Marry", username: "not_magdaline", profilePic: "marry", stats: Stats())
var lazarous = User(name: "Laz", username: "Laz", profilePic: "laz", stats: Stats())
var paul = User(name: "James", username: "Paul254", profilePic: "paul", stats: Stats())
var simeon = User(name: "Simeon", username: "simeon_official", profilePic: "sim", stats: Stats())
var jane = User(name: "Jane", username: "jane_dough", profilePic: "jane", stats: Stats())
var diane = User(name: "Diane", username: "DeeDee", profilePic: "diane", stats: Stats())

var loggedInUser = User(name: "Edwin Bosire", username: "edwinbosire", profilePic: "profile_pic", stats: Stats(followers: "1.6K", posts: "2.2M", following: "545"))
