// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppEventLocalizations.WithID {
	public var appEventScreenshots: AppEventScreenshots {
		AppEventScreenshots(path: path + "/appEventScreenshots")
	}

	public struct AppEventScreenshots {
		/// Path: `/v1/appEventLocalizations/{id}/appEventScreenshots`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppEventScreenshotsResponse> {
			Request(method: "GET", url: path, query: parameters?.asQuery, id: "appEventLocalizations-appEventScreenshots-get_to_many_related")
		}

		public struct GetParameters {
			public var fieldsAppEventScreenshots: [FieldsAppEventScreenshots]?
			public var fieldsAppEventLocalizations: [FieldsAppEventLocalizations]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppEventScreenshots: String, Codable, CaseIterable {
				case appEventAssetType
				case appEventLocalization
				case assetDeliveryState
				case assetToken
				case fileName
				case fileSize
				case imageAsset
				case uploadOperations
				case uploaded
			}

			public enum FieldsAppEventLocalizations: String, Codable, CaseIterable {
				case appEvent
				case appEventScreenshots
				case appEventVideoClips
				case locale
				case longDescription
				case name
				case shortDescription
			}

			public enum Include: String, Codable, CaseIterable {
				case appEventLocalization
			}

			public init(fieldsAppEventScreenshots: [FieldsAppEventScreenshots]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppEventScreenshots = fieldsAppEventScreenshots
				self.fieldsAppEventLocalizations = fieldsAppEventLocalizations
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppEventScreenshots, forKey: "fields[appEventScreenshots]")
				encoder.encode(fieldsAppEventLocalizations, forKey: "fields[appEventLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
