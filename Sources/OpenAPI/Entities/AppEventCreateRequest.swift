// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppEventCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case appEvents
		}

		public struct Attributes: Codable {
			public var referenceName: String
			public var badge: Badge?
			public var deepLink: URL?
			public var purchaseRequirement: PurchaseRequirement?
			public var primaryLocale: String?
			public var priority: Priority?
			public var purpose: Purpose?
			public var territorySchedules: [TerritorySchedule]?

			public enum Badge: String, Codable, CaseIterable {
				case liveEvent = "LIVE_EVENT"
				case premiere = "PREMIERE"
				case challenge = "CHALLENGE"
				case competition = "COMPETITION"
				case newSeason = "NEW_SEASON"
				case majorUpdate = "MAJOR_UPDATE"
				case specialEvent = "SPECIAL_EVENT"
			}

			public enum PurchaseRequirement: String, Codable, CaseIterable {
				case noCostAssociated = "NO_COST_ASSOCIATED"
				case inAppPurchase = "IN_APP_PURCHASE"
				case subscription = "SUBSCRIPTION"
				case inAppPurchaseAndSubscription = "IN_APP_PURCHASE_AND_SUBSCRIPTION"
				case inAppPurchaseOrSubscription = "IN_APP_PURCHASE_OR_SUBSCRIPTION"
			}

			public enum Priority: String, Codable, CaseIterable {
				case high = "HIGH"
				case normal = "NORMAL"
			}

			public enum Purpose: String, Codable, CaseIterable {
				case appropriateForAllUsers = "APPROPRIATE_FOR_ALL_USERS"
				case attractNewUsers = "ATTRACT_NEW_USERS"
				case keepActiveUsersInformed = "KEEP_ACTIVE_USERS_INFORMED"
				case bringBackLapsedUsers = "BRING_BACK_LAPSED_USERS"
			}

			public struct TerritorySchedule: Codable {
				public var territories: [String]?
				public var publishStart: Date?
				public var eventStart: Date?
				public var eventEnd: Date?

				public init(territories: [String]? = nil, publishStart: Date? = nil, eventStart: Date? = nil, eventEnd: Date? = nil) {
					self.territories = territories
					self.publishStart = publishStart
					self.eventStart = eventStart
					self.eventEnd = eventEnd
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.territories = try values.decodeIfPresent([String].self, forKey: "territories")
					self.publishStart = try values.decodeIfPresent(Date.self, forKey: "publishStart")
					self.eventStart = try values.decodeIfPresent(Date.self, forKey: "eventStart")
					self.eventEnd = try values.decodeIfPresent(Date.self, forKey: "eventEnd")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(territories, forKey: "territories")
					try values.encodeIfPresent(publishStart, forKey: "publishStart")
					try values.encodeIfPresent(eventStart, forKey: "eventStart")
					try values.encodeIfPresent(eventEnd, forKey: "eventEnd")
				}
			}

			public init(referenceName: String, badge: Badge? = nil, deepLink: URL? = nil, purchaseRequirement: PurchaseRequirement? = nil, primaryLocale: String? = nil, priority: Priority? = nil, purpose: Purpose? = nil, territorySchedules: [TerritorySchedule]? = nil) {
				self.referenceName = referenceName
				self.badge = badge
				self.deepLink = deepLink
				self.purchaseRequirement = purchaseRequirement
				self.primaryLocale = primaryLocale
				self.priority = priority
				self.purpose = purpose
				self.territorySchedules = territorySchedules
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.referenceName = try values.decode(String.self, forKey: "referenceName")
				self.badge = try values.decodeIfPresent(Badge.self, forKey: "badge")
				self.deepLink = try values.decodeIfPresent(URL.self, forKey: "deepLink")
				self.purchaseRequirement = try values.decodeIfPresent(PurchaseRequirement.self, forKey: "purchaseRequirement")
				self.primaryLocale = try values.decodeIfPresent(String.self, forKey: "primaryLocale")
				self.priority = try values.decodeIfPresent(Priority.self, forKey: "priority")
				self.purpose = try values.decodeIfPresent(Purpose.self, forKey: "purpose")
				self.territorySchedules = try values.decodeIfPresent([TerritorySchedule].self, forKey: "territorySchedules")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(referenceName, forKey: "referenceName")
				try values.encodeIfPresent(badge, forKey: "badge")
				try values.encodeIfPresent(deepLink, forKey: "deepLink")
				try values.encodeIfPresent(purchaseRequirement, forKey: "purchaseRequirement")
				try values.encodeIfPresent(primaryLocale, forKey: "primaryLocale")
				try values.encodeIfPresent(priority, forKey: "priority")
				try values.encodeIfPresent(purpose, forKey: "purpose")
				try values.encodeIfPresent(territorySchedules, forKey: "territorySchedules")
			}
		}

		public struct Relationships: Codable {
			public var app: App

			public struct App: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case apps
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

				public init(data: Data) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decode(Data.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(data, forKey: "data")
				}
			}

			public init(app: App) {
				self.app = app
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.app = try values.decode(App.self, forKey: "app")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(app, forKey: "app")
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.attributes = try values.decode(Attributes.self, forKey: "attributes")
			self.relationships = try values.decode(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(attributes, forKey: "attributes")
			try values.encode(relationships, forKey: "relationships")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
