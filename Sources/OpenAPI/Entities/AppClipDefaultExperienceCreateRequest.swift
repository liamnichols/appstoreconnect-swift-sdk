// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppClipDefaultExperienceCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes?
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case appClipDefaultExperiences
		}

		public struct Attributes: Codable {
			public var action: AppClipAction?

			public init(action: AppClipAction? = nil) {
				self.action = action
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.action = try values.decodeIfPresent(AppClipAction.self, forKey: "action")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(action, forKey: "action")
			}
		}

		public struct Relationships: Codable {
			public var appClip: AppClip
			public var releaseWithAppStoreVersion: ReleaseWithAppStoreVersion?
			public var appClipDefaultExperienceTemplate: AppClipDefaultExperienceTemplate?

			public struct AppClip: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appClips
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

			public struct ReleaseWithAppStoreVersion: Codable {
				public var data: Data?

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appStoreVersions
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

			public struct AppClipDefaultExperienceTemplate: Codable {
				public var data: Data?

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appClipDefaultExperiences
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

			public init(appClip: AppClip, releaseWithAppStoreVersion: ReleaseWithAppStoreVersion? = nil, appClipDefaultExperienceTemplate: AppClipDefaultExperienceTemplate? = nil) {
				self.appClip = appClip
				self.releaseWithAppStoreVersion = releaseWithAppStoreVersion
				self.appClipDefaultExperienceTemplate = appClipDefaultExperienceTemplate
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.appClip = try values.decode(AppClip.self, forKey: "appClip")
				self.releaseWithAppStoreVersion = try values.decodeIfPresent(ReleaseWithAppStoreVersion.self, forKey: "releaseWithAppStoreVersion")
				self.appClipDefaultExperienceTemplate = try values.decodeIfPresent(AppClipDefaultExperienceTemplate.self, forKey: "appClipDefaultExperienceTemplate")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(appClip, forKey: "appClip")
				try values.encodeIfPresent(releaseWithAppStoreVersion, forKey: "releaseWithAppStoreVersion")
				try values.encodeIfPresent(appClipDefaultExperienceTemplate, forKey: "appClipDefaultExperienceTemplate")
			}
		}

		public init(type: `Type`, attributes: Attributes? = nil, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
			self.relationships = try values.decode(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encodeIfPresent(attributes, forKey: "attributes")
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
