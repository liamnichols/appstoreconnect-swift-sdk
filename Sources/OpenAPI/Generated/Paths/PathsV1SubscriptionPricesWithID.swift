// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionPrices {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/subscriptionPrices/{id}`
		public let path: String

		public var delete: Request<Void> {
			Request(method: "DELETE", url: path, id: "subscriptionPrices-delete_instance")
		}
	}
}
