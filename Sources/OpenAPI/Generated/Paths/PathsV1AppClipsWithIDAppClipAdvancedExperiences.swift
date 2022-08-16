// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClips.WithID {
	public var appClipAdvancedExperiences: AppClipAdvancedExperiences {
		AppClipAdvancedExperiences(path: path + "/appClipAdvancedExperiences")
	}

	public struct AppClipAdvancedExperiences {
		/// Path: `/v1/appClips/{id}/appClipAdvancedExperiences`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipAdvancedExperiencesResponse> {
			Request(method: "GET", url: path, query: parameters?.asQuery, id: "appClips-appClipAdvancedExperiences-get_to_many_related")
		}

		public struct GetParameters {
			public var filterAction: [FilterAction]?
			public var filterPlaceStatus: [FilterPlaceStatus]?
			public var filterStatus: [FilterStatus]?
			public var fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences]?
			public var fieldsAppClips: [FieldsAppClips]?
			public var fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages]?
			public var fieldsAppClipAdvancedExperienceLocalizations: [FieldsAppClipAdvancedExperienceLocalizations]?
			public var limit: Int?
			public var limitLocalizations: Int?
			public var include: [Include]?

			public enum FilterAction: String, Codable, CaseIterable {
				case `open` = "OPEN"
				case view = "VIEW"
				case play = "PLAY"
			}

			public enum FilterPlaceStatus: String, Codable, CaseIterable {
				case pending = "PENDING"
				case matched = "MATCHED"
				case noMatch = "NO_MATCH"
			}

			public enum FilterStatus: String, Codable, CaseIterable {
				case received = "RECEIVED"
				case deactivated = "DEACTIVATED"
				case appTransferInProgress = "APP_TRANSFER_IN_PROGRESS"
			}

			public enum FieldsAppClipAdvancedExperiences: String, Codable, CaseIterable {
				case action
				case appClip
				case businessCategory
				case defaultLanguage
				case headerImage
				case isPoweredBy
				case link
				case localizations
				case place
				case placeStatus
				case removed
				case status
				case version
			}

			public enum FieldsAppClips: String, Codable, CaseIterable {
				case app
				case appClipAdvancedExperiences
				case appClipDefaultExperiences
				case bundleID = "bundleId"
			}

			public enum FieldsAppClipAdvancedExperienceImages: String, Codable, CaseIterable {
				case assetDeliveryState
				case fileName
				case fileSize
				case imageAsset
				case sourceFileChecksum
				case uploadOperations
				case uploaded
			}

			public enum FieldsAppClipAdvancedExperienceLocalizations: String, Codable, CaseIterable {
				case language
				case subtitle
				case title
			}

			public enum Include: String, Codable, CaseIterable {
				case appClip
				case headerImage
				case localizations
			}

			public init(filterAction: [FilterAction]? = nil, filterPlaceStatus: [FilterPlaceStatus]? = nil, filterStatus: [FilterStatus]? = nil, fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences]? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages]? = nil, fieldsAppClipAdvancedExperienceLocalizations: [FieldsAppClipAdvancedExperienceLocalizations]? = nil, limit: Int? = nil, limitLocalizations: Int? = nil, include: [Include]? = nil) {
				self.filterAction = filterAction
				self.filterPlaceStatus = filterPlaceStatus
				self.filterStatus = filterStatus
				self.fieldsAppClipAdvancedExperiences = fieldsAppClipAdvancedExperiences
				self.fieldsAppClips = fieldsAppClips
				self.fieldsAppClipAdvancedExperienceImages = fieldsAppClipAdvancedExperienceImages
				self.fieldsAppClipAdvancedExperienceLocalizations = fieldsAppClipAdvancedExperienceLocalizations
				self.limit = limit
				self.limitLocalizations = limitLocalizations
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterAction, forKey: "filter[action]")
				encoder.encode(filterPlaceStatus, forKey: "filter[placeStatus]")
				encoder.encode(filterStatus, forKey: "filter[status]")
				encoder.encode(fieldsAppClipAdvancedExperiences, forKey: "fields[appClipAdvancedExperiences]")
				encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
				encoder.encode(fieldsAppClipAdvancedExperienceImages, forKey: "fields[appClipAdvancedExperienceImages]")
				encoder.encode(fieldsAppClipAdvancedExperienceLocalizations, forKey: "fields[appClipAdvancedExperienceLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitLocalizations, forKey: "limit[localizations]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
