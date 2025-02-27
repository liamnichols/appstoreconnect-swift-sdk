// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiProducts.WithID {
	public var app: App {
		App(path: path + "/app")
	}

	public struct App {
		/// Path: `/v1/ciProducts/{id}/app`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]?
			public var fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]?
			public var fieldsAppClips: [FieldsAppClips]?
			public var fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]?
			public var fieldsAppInfos: [FieldsAppInfos]?
			public var fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?
			public var fieldsInAppPurchases: [FieldsInAppPurchases]?
			public var fieldsCiProducts: [FieldsCiProducts]?
			public var fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?
			public var fieldsReviewSubmissions: [FieldsReviewSubmissions]?
			public var fieldsBetaGroups: [FieldsBetaGroups]?
			public var fieldsAppPreOrders: [FieldsAppPreOrders]?
			public var fieldsAppPrices: [FieldsAppPrices]?
			public var fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]?
			public var fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]?
			public var fieldsPromotedPurchases: [FieldsPromotedPurchases]?
			public var fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsAppCustomProductPages: [FieldsAppCustomProductPages]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsAppEvents: [FieldsAppEvents]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var limitBetaGroups: Int?
			public var limitAppStoreVersions: Int?
			public var limitPreReleaseVersions: Int?
			public var limitBetaAppLocalizations: Int?
			public var limitBuilds: Int?
			public var limitAppInfos: Int?
			public var limitAppClips: Int?
			public var limitPrices: Int?
			public var limitAvailableTerritories: Int?
			public var limitInAppPurchases: Int?
			public var limitSubscriptionGroups: Int?
			public var limitGameCenterEnabledVersions: Int?
			public var limitAppCustomProductPages: Int?
			public var limitInAppPurchasesV2: Int?
			public var limitPromotedPurchases: Int?
			public var limitAppEvents: Int?
			public var limitReviewSubmissions: Int?
			public var include: [Include]?

			public enum FieldsBetaLicenseAgreements: String, Codable, CaseIterable {
				case agreementText
				case app
			}

			public enum FieldsBetaAppReviewDetails: String, Codable, CaseIterable {
				case app
				case contactEmail
				case contactFirstName
				case contactLastName
				case contactPhone
				case demoAccountName
				case demoAccountPassword
				case demoAccountRequired
				case notes
			}

			public enum FieldsAppClips: String, Codable, CaseIterable {
				case app
				case appClipAdvancedExperiences
				case appClipDefaultExperiences
				case bundleID = "bundleId"
			}

			public enum FieldsBetaAppLocalizations: String, Codable, CaseIterable {
				case app
				case description
				case feedbackEmail
				case locale
				case marketingURL = "marketingUrl"
				case privacyPolicyURL = "privacyPolicyUrl"
				case tvOsPrivacyPolicy
			}

			public enum FieldsAppInfos: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appInfoLocalizations
				case appStoreAgeRating
				case appStoreState
				case brazilAgeRating
				case kidsAgeBand
				case primaryCategory
				case primarySubcategoryOne
				case primarySubcategoryTwo
				case secondaryCategory
				case secondarySubcategoryOne
				case secondarySubcategoryTwo
			}

			public enum FieldsPreReleaseVersions: String, Codable, CaseIterable {
				case app
				case builds
				case platform
				case version
			}

			public enum FieldsInAppPurchases: String, Codable, CaseIterable {
				case apps
				case inAppPurchaseType
				case productID = "productId"
				case referenceName
				case state
			}

			public enum FieldsCiProducts: String, Codable, CaseIterable {
				case additionalRepositories
				case app
				case buildRuns
				case bundleID = "bundleId"
				case createdDate
				case name
				case primaryRepositories
				case productType
				case workflows
			}

			public enum FieldsSubscriptionGroups: String, Codable, CaseIterable {
				case app
				case referenceName
				case subscriptionGroupLocalizations
				case subscriptions
			}

			public enum FieldsReviewSubmissions: String, Codable, CaseIterable {
				case app
				case appStoreVersionForReview
				case canceled
				case items
				case platform
				case state
				case submitted
				case submittedDate
			}

			public enum FieldsBetaGroups: String, Codable, CaseIterable {
				case app
				case betaTesters
				case builds
				case createdDate
				case feedbackEnabled
				case hasAccessToAllBuilds
				case iosBuildsAvailableForAppleSiliconMac
				case isInternalGroup
				case name
				case publicLink
				case publicLinkEnabled
				case publicLinkID = "publicLinkId"
				case publicLinkLimit
				case publicLinkLimitEnabled
			}

			public enum FieldsAppPreOrders: String, Codable, CaseIterable {
				case app
				case appReleaseDate
				case preOrderAvailableDate
			}

			public enum FieldsAppPrices: String, Codable, CaseIterable {
				case app
				case priceTier
			}

			public enum FieldsGameCenterEnabledVersions: String, Codable, CaseIterable {
				case app
				case compatibleVersions
				case iconAsset
				case platform
				case versionString
			}

			public enum FieldsSubscriptionGracePeriods: String, Codable, CaseIterable {
				case app
				case optIn
			}

			public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
				case app
				case enabled
				case inAppPurchaseV2
				case promotionImages
				case state
				case subscription
				case visibleForAllUsers
			}

			public enum FieldsEndUserLicenseAgreements: String, Codable, CaseIterable {
				case agreementText
				case app
				case territories
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

			public enum FieldsAppCustomProductPages: String, Codable, CaseIterable {
				case app
				case appCustomProductPageVersions
				case appStoreVersionTemplate
				case customProductPageTemplate
				case name
				case url
				case visible
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

			public enum FieldsAppEvents: String, Codable, CaseIterable {
				case app
				case archivedTerritorySchedules
				case badge
				case deepLink
				case eventState
				case localizations
				case primaryLocale
				case priority
				case purchaseRequirement
				case purpose
				case referenceName
				case territorySchedules
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
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

			public enum Include: String, Codable, CaseIterable {
				case appClips
				case appCustomProductPages
				case appEvents
				case appInfos
				case appStoreVersions
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case builds
				case ciProduct
				case endUserLicenseAgreement
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case preOrder
				case preReleaseVersions
				case prices
				case promotedPurchases
				case reviewSubmissions
				case subscriptionGracePeriod
				case subscriptionGroups
			}

			public init(fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]? = nil, fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]? = nil, fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsCiProducts: [FieldsCiProducts]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsReviewSubmissions: [FieldsReviewSubmissions]? = nil, fieldsBetaGroups: [FieldsBetaGroups]? = nil, fieldsAppPreOrders: [FieldsAppPreOrders]? = nil, fieldsAppPrices: [FieldsAppPrices]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]? = nil, fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppCustomProductPages: [FieldsAppCustomProductPages]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsAppEvents: [FieldsAppEvents]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, limitBetaGroups: Int? = nil, limitAppStoreVersions: Int? = nil, limitPreReleaseVersions: Int? = nil, limitBetaAppLocalizations: Int? = nil, limitBuilds: Int? = nil, limitAppInfos: Int? = nil, limitAppClips: Int? = nil, limitPrices: Int? = nil, limitAvailableTerritories: Int? = nil, limitInAppPurchases: Int? = nil, limitSubscriptionGroups: Int? = nil, limitGameCenterEnabledVersions: Int? = nil, limitAppCustomProductPages: Int? = nil, limitInAppPurchasesV2: Int? = nil, limitPromotedPurchases: Int? = nil, limitAppEvents: Int? = nil, limitReviewSubmissions: Int? = nil, include: [Include]? = nil) {
				self.fieldsBetaLicenseAgreements = fieldsBetaLicenseAgreements
				self.fieldsBetaAppReviewDetails = fieldsBetaAppReviewDetails
				self.fieldsAppClips = fieldsAppClips
				self.fieldsBetaAppLocalizations = fieldsBetaAppLocalizations
				self.fieldsAppInfos = fieldsAppInfos
				self.fieldsPreReleaseVersions = fieldsPreReleaseVersions
				self.fieldsInAppPurchases = fieldsInAppPurchases
				self.fieldsCiProducts = fieldsCiProducts
				self.fieldsSubscriptionGroups = fieldsSubscriptionGroups
				self.fieldsReviewSubmissions = fieldsReviewSubmissions
				self.fieldsBetaGroups = fieldsBetaGroups
				self.fieldsAppPreOrders = fieldsAppPreOrders
				self.fieldsAppPrices = fieldsAppPrices
				self.fieldsGameCenterEnabledVersions = fieldsGameCenterEnabledVersions
				self.fieldsSubscriptionGracePeriods = fieldsSubscriptionGracePeriods
				self.fieldsPromotedPurchases = fieldsPromotedPurchases
				self.fieldsEndUserLicenseAgreements = fieldsEndUserLicenseAgreements
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsAppCustomProductPages = fieldsAppCustomProductPages
				self.fieldsApps = fieldsApps
				self.fieldsAppEvents = fieldsAppEvents
				self.fieldsTerritories = fieldsTerritories
				self.fieldsBuilds = fieldsBuilds
				self.limitBetaGroups = limitBetaGroups
				self.limitAppStoreVersions = limitAppStoreVersions
				self.limitPreReleaseVersions = limitPreReleaseVersions
				self.limitBetaAppLocalizations = limitBetaAppLocalizations
				self.limitBuilds = limitBuilds
				self.limitAppInfos = limitAppInfos
				self.limitAppClips = limitAppClips
				self.limitPrices = limitPrices
				self.limitAvailableTerritories = limitAvailableTerritories
				self.limitInAppPurchases = limitInAppPurchases
				self.limitSubscriptionGroups = limitSubscriptionGroups
				self.limitGameCenterEnabledVersions = limitGameCenterEnabledVersions
				self.limitAppCustomProductPages = limitAppCustomProductPages
				self.limitInAppPurchasesV2 = limitInAppPurchasesV2
				self.limitPromotedPurchases = limitPromotedPurchases
				self.limitAppEvents = limitAppEvents
				self.limitReviewSubmissions = limitReviewSubmissions
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsBetaLicenseAgreements, forKey: "fields[betaLicenseAgreements]")
				encoder.encode(fieldsBetaAppReviewDetails, forKey: "fields[betaAppReviewDetails]")
				encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
				encoder.encode(fieldsBetaAppLocalizations, forKey: "fields[betaAppLocalizations]")
				encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
				encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
				encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
				encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
				encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
				encoder.encode(fieldsReviewSubmissions, forKey: "fields[reviewSubmissions]")
				encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]")
				encoder.encode(fieldsAppPreOrders, forKey: "fields[appPreOrders]")
				encoder.encode(fieldsAppPrices, forKey: "fields[appPrices]")
				encoder.encode(fieldsGameCenterEnabledVersions, forKey: "fields[gameCenterEnabledVersions]")
				encoder.encode(fieldsSubscriptionGracePeriods, forKey: "fields[subscriptionGracePeriods]")
				encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
				encoder.encode(fieldsEndUserLicenseAgreements, forKey: "fields[endUserLicenseAgreements]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsAppCustomProductPages, forKey: "fields[appCustomProductPages]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsAppEvents, forKey: "fields[appEvents]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
				encoder.encode(limitAppStoreVersions, forKey: "limit[appStoreVersions]")
				encoder.encode(limitPreReleaseVersions, forKey: "limit[preReleaseVersions]")
				encoder.encode(limitBetaAppLocalizations, forKey: "limit[betaAppLocalizations]")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				encoder.encode(limitAppInfos, forKey: "limit[appInfos]")
				encoder.encode(limitAppClips, forKey: "limit[appClips]")
				encoder.encode(limitPrices, forKey: "limit[prices]")
				encoder.encode(limitAvailableTerritories, forKey: "limit[availableTerritories]")
				encoder.encode(limitInAppPurchases, forKey: "limit[inAppPurchases]")
				encoder.encode(limitSubscriptionGroups, forKey: "limit[subscriptionGroups]")
				encoder.encode(limitGameCenterEnabledVersions, forKey: "limit[gameCenterEnabledVersions]")
				encoder.encode(limitAppCustomProductPages, forKey: "limit[appCustomProductPages]")
				encoder.encode(limitInAppPurchasesV2, forKey: "limit[inAppPurchasesV2]")
				encoder.encode(limitPromotedPurchases, forKey: "limit[promotedPurchases]")
				encoder.encode(limitAppEvents, forKey: "limit[appEvents]")
				encoder.encode(limitReviewSubmissions, forKey: "limit[reviewSubmissions]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
