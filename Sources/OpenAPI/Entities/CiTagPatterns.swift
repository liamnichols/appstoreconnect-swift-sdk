// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct CiTagPatterns: Codable {
	public var isAllMatch: Bool?
	public var patterns: [Pattern]?

	public struct Pattern: Codable {
		public var pattern: String?
		public var isPrefix: Bool?

		public init(pattern: String? = nil, isPrefix: Bool? = nil) {
			self.pattern = pattern
			self.isPrefix = isPrefix
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.pattern = try values.decodeIfPresent(String.self, forKey: "pattern")
			self.isPrefix = try values.decodeIfPresent(Bool.self, forKey: "isPrefix")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(pattern, forKey: "pattern")
			try values.encodeIfPresent(isPrefix, forKey: "isPrefix")
		}
	}

	public init(isAllMatch: Bool? = nil, patterns: [Pattern]? = nil) {
		self.isAllMatch = isAllMatch
		self.patterns = patterns
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.isAllMatch = try values.decodeIfPresent(Bool.self, forKey: "isAllMatch")
		self.patterns = try values.decodeIfPresent([Pattern].self, forKey: "patterns")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encodeIfPresent(isAllMatch, forKey: "isAllMatch")
		try values.encodeIfPresent(patterns, forKey: "patterns")
	}
}
