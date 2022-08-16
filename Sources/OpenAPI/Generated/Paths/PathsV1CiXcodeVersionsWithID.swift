// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiXcodeVersions {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/ciXcodeVersions/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiXcodeVersionResponse> {
			Request(method: "GET", url: path, query: parameters?.asQuery, id: "ciXcodeVersions-get_instance")
		}

		public struct GetParameters {
			public var fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?
			public var include: [Include]?
			public var fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?
			public var limitMacOsVersions: Int?

			public enum FieldsCiXcodeVersions: String, Codable, CaseIterable {
				case macOsVersions
				case name
				case testDestinations
				case version
			}

			public enum Include: String, Codable, CaseIterable {
				case macOsVersions
			}

			public enum FieldsCiMacOsVersions: String, Codable, CaseIterable {
				case name
				case version
				case xcodeVersions
			}

			public init(fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, include: [Include]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, limitMacOsVersions: Int? = nil) {
				self.fieldsCiXcodeVersions = fieldsCiXcodeVersions
				self.include = include
				self.fieldsCiMacOsVersions = fieldsCiMacOsVersions
				self.limitMacOsVersions = limitMacOsVersions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
				encoder.encode(limitMacOsVersions, forKey: "limit[macOsVersions]")
				return encoder.items
			}
		}
	}
}
