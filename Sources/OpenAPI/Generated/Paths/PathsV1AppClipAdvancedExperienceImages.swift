// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appClipAdvancedExperienceImages: AppClipAdvancedExperienceImages {
		AppClipAdvancedExperienceImages(path: path + "/appClipAdvancedExperienceImages")
	}

	public struct AppClipAdvancedExperienceImages {
		/// Path: `/v1/appClipAdvancedExperienceImages`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppClipAdvancedExperienceImageCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppClipAdvancedExperienceImageResponse> {
			Request(method: "POST", url: path, body: body, id: "appClipAdvancedExperienceImages-create_instance")
		}
	}
}
