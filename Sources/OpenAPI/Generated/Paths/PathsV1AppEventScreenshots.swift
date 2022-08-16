// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appEventScreenshots: AppEventScreenshots {
		AppEventScreenshots(path: path + "/appEventScreenshots")
	}

	public struct AppEventScreenshots {
		/// Path: `/v1/appEventScreenshots`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppEventScreenshotCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppEventScreenshotResponse> {
			Request(method: "POST", url: path, body: body, id: "appEventScreenshots-create_instance")
		}
	}
}
