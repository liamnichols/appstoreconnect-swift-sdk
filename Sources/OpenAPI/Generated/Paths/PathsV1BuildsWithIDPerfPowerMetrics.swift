// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID {
	public var perfPowerMetrics: PerfPowerMetrics {
		PerfPowerMetrics(path: path + "/perfPowerMetrics")
	}

	public struct PerfPowerMetrics {
		/// Path: `/v1/builds/{id}/perfPowerMetrics`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<Data> {
			Request(method: "GET", url: path, query: parameters?.asQuery, id: "builds-perfPowerMetrics-get_to_many_related")
		}

		public struct GetParameters {
			public var filterDeviceType: [String]?
			public var filterMetricType: [FilterMetricType]?
			public var filterPlatform: [FilterPlatform]?

			public enum FilterMetricType: String, Codable, CaseIterable {
				case disk = "DISK"
				case hang = "HANG"
				case battery = "BATTERY"
				case launch = "LAUNCH"
				case memory = "MEMORY"
				case animation = "ANIMATION"
				case termination = "TERMINATION"
			}

			public enum FilterPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
			}

			public init(filterDeviceType: [String]? = nil, filterMetricType: [FilterMetricType]? = nil, filterPlatform: [FilterPlatform]? = nil) {
				self.filterDeviceType = filterDeviceType
				self.filterMetricType = filterMetricType
				self.filterPlatform = filterPlatform
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterDeviceType, forKey: "filter[deviceType]")
				encoder.encode(filterMetricType, forKey: "filter[metricType]")
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				return encoder.items
			}
		}
	}
}
