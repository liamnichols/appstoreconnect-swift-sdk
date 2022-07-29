// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppCustomProductPageVersionInlineCreate: Codable {
	public var type: `Type`
	public var id: String?
	public var relationships: Relationships?

	public enum `Type`: String, Codable, CaseIterable {
		case appCustomProductPageVersions
	}

	public struct Relationships: Codable {
		public var appCustomProductPage: AppCustomProductPage?
		public var appCustomProductPageLocalizations: AppCustomProductPageLocalizations?

		public struct AppCustomProductPage: Codable {
			public var data: Data?

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appCustomProductPages
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(data: Data? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct AppCustomProductPageLocalizations: Codable {
			public var data: [Datum]?

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appCustomProductPageLocalizations
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(data: [Datum]? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(appCustomProductPage: AppCustomProductPage? = nil, appCustomProductPageLocalizations: AppCustomProductPageLocalizations? = nil) {
			self.appCustomProductPage = appCustomProductPage
			self.appCustomProductPageLocalizations = appCustomProductPageLocalizations
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.appCustomProductPage = try values.decodeIfPresent(AppCustomProductPage.self, forKey: "appCustomProductPage")
			self.appCustomProductPageLocalizations = try values.decodeIfPresent(AppCustomProductPageLocalizations.self, forKey: "appCustomProductPageLocalizations")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(appCustomProductPage, forKey: "appCustomProductPage")
			try values.encodeIfPresent(appCustomProductPageLocalizations, forKey: "appCustomProductPageLocalizations")
		}
	}

	public init(type: `Type`, id: String? = nil, relationships: Relationships? = nil) {
		self.type = type
		self.id = id
		self.relationships = relationships
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decodeIfPresent(String.self, forKey: "id")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encodeIfPresent(id, forKey: "id")
		try values.encodeIfPresent(relationships, forKey: "relationships")
	}
}
