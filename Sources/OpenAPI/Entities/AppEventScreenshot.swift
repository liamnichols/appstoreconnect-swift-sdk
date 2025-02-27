// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppEventScreenshot: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case appEventScreenshots
	}

	public struct Attributes: Codable {
		public var fileSize: Int?
		public var fileName: String?
		public var imageAsset: ImageAsset?
		public var assetToken: String?
		public var uploadOperations: [UploadOperation]?
		public var assetDeliveryState: AppMediaAssetState?
		public var appEventAssetType: AppEventAssetType?

		public init(fileSize: Int? = nil, fileName: String? = nil, imageAsset: ImageAsset? = nil, assetToken: String? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil, appEventAssetType: AppEventAssetType? = nil) {
			self.fileSize = fileSize
			self.fileName = fileName
			self.imageAsset = imageAsset
			self.assetToken = assetToken
			self.uploadOperations = uploadOperations
			self.assetDeliveryState = assetDeliveryState
			self.appEventAssetType = appEventAssetType
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.fileSize = try values.decodeIfPresent(Int.self, forKey: "fileSize")
			self.fileName = try values.decodeIfPresent(String.self, forKey: "fileName")
			self.imageAsset = try values.decodeIfPresent(ImageAsset.self, forKey: "imageAsset")
			self.assetToken = try values.decodeIfPresent(String.self, forKey: "assetToken")
			self.uploadOperations = try values.decodeIfPresent([UploadOperation].self, forKey: "uploadOperations")
			self.assetDeliveryState = try values.decodeIfPresent(AppMediaAssetState.self, forKey: "assetDeliveryState")
			self.appEventAssetType = try values.decodeIfPresent(AppEventAssetType.self, forKey: "appEventAssetType")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(fileSize, forKey: "fileSize")
			try values.encodeIfPresent(fileName, forKey: "fileName")
			try values.encodeIfPresent(imageAsset, forKey: "imageAsset")
			try values.encodeIfPresent(assetToken, forKey: "assetToken")
			try values.encodeIfPresent(uploadOperations, forKey: "uploadOperations")
			try values.encodeIfPresent(assetDeliveryState, forKey: "assetDeliveryState")
			try values.encodeIfPresent(appEventAssetType, forKey: "appEventAssetType")
		}
	}

	public struct Relationships: Codable {
		public var appEventLocalization: AppEventLocalization?

		public struct AppEventLocalization: Codable {
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
					case appEventLocalizations
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

		public init(appEventLocalization: AppEventLocalization? = nil) {
			self.appEventLocalization = appEventLocalization
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.appEventLocalization = try values.decodeIfPresent(AppEventLocalization.self, forKey: "appEventLocalization")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(appEventLocalization, forKey: "appEventLocalization")
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
