// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appStoreVersions/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionResponse> {
			Request(method: "GET", url: path, query: parameters?.asQuery, id: "appStoreVersions-get_instance")
		}

		public struct GetParameters {
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var include: [Include]?
			public var fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?
			public var fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions]?
			public var fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]?
			public var fieldsCustomerReviews: [FieldsCustomerReviews]?
			public var fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]?
			public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
			public var fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]?
			public var fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]?
			public var limitAppStoreVersionExperiments: Int?
			public var limitAppStoreVersionLocalizations: Int?

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreState
				case appStoreVersionExperiments
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case build
				case copyright
				case createdDate
				case customerReviews
				case downloadable
				case earliestReleaseDate
				case platform
				case releaseType
				case routingAppCoverage
				case versionString
			}

			public enum Include: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreVersionExperiments
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case build
				case routingAppCoverage
			}

			public enum FieldsAppStoreVersionExperiments: String, Codable, CaseIterable {
				case appStoreVersion
				case appStoreVersionExperimentTreatments
				case endDate
				case name
				case reviewRequired
				case startDate
				case started
				case state
				case trafficProportion
			}

			public enum FieldsAppStoreVersionSubmissions: String, Codable, CaseIterable {
				case appStoreVersion
			}

			public enum FieldsAgeRatingDeclarations: String, Codable, CaseIterable {
				case alcoholTobaccoOrDrugUseOrReferences
				case contests
				case gambling
				case gamblingAndContests
				case gamblingSimulated
				case horrorOrFearThemes
				case kidsAgeBand
				case matureOrSuggestiveThemes
				case medicalOrTreatmentInformation
				case profanityOrCrudeHumor
				case seventeenPlus
				case sexualContentGraphicAndNudity
				case sexualContentOrNudity
				case unrestrictedWebAccess
				case violenceCartoonOrFantasy
				case violenceRealistic
				case violenceRealisticProlongedGraphicOrSadistic
			}

			public enum FieldsCustomerReviews: String, Codable, CaseIterable {
				case body
				case createdDate
				case rating
				case response
				case reviewerNickname
				case territory
				case title
			}

			public enum FieldsAppStoreReviewDetails: String, Codable, CaseIterable {
				case appStoreReviewAttachments
				case appStoreVersion
				case contactEmail
				case contactFirstName
				case contactLastName
				case contactPhone
				case demoAccountName
				case demoAccountPassword
				case demoAccountRequired
				case notes
			}

			public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
				case action
				case appClip
				case appClipAppStoreReviewDetail
				case appClipDefaultExperienceLocalizations
				case appClipDefaultExperienceTemplate
				case releaseWithAppStoreVersion
			}

			public enum FieldsRoutingAppCoverages: String, Codable, CaseIterable {
				case appStoreVersion
				case assetDeliveryState
				case fileName
				case fileSize
				case sourceFileChecksum
				case uploadOperations
				case uploaded
			}

			public enum FieldsAppStoreVersionPhasedReleases: String, Codable, CaseIterable {
				case appStoreVersion
				case currentDayNumber
				case phasedReleaseState
				case startDate
				case totalPauseDuration
			}

			public enum FieldsBuilds: String, Codable, CaseIterable {
				case app
				case appEncryptionDeclaration
				case appStoreVersion
				case betaAppReviewSubmission
				case betaBuildLocalizations
				case betaGroups
				case buildAudienceType
				case buildBetaDetail
				case buildBundles
				case computedMinMacOsVersion
				case diagnosticSignatures
				case expirationDate
				case expired
				case iconAssetToken
				case icons
				case individualTesters
				case lsMinimumSystemVersion
				case minOsVersion
				case perfPowerMetrics
				case preReleaseVersion
				case processingState
				case uploadedDate
				case usesNonExemptEncryption
				case version
			}

			public enum FieldsAppStoreVersionLocalizations: String, Codable, CaseIterable {
				case appPreviewSets
				case appScreenshotSets
				case appStoreVersion
				case description
				case keywords
				case locale
				case marketingURL = "marketingUrl"
				case promotionalText
				case supportURL = "supportUrl"
				case whatsNew
			}

			public init(fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, include: [Include]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]? = nil, fieldsCustomerReviews: [FieldsCustomerReviews]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]? = nil, fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]? = nil, limitAppStoreVersionExperiments: Int? = nil, limitAppStoreVersionLocalizations: Int? = nil) {
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.include = include
				self.fieldsAppStoreVersionExperiments = fieldsAppStoreVersionExperiments
				self.fieldsAppStoreVersionSubmissions = fieldsAppStoreVersionSubmissions
				self.fieldsAgeRatingDeclarations = fieldsAgeRatingDeclarations
				self.fieldsCustomerReviews = fieldsCustomerReviews
				self.fieldsAppStoreReviewDetails = fieldsAppStoreReviewDetails
				self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
				self.fieldsRoutingAppCoverages = fieldsRoutingAppCoverages
				self.fieldsAppStoreVersionPhasedReleases = fieldsAppStoreVersionPhasedReleases
				self.fieldsBuilds = fieldsBuilds
				self.fieldsAppStoreVersionLocalizations = fieldsAppStoreVersionLocalizations
				self.limitAppStoreVersionExperiments = limitAppStoreVersionExperiments
				self.limitAppStoreVersionLocalizations = limitAppStoreVersionLocalizations
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
				encoder.encode(fieldsAppStoreVersionSubmissions, forKey: "fields[appStoreVersionSubmissions]")
				encoder.encode(fieldsAgeRatingDeclarations, forKey: "fields[ageRatingDeclarations]")
				encoder.encode(fieldsCustomerReviews, forKey: "fields[customerReviews]")
				encoder.encode(fieldsAppStoreReviewDetails, forKey: "fields[appStoreReviewDetails]")
				encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
				encoder.encode(fieldsRoutingAppCoverages, forKey: "fields[routingAppCoverages]")
				encoder.encode(fieldsAppStoreVersionPhasedReleases, forKey: "fields[appStoreVersionPhasedReleases]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(fieldsAppStoreVersionLocalizations, forKey: "fields[appStoreVersionLocalizations]")
				encoder.encode(limitAppStoreVersionExperiments, forKey: "limit[appStoreVersionExperiments]")
				encoder.encode(limitAppStoreVersionLocalizations, forKey: "limit[appStoreVersionLocalizations]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppStoreVersionUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionResponse> {
			Request(method: "PATCH", url: path, body: body, id: "appStoreVersions-update_instance")
		}

		public var delete: Request<Void> {
			Request(method: "DELETE", url: path, id: "appStoreVersions-delete_instance")
		}
	}
}
