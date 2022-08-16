// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var endUserLicenseAgreement: EndUserLicenseAgreement {
		EndUserLicenseAgreement(path: path + "/endUserLicenseAgreement")
	}

	public struct EndUserLicenseAgreement {
		/// Path: `/v1/apps/{id}/endUserLicenseAgreement`
		public let path: String

		public func get(fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]? = nil) -> Request<AppStoreConnect_Swift_SDK.EndUserLicenseAgreementResponse> {
			Request(method: "GET", url: path, query: makeGetQuery(fieldsEndUserLicenseAgreements), id: "apps-endUserLicenseAgreement-get_to_one_related")
		}

		private func makeGetQuery(_ fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsEndUserLicenseAgreements, forKey: "fields[endUserLicenseAgreements]", explode: false)
			return encoder.items
		}

		public enum FieldsEndUserLicenseAgreements: String, Codable, CaseIterable {
			case agreementText
			case app
			case territories
		}
	}
}
