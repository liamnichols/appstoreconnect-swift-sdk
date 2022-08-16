// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var appStoreVersions: AppStoreVersions {
		AppStoreVersions(path: path + "/appStoreVersions")
	}

	public struct AppStoreVersions {
		/// Path: `/v1/apps/{id}/appStoreVersions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionsResponse> {
			Request(method: "GET", url: path, query: parameters?.asQuery, id: "apps-appStoreVersions-get_to_many_related")
		}

		public struct GetParameters {
			public var filterAppStoreState: [FilterAppStoreState]?
			public var filterPlatform: [FilterPlatform]?
			public var filterVersionString: [String]?
			public var filterID: [String]?
			public var fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?
			public var fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]?
			public var fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions]?
			public var fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]?
			public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
			public var fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]?
			public var limit: Int?
			public var limitAppStoreVersionLocalizations: Int?
			public var limitAppStoreVersionExperiments: Int?
			public var include: [Include]?

			public enum FilterAppStoreState: String, Codable, CaseIterable {
				case accepted = "ACCEPTED"
				case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
				case developerRejected = "DEVELOPER_REJECTED"
				case inReview = "IN_REVIEW"
				case invalidBinary = "INVALID_BINARY"
				case metadataRejected = "METADATA_REJECTED"
				case pendingAppleRelease = "PENDING_APPLE_RELEASE"
				case pendingContract = "PENDING_CONTRACT"
				case pendingDeveloperRelease = "PENDING_DEVELOPER_RELEASE"
				case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
				case preorderReadyForSale = "PREORDER_READY_FOR_SALE"
				case processingForAppStore = "PROCESSING_FOR_APP_STORE"
				case readyForReview = "READY_FOR_REVIEW"
				case readyForSale = "READY_FOR_SALE"
				case rejected = "REJECTED"
				case removedFromSale = "REMOVED_FROM_SALE"
				case waitingForExportCompliance = "WAITING_FOR_EXPORT_COMPLIANCE"
				case waitingForReview = "WAITING_FOR_REVIEW"
				case replacedWithNewVersion = "REPLACED_WITH_NEW_VERSION"
			}

			public enum FilterPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
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

			public enum FieldsAppStoreVersionSubmissions: String, Codable, CaseIterable {
				case appStoreVersion
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

			public enum FieldsApps: String, Codable, CaseIterable {
				case appClips
				case appCustomProductPages
				case appEvents
				case appInfos
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
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

			public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
				case action
				case appClip
				case appClipAppStoreReviewDetail
				case appClipDefaultExperienceLocalizations
				case appClipDefaultExperienceTemplate
				case releaseWithAppStoreVersion
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

			public init(filterAppStoreState: [FilterAppStoreState]? = nil, filterPlatform: [FilterPlatform]? = nil, filterVersionString: [String]? = nil, filterID: [String]? = nil, fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]? = nil, fieldsAppStoreVersionSubmissions: [FieldsAppStoreVersionSubmissions]? = nil, fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, fieldsAppStoreVersionPhasedReleases: [FieldsAppStoreVersionPhasedReleases]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsAppStoreVersionLocalizations: [FieldsAppStoreVersionLocalizations]? = nil, limit: Int? = nil, limitAppStoreVersionLocalizations: Int? = nil, limitAppStoreVersionExperiments: Int? = nil, include: [Include]? = nil) {
				self.filterAppStoreState = filterAppStoreState
				self.filterPlatform = filterPlatform
				self.filterVersionString = filterVersionString
				self.filterID = filterID
				self.fieldsAppStoreVersionExperiments = fieldsAppStoreVersionExperiments
				self.fieldsAgeRatingDeclarations = fieldsAgeRatingDeclarations
				self.fieldsAppStoreVersionSubmissions = fieldsAppStoreVersionSubmissions
				self.fieldsAppStoreReviewDetails = fieldsAppStoreReviewDetails
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsApps = fieldsApps
				self.fieldsRoutingAppCoverages = fieldsRoutingAppCoverages
				self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
				self.fieldsAppStoreVersionPhasedReleases = fieldsAppStoreVersionPhasedReleases
				self.fieldsBuilds = fieldsBuilds
				self.fieldsAppStoreVersionLocalizations = fieldsAppStoreVersionLocalizations
				self.limit = limit
				self.limitAppStoreVersionLocalizations = limitAppStoreVersionLocalizations
				self.limitAppStoreVersionExperiments = limitAppStoreVersionExperiments
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterAppStoreState, forKey: "filter[appStoreState]")
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				encoder.encode(filterVersionString, forKey: "filter[versionString]")
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
				encoder.encode(fieldsAgeRatingDeclarations, forKey: "fields[ageRatingDeclarations]")
				encoder.encode(fieldsAppStoreVersionSubmissions, forKey: "fields[appStoreVersionSubmissions]")
				encoder.encode(fieldsAppStoreReviewDetails, forKey: "fields[appStoreReviewDetails]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsRoutingAppCoverages, forKey: "fields[routingAppCoverages]")
				encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
				encoder.encode(fieldsAppStoreVersionPhasedReleases, forKey: "fields[appStoreVersionPhasedReleases]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(fieldsAppStoreVersionLocalizations, forKey: "fields[appStoreVersionLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitAppStoreVersionLocalizations, forKey: "limit[appStoreVersionLocalizations]")
				encoder.encode(limitAppStoreVersionExperiments, forKey: "limit[appStoreVersionExperiments]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
