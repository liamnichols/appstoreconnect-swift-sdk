// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct Subscription: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case subscriptions
	}

	public struct Attributes: Codable {
		public var name: String?
		public var productID: String?
		public var isFamilySharable: Bool?
		public var state: State?
		public var subscriptionPeriod: SubscriptionPeriod?
		public var reviewNote: String?
		public var groupLevel: Int?
		public var isAvailableInAllTerritories: Bool?

		public enum State: String, Codable, CaseIterable {
			case missingMetadata = "MISSING_METADATA"
			case readyToSubmit = "READY_TO_SUBMIT"
			case waitingForReview = "WAITING_FOR_REVIEW"
			case inReview = "IN_REVIEW"
			case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
			case pendingBinaryApproval = "PENDING_BINARY_APPROVAL"
			case approved = "APPROVED"
			case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
			case removedFromSale = "REMOVED_FROM_SALE"
			case rejected = "REJECTED"
		}

		public enum SubscriptionPeriod: String, Codable, CaseIterable {
			case oneWeek = "ONE_WEEK"
			case oneMonth = "ONE_MONTH"
			case twoMonths = "TWO_MONTHS"
			case threeMonths = "THREE_MONTHS"
			case sixMonths = "SIX_MONTHS"
			case oneYear = "ONE_YEAR"
		}

		public init(name: String? = nil, productID: String? = nil, isFamilySharable: Bool? = nil, state: State? = nil, subscriptionPeriod: SubscriptionPeriod? = nil, reviewNote: String? = nil, groupLevel: Int? = nil, isAvailableInAllTerritories: Bool? = nil) {
			self.name = name
			self.productID = productID
			self.isFamilySharable = isFamilySharable
			self.state = state
			self.subscriptionPeriod = subscriptionPeriod
			self.reviewNote = reviewNote
			self.groupLevel = groupLevel
			self.isAvailableInAllTerritories = isAvailableInAllTerritories
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.name = try values.decodeIfPresent(String.self, forKey: "name")
			self.productID = try values.decodeIfPresent(String.self, forKey: "productId")
			self.isFamilySharable = try values.decodeIfPresent(Bool.self, forKey: "familySharable")
			self.state = try values.decodeIfPresent(State.self, forKey: "state")
			self.subscriptionPeriod = try values.decodeIfPresent(SubscriptionPeriod.self, forKey: "subscriptionPeriod")
			self.reviewNote = try values.decodeIfPresent(String.self, forKey: "reviewNote")
			self.groupLevel = try values.decodeIfPresent(Int.self, forKey: "groupLevel")
			self.isAvailableInAllTerritories = try values.decodeIfPresent(Bool.self, forKey: "availableInAllTerritories")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(name, forKey: "name")
			try values.encodeIfPresent(productID, forKey: "productId")
			try values.encodeIfPresent(isFamilySharable, forKey: "familySharable")
			try values.encodeIfPresent(state, forKey: "state")
			try values.encodeIfPresent(subscriptionPeriod, forKey: "subscriptionPeriod")
			try values.encodeIfPresent(reviewNote, forKey: "reviewNote")
			try values.encodeIfPresent(groupLevel, forKey: "groupLevel")
			try values.encodeIfPresent(isAvailableInAllTerritories, forKey: "availableInAllTerritories")
		}
	}

	public struct Relationships: Codable {
		public var subscriptionLocalizations: SubscriptionLocalizations?
		public var appStoreReviewScreenshot: AppStoreReviewScreenshot?
		public var group: Group?
		public var introductoryOffers: IntroductoryOffers?
		public var promotionalOffers: PromotionalOffers?
		public var offerCodes: OfferCodes?
		public var prices: Prices?
		public var promotedPurchase: PromotedPurchase?

		public struct SubscriptionLocalizations: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionLocalizations
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

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct AppStoreReviewScreenshot: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionAppStoreReviewScreenshots
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

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct Group: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionGroups
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

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct IntroductoryOffers: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionIntroductoryOffers
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

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct PromotionalOffers: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionPromotionalOffers
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

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct OfferCodes: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionOfferCodes
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

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct Prices: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Datum: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionPrices
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

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct PromotedPurchase: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case promotedPurchases
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

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(subscriptionLocalizations: SubscriptionLocalizations? = nil, appStoreReviewScreenshot: AppStoreReviewScreenshot? = nil, group: Group? = nil, introductoryOffers: IntroductoryOffers? = nil, promotionalOffers: PromotionalOffers? = nil, offerCodes: OfferCodes? = nil, prices: Prices? = nil, promotedPurchase: PromotedPurchase? = nil) {
			self.subscriptionLocalizations = subscriptionLocalizations
			self.appStoreReviewScreenshot = appStoreReviewScreenshot
			self.group = group
			self.introductoryOffers = introductoryOffers
			self.promotionalOffers = promotionalOffers
			self.offerCodes = offerCodes
			self.prices = prices
			self.promotedPurchase = promotedPurchase
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.subscriptionLocalizations = try values.decodeIfPresent(SubscriptionLocalizations.self, forKey: "subscriptionLocalizations")
			self.appStoreReviewScreenshot = try values.decodeIfPresent(AppStoreReviewScreenshot.self, forKey: "appStoreReviewScreenshot")
			self.group = try values.decodeIfPresent(Group.self, forKey: "group")
			self.introductoryOffers = try values.decodeIfPresent(IntroductoryOffers.self, forKey: "introductoryOffers")
			self.promotionalOffers = try values.decodeIfPresent(PromotionalOffers.self, forKey: "promotionalOffers")
			self.offerCodes = try values.decodeIfPresent(OfferCodes.self, forKey: "offerCodes")
			self.prices = try values.decodeIfPresent(Prices.self, forKey: "prices")
			self.promotedPurchase = try values.decodeIfPresent(PromotedPurchase.self, forKey: "promotedPurchase")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(subscriptionLocalizations, forKey: "subscriptionLocalizations")
			try values.encodeIfPresent(appStoreReviewScreenshot, forKey: "appStoreReviewScreenshot")
			try values.encodeIfPresent(group, forKey: "group")
			try values.encodeIfPresent(introductoryOffers, forKey: "introductoryOffers")
			try values.encodeIfPresent(promotionalOffers, forKey: "promotionalOffers")
			try values.encodeIfPresent(offerCodes, forKey: "offerCodes")
			try values.encodeIfPresent(prices, forKey: "prices")
			try values.encodeIfPresent(promotedPurchase, forKey: "promotedPurchase")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decode(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encode(links, forKey: "links")
	}
}
