// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppCustomProductPages.WithID {
	public var appCustomProductPageVersions: AppCustomProductPageVersions {
		AppCustomProductPageVersions(path: path + "/appCustomProductPageVersions")
	}

	public struct AppCustomProductPageVersions {
		/// Path: `/v1/appCustomProductPages/{id}/appCustomProductPageVersions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppCustomProductPageVersionsResponse> {
			Request(method: "GET", url: path, query: parameters?.asQuery, id: "appCustomProductPages-appCustomProductPageVersions-get_to_many_related")
		}

		public struct GetParameters {
			public var filterState: [FilterState]?
			public var fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]?
			public var fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]?
			public var fieldsAppCustomProductPages: [FieldsAppCustomProductPages]?
			public var limit: Int?
			public var limitAppCustomProductPageLocalizations: Int?
			public var include: [Include]?

			public enum FilterState: String, Codable, CaseIterable {
				case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
				case readyForReview = "READY_FOR_REVIEW"
				case waitingForReview = "WAITING_FOR_REVIEW"
				case inReview = "IN_REVIEW"
				case accepted = "ACCEPTED"
				case approved = "APPROVED"
				case replacedWithNewVersion = "REPLACED_WITH_NEW_VERSION"
				case rejected = "REJECTED"
			}

			public enum FieldsAppCustomProductPageLocalizations: String, Codable, CaseIterable {
				case appCustomProductPageVersion
				case appPreviewSets
				case appScreenshotSets
				case locale
				case promotionalText
			}

			public enum FieldsAppCustomProductPageVersions: String, Codable, CaseIterable {
				case appCustomProductPage
				case appCustomProductPageLocalizations
				case state
				case version
			}

			public enum FieldsAppCustomProductPages: String, Codable, CaseIterable {
				case app
				case appCustomProductPageVersions
				case appStoreVersionTemplate
				case customProductPageTemplate
				case name
				case url
				case visible
			}

			public enum Include: String, Codable, CaseIterable {
				case appCustomProductPage
				case appCustomProductPageLocalizations
			}

			public init(filterState: [FilterState]? = nil, fieldsAppCustomProductPageLocalizations: [FieldsAppCustomProductPageLocalizations]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages]? = nil, limit: Int? = nil, limitAppCustomProductPageLocalizations: Int? = nil, include: [Include]? = nil) {
				self.filterState = filterState
				self.fieldsAppCustomProductPageLocalizations = fieldsAppCustomProductPageLocalizations
				self.fieldsAppCustomProductPageVersions = fieldsAppCustomProductPageVersions
				self.fieldsAppCustomProductPages = fieldsAppCustomProductPages
				self.limit = limit
				self.limitAppCustomProductPageLocalizations = limitAppCustomProductPageLocalizations
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterState, forKey: "filter[state]")
				encoder.encode(fieldsAppCustomProductPageLocalizations, forKey: "fields[appCustomProductPageLocalizations]")
				encoder.encode(fieldsAppCustomProductPageVersions, forKey: "fields[appCustomProductPageVersions]")
				encoder.encode(fieldsAppCustomProductPages, forKey: "fields[appCustomProductPages]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitAppCustomProductPageLocalizations, forKey: "limit[appCustomProductPageLocalizations]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
