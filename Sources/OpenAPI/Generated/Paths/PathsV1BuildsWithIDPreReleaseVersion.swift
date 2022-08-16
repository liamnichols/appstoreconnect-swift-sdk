// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID {
	public var preReleaseVersion: PreReleaseVersion {
		PreReleaseVersion(path: path + "/preReleaseVersion")
	}

	public struct PreReleaseVersion {
		/// Path: `/v1/builds/{id}/preReleaseVersion`
		public let path: String

		public func get(fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil) -> Request<AppStoreConnect_Swift_SDK.PrereleaseVersionResponse> {
			Request(method: "GET", url: path, query: makeGetQuery(fieldsPreReleaseVersions), id: "builds-preReleaseVersion-get_to_one_related")
		}

		private func makeGetQuery(_ fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]", explode: false)
			return encoder.items
		}

		public enum FieldsPreReleaseVersions: String, Codable, CaseIterable {
			case app
			case builds
			case platform
			case version
		}
	}
}
