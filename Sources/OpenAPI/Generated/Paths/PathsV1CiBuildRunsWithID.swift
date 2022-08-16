// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiBuildRuns {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/ciBuildRuns/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiBuildRunResponse> {
			Request(method: "GET", url: path, query: parameters?.asQuery, id: "ciBuildRuns-get_instance")
		}

		public struct GetParameters {
			public var fieldsCiBuildRuns: [FieldsCiBuildRuns]?
			public var include: [Include]?
			public var fieldsCiBuildActions: [FieldsCiBuildActions]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var limitBuilds: Int?

			public enum FieldsCiBuildRuns: String, Codable, CaseIterable {
				case actions
				case buildRun
				case builds
				case cancelReason
				case clean
				case completionStatus
				case createdDate
				case destinationBranch
				case destinationCommit
				case executionProgress
				case finishedDate
				case isPullRequestBuild
				case issueCounts
				case number
				case product
				case pullRequest
				case sourceBranchOrTag
				case sourceCommit
				case startReason
				case startedDate
				case workflow
			}

			public enum Include: String, Codable, CaseIterable {
				case builds
				case destinationBranch
				case product
				case pullRequest
				case sourceBranchOrTag
				case workflow
			}

			public enum FieldsCiBuildActions: String, Codable, CaseIterable {
				case actionType
				case artifacts
				case buildRun
				case completionStatus
				case executionProgress
				case finishedDate
				case isRequiredToPass
				case issueCounts
				case issues
				case name
				case startedDate
				case testResults
			}

			public enum FieldsBuilds: String, Codable, CaseIterable {
				case app
				case appEncryptionDeclaration
				case appStoreVersion
				case betaAppReviewSubmission
				case betaBuildLocalizations
				case betaGroups
				case buildAudienceType
				case buildBetaDetail
				case buildBundles
				case computedMinMacOsVersion
				case diagnosticSignatures
				case expirationDate
				case expired
				case iconAssetToken
				case icons
				case individualTesters
				case lsMinimumSystemVersion
				case minOsVersion
				case perfPowerMetrics
				case preReleaseVersion
				case processingState
				case uploadedDate
				case usesNonExemptEncryption
				case version
			}

			public init(fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, include: [Include]? = nil, fieldsCiBuildActions: [FieldsCiBuildActions]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, limitBuilds: Int? = nil) {
				self.fieldsCiBuildRuns = fieldsCiBuildRuns
				self.include = include
				self.fieldsCiBuildActions = fieldsCiBuildActions
				self.fieldsBuilds = fieldsBuilds
				self.limitBuilds = limitBuilds
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsCiBuildActions, forKey: "fields[ciBuildActions]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				return encoder.items
			}
		}
	}
}
