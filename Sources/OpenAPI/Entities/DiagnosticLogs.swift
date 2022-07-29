// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct DiagnosticLogs: Codable {
	public var productData: [ProductDatum]?
	public var version: String?

	public struct ProductDatum: Codable {
		public var signatureID: String?
		public var diagnosticInsights: [DiagnosticInsight]?
		public var diagnosticLogs: [DiagnosticLog]?

		public struct DiagnosticInsight: Codable {
			public var insightsURL: String?
			public var insightsCategory: String?
			public var insightsString: String?

			public init(insightsURL: String? = nil, insightsCategory: String? = nil, insightsString: String? = nil) {
				self.insightsURL = insightsURL
				self.insightsCategory = insightsCategory
				self.insightsString = insightsString
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.insightsURL = try values.decodeIfPresent(String.self, forKey: "insightsURL")
				self.insightsCategory = try values.decodeIfPresent(String.self, forKey: "insightsCategory")
				self.insightsString = try values.decodeIfPresent(String.self, forKey: "insightsString")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(insightsURL, forKey: "insightsURL")
				try values.encodeIfPresent(insightsCategory, forKey: "insightsCategory")
				try values.encodeIfPresent(insightsString, forKey: "insightsString")
			}
		}

		public struct DiagnosticLog: Codable {
			public var callStackTree: [CallStackTreeItem]?
			public var diagnosticMetaData: DiagnosticMetaData?

			public struct CallStackTreeItem: Codable {
				public var isCallStackPerThread: Bool?
				public var callStacks: [CallStack]?

				public struct CallStack: Codable {
					public var callStackRootFrames: [DiagnosticLogCallStackNode]?

					public init(callStackRootFrames: [DiagnosticLogCallStackNode]? = nil) {
						self.callStackRootFrames = callStackRootFrames
					}

					public init(from decoder: Decoder) throws {
						let values = try decoder.container(keyedBy: StringCodingKey.self)
						self.callStackRootFrames = try values.decodeIfPresent([DiagnosticLogCallStackNode].self, forKey: "callStackRootFrames")
					}

					public func encode(to encoder: Encoder) throws {
						var values = encoder.container(keyedBy: StringCodingKey.self)
						try values.encodeIfPresent(callStackRootFrames, forKey: "callStackRootFrames")
					}
				}

				public init(isCallStackPerThread: Bool? = nil, callStacks: [CallStack]? = nil) {
					self.isCallStackPerThread = isCallStackPerThread
					self.callStacks = callStacks
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.isCallStackPerThread = try values.decodeIfPresent(Bool.self, forKey: "callStackPerThread")
					self.callStacks = try values.decodeIfPresent([CallStack].self, forKey: "callStacks")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(isCallStackPerThread, forKey: "callStackPerThread")
					try values.encodeIfPresent(callStacks, forKey: "callStacks")
				}
			}

			public struct DiagnosticMetaData: Codable {
				public var bundleID: String?
				public var event: String?
				public var osVersion: String?
				public var appVersion: String?
				public var writesCaused: String?
				public var deviceType: String?
				public var platformArchitecture: String?
				public var eventDetail: String?
				public var buildVersion: String?

				public init(bundleID: String? = nil, event: String? = nil, osVersion: String? = nil, appVersion: String? = nil, writesCaused: String? = nil, deviceType: String? = nil, platformArchitecture: String? = nil, eventDetail: String? = nil, buildVersion: String? = nil) {
					self.bundleID = bundleID
					self.event = event
					self.osVersion = osVersion
					self.appVersion = appVersion
					self.writesCaused = writesCaused
					self.deviceType = deviceType
					self.platformArchitecture = platformArchitecture
					self.eventDetail = eventDetail
					self.buildVersion = buildVersion
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.bundleID = try values.decodeIfPresent(String.self, forKey: "bundleId")
					self.event = try values.decodeIfPresent(String.self, forKey: "event")
					self.osVersion = try values.decodeIfPresent(String.self, forKey: "osVersion")
					self.appVersion = try values.decodeIfPresent(String.self, forKey: "appVersion")
					self.writesCaused = try values.decodeIfPresent(String.self, forKey: "writesCaused")
					self.deviceType = try values.decodeIfPresent(String.self, forKey: "deviceType")
					self.platformArchitecture = try values.decodeIfPresent(String.self, forKey: "platformArchitecture")
					self.eventDetail = try values.decodeIfPresent(String.self, forKey: "eventDetail")
					self.buildVersion = try values.decodeIfPresent(String.self, forKey: "buildVersion")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(bundleID, forKey: "bundleId")
					try values.encodeIfPresent(event, forKey: "event")
					try values.encodeIfPresent(osVersion, forKey: "osVersion")
					try values.encodeIfPresent(appVersion, forKey: "appVersion")
					try values.encodeIfPresent(writesCaused, forKey: "writesCaused")
					try values.encodeIfPresent(deviceType, forKey: "deviceType")
					try values.encodeIfPresent(platformArchitecture, forKey: "platformArchitecture")
					try values.encodeIfPresent(eventDetail, forKey: "eventDetail")
					try values.encodeIfPresent(buildVersion, forKey: "buildVersion")
				}
			}

			public init(callStackTree: [CallStackTreeItem]? = nil, diagnosticMetaData: DiagnosticMetaData? = nil) {
				self.callStackTree = callStackTree
				self.diagnosticMetaData = diagnosticMetaData
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.callStackTree = try values.decodeIfPresent([CallStackTreeItem].self, forKey: "callStackTree")
				self.diagnosticMetaData = try values.decodeIfPresent(DiagnosticMetaData.self, forKey: "diagnosticMetaData")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(callStackTree, forKey: "callStackTree")
				try values.encodeIfPresent(diagnosticMetaData, forKey: "diagnosticMetaData")
			}
		}

		public init(signatureID: String? = nil, diagnosticInsights: [DiagnosticInsight]? = nil, diagnosticLogs: [DiagnosticLog]? = nil) {
			self.signatureID = signatureID
			self.diagnosticInsights = diagnosticInsights
			self.diagnosticLogs = diagnosticLogs
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.signatureID = try values.decodeIfPresent(String.self, forKey: "signatureId")
			self.diagnosticInsights = try values.decodeIfPresent([DiagnosticInsight].self, forKey: "diagnosticInsights")
			self.diagnosticLogs = try values.decodeIfPresent([DiagnosticLog].self, forKey: "diagnosticLogs")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(signatureID, forKey: "signatureId")
			try values.encodeIfPresent(diagnosticInsights, forKey: "diagnosticInsights")
			try values.encodeIfPresent(diagnosticLogs, forKey: "diagnosticLogs")
		}
	}

	public init(productData: [ProductDatum]? = nil, version: String? = nil) {
		self.productData = productData
		self.version = version
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.productData = try values.decodeIfPresent([ProductDatum].self, forKey: "productData")
		self.version = try values.decodeIfPresent(String.self, forKey: "version")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encodeIfPresent(productData, forKey: "productData")
		try values.encodeIfPresent(version, forKey: "version")
	}
}
