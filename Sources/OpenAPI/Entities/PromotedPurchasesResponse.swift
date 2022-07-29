// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct PromotedPurchasesResponse: Codable {
	public var data: [PromotedPurchase]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable {
		case inAppPurchaseV2(InAppPurchaseV2)
		case subscription(Subscription)
		case promotedPurchaseImage(PromotedPurchaseImage)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(InAppPurchaseV2.self) {
				self = .inAppPurchaseV2(value)
			} else if let value = try? container.decode(Subscription.self) {
				self = .subscription(value)
			} else if let value = try? container.decode(PromotedPurchaseImage.self) {
				self = .promotedPurchaseImage(value)
			} else {
				throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .inAppPurchaseV2(let value): try container.encode(value)
			case .subscription(let value): try container.encode(value)
			case .promotedPurchaseImage(let value): try container.encode(value)
			}
		}
	}

	public init(data: [PromotedPurchase], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([PromotedPurchase].self, forKey: "data")
		self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
		self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
		self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encodeIfPresent(included, forKey: "included")
		try values.encode(links, forKey: "links")
		try values.encodeIfPresent(meta, forKey: "meta")
	}
}
