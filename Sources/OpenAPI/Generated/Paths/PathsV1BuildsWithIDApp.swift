// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID {
	public var app: App {
		App(path: path + "/app")
	}

	public struct App {
		/// Path: `/v1/builds/{id}/app`
		public let path: String

		public func get(fieldsApps: [FieldsApps]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppResponse> {
			Request(method: "GET", url: path, query: makeGetQuery(fieldsApps), id: "builds-app-get_to_one_related")
		}

		private func makeGetQuery(_ fieldsApps: [FieldsApps]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsApps, forKey: "fields[apps]", explode: false)
			return encoder.items
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
	}
}
