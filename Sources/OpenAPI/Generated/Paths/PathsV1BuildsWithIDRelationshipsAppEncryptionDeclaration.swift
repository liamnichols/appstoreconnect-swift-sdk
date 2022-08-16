// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID.Relationships {
	public var appEncryptionDeclaration: AppEncryptionDeclaration {
		AppEncryptionDeclaration(path: path + "/appEncryptionDeclaration")
	}

	public struct AppEncryptionDeclaration {
		/// Path: `/v1/builds/{id}/relationships/appEncryptionDeclaration`
		public let path: String

		public var get: Request<AppStoreConnect_Swift_SDK.BuildAppEncryptionDeclarationLinkageResponse> {
			Request(method: "GET", url: path, id: "builds-appEncryptionDeclaration-get_to_one_relationship")
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.BuildAppEncryptionDeclarationLinkageRequest) -> Request<Void> {
			Request(method: "PATCH", url: path, body: body, id: "builds-appEncryptionDeclaration-update_to_one_relationship")
		}
	}
}
