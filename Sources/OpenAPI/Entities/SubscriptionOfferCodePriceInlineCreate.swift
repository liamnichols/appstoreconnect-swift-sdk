// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionOfferCodePriceInlineCreate: Codable {
	public var type: `Type`
	public var id: String?
	public var relationships: Relationships?

	public enum `Type`: String, Codable, CaseIterable {
		case subscriptionOfferCodePrices
	}

	public struct Relationships: Codable {
		public var territory: Territory?
		public var subscriptionPricePoint: SubscriptionPricePoint?

		public struct Territory: Codable {
			public var data: Data?

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case territories
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

		public struct SubscriptionPricePoint: Codable {
			public var data: Data?

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionPricePoints
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

		public init(territory: Territory? = nil, subscriptionPricePoint: SubscriptionPricePoint? = nil) {
			self.territory = territory
			self.subscriptionPricePoint = subscriptionPricePoint
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.territory = try values.decodeIfPresent(Territory.self, forKey: "territory")
			self.subscriptionPricePoint = try values.decodeIfPresent(SubscriptionPricePoint.self, forKey: "subscriptionPricePoint")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(territory, forKey: "territory")
			try values.encodeIfPresent(subscriptionPricePoint, forKey: "subscriptionPricePoint")
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
