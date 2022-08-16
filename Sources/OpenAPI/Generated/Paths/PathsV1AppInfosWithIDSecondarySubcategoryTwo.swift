// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppInfos.WithID {
	public var secondarySubcategoryTwo: SecondarySubcategoryTwo {
		SecondarySubcategoryTwo(path: path + "/secondarySubcategoryTwo")
	}

	public struct SecondarySubcategoryTwo {
		/// Path: `/v1/appInfos/{id}/secondarySubcategoryTwo`
		public let path: String

		public func get(fieldsAppCategories: [FieldsAppCategories]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppCategoryResponse> {
			Request(method: "GET", url: path, query: makeGetQuery(fieldsAppCategories), id: "appInfos-secondarySubcategoryTwo-get_to_one_related")
		}

		private func makeGetQuery(_ fieldsAppCategories: [FieldsAppCategories]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]", explode: false)
			return encoder.items
		}

		public enum FieldsAppCategories: String, Codable, CaseIterable {
			case parent
			case platforms
			case subcategories
		}
	}
}
