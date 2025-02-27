// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AgeRatingDeclarationUpdateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable {
			case ageRatingDeclarations
		}

		public struct Attributes: Codable {
			public var alcoholTobaccoOrDrugUseOrReferences: AlcoholTobaccoOrDrugUseOrReferences?
			public var contests: Contests?
			/// - warning: Deprecated.
			public var isGamblingAndContests: Bool?
			public var isGambling: Bool?
			public var gamblingSimulated: GamblingSimulated?
			public var kidsAgeBand: KidsAgeBand?
			public var medicalOrTreatmentInformation: MedicalOrTreatmentInformation?
			public var profanityOrCrudeHumor: ProfanityOrCrudeHumor?
			public var sexualContentGraphicAndNudity: SexualContentGraphicAndNudity?
			public var sexualContentOrNudity: SexualContentOrNudity?
			public var isSeventeenPlus: Bool?
			public var horrorOrFearThemes: HorrorOrFearThemes?
			public var matureOrSuggestiveThemes: MatureOrSuggestiveThemes?
			public var isUnrestrictedWebAccess: Bool?
			public var violenceCartoonOrFantasy: ViolenceCartoonOrFantasy?
			public var violenceRealisticProlongedGraphicOrSadistic: ViolenceRealisticProlongedGraphicOrSadistic?
			public var violenceRealistic: ViolenceRealistic?

			public enum AlcoholTobaccoOrDrugUseOrReferences: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum Contests: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum GamblingSimulated: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum MedicalOrTreatmentInformation: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum ProfanityOrCrudeHumor: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum SexualContentGraphicAndNudity: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum SexualContentOrNudity: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum HorrorOrFearThemes: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum MatureOrSuggestiveThemes: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum ViolenceCartoonOrFantasy: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum ViolenceRealisticProlongedGraphicOrSadistic: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum ViolenceRealistic: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public init(alcoholTobaccoOrDrugUseOrReferences: AlcoholTobaccoOrDrugUseOrReferences? = nil, contests: Contests? = nil, isGamblingAndContests: Bool? = nil, isGambling: Bool? = nil, gamblingSimulated: GamblingSimulated? = nil, kidsAgeBand: KidsAgeBand? = nil, medicalOrTreatmentInformation: MedicalOrTreatmentInformation? = nil, profanityOrCrudeHumor: ProfanityOrCrudeHumor? = nil, sexualContentGraphicAndNudity: SexualContentGraphicAndNudity? = nil, sexualContentOrNudity: SexualContentOrNudity? = nil, isSeventeenPlus: Bool? = nil, horrorOrFearThemes: HorrorOrFearThemes? = nil, matureOrSuggestiveThemes: MatureOrSuggestiveThemes? = nil, isUnrestrictedWebAccess: Bool? = nil, violenceCartoonOrFantasy: ViolenceCartoonOrFantasy? = nil, violenceRealisticProlongedGraphicOrSadistic: ViolenceRealisticProlongedGraphicOrSadistic? = nil, violenceRealistic: ViolenceRealistic? = nil) {
				self.alcoholTobaccoOrDrugUseOrReferences = alcoholTobaccoOrDrugUseOrReferences
				self.contests = contests
				self.isGamblingAndContests = isGamblingAndContests
				self.isGambling = isGambling
				self.gamblingSimulated = gamblingSimulated
				self.kidsAgeBand = kidsAgeBand
				self.medicalOrTreatmentInformation = medicalOrTreatmentInformation
				self.profanityOrCrudeHumor = profanityOrCrudeHumor
				self.sexualContentGraphicAndNudity = sexualContentGraphicAndNudity
				self.sexualContentOrNudity = sexualContentOrNudity
				self.isSeventeenPlus = isSeventeenPlus
				self.horrorOrFearThemes = horrorOrFearThemes
				self.matureOrSuggestiveThemes = matureOrSuggestiveThemes
				self.isUnrestrictedWebAccess = isUnrestrictedWebAccess
				self.violenceCartoonOrFantasy = violenceCartoonOrFantasy
				self.violenceRealisticProlongedGraphicOrSadistic = violenceRealisticProlongedGraphicOrSadistic
				self.violenceRealistic = violenceRealistic
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.alcoholTobaccoOrDrugUseOrReferences = try values.decodeIfPresent(AlcoholTobaccoOrDrugUseOrReferences.self, forKey: "alcoholTobaccoOrDrugUseOrReferences")
				self.contests = try values.decodeIfPresent(Contests.self, forKey: "contests")
				self.isGamblingAndContests = try values.decodeIfPresent(Bool.self, forKey: "gamblingAndContests")
				self.isGambling = try values.decodeIfPresent(Bool.self, forKey: "gambling")
				self.gamblingSimulated = try values.decodeIfPresent(GamblingSimulated.self, forKey: "gamblingSimulated")
				self.kidsAgeBand = try values.decodeIfPresent(KidsAgeBand.self, forKey: "kidsAgeBand")
				self.medicalOrTreatmentInformation = try values.decodeIfPresent(MedicalOrTreatmentInformation.self, forKey: "medicalOrTreatmentInformation")
				self.profanityOrCrudeHumor = try values.decodeIfPresent(ProfanityOrCrudeHumor.self, forKey: "profanityOrCrudeHumor")
				self.sexualContentGraphicAndNudity = try values.decodeIfPresent(SexualContentGraphicAndNudity.self, forKey: "sexualContentGraphicAndNudity")
				self.sexualContentOrNudity = try values.decodeIfPresent(SexualContentOrNudity.self, forKey: "sexualContentOrNudity")
				self.isSeventeenPlus = try values.decodeIfPresent(Bool.self, forKey: "seventeenPlus")
				self.horrorOrFearThemes = try values.decodeIfPresent(HorrorOrFearThemes.self, forKey: "horrorOrFearThemes")
				self.matureOrSuggestiveThemes = try values.decodeIfPresent(MatureOrSuggestiveThemes.self, forKey: "matureOrSuggestiveThemes")
				self.isUnrestrictedWebAccess = try values.decodeIfPresent(Bool.self, forKey: "unrestrictedWebAccess")
				self.violenceCartoonOrFantasy = try values.decodeIfPresent(ViolenceCartoonOrFantasy.self, forKey: "violenceCartoonOrFantasy")
				self.violenceRealisticProlongedGraphicOrSadistic = try values.decodeIfPresent(ViolenceRealisticProlongedGraphicOrSadistic.self, forKey: "violenceRealisticProlongedGraphicOrSadistic")
				self.violenceRealistic = try values.decodeIfPresent(ViolenceRealistic.self, forKey: "violenceRealistic")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(alcoholTobaccoOrDrugUseOrReferences, forKey: "alcoholTobaccoOrDrugUseOrReferences")
				try values.encodeIfPresent(contests, forKey: "contests")
				try values.encodeIfPresent(isGamblingAndContests, forKey: "gamblingAndContests")
				try values.encodeIfPresent(isGambling, forKey: "gambling")
				try values.encodeIfPresent(gamblingSimulated, forKey: "gamblingSimulated")
				try values.encodeIfPresent(kidsAgeBand, forKey: "kidsAgeBand")
				try values.encodeIfPresent(medicalOrTreatmentInformation, forKey: "medicalOrTreatmentInformation")
				try values.encodeIfPresent(profanityOrCrudeHumor, forKey: "profanityOrCrudeHumor")
				try values.encodeIfPresent(sexualContentGraphicAndNudity, forKey: "sexualContentGraphicAndNudity")
				try values.encodeIfPresent(sexualContentOrNudity, forKey: "sexualContentOrNudity")
				try values.encodeIfPresent(isSeventeenPlus, forKey: "seventeenPlus")
				try values.encodeIfPresent(horrorOrFearThemes, forKey: "horrorOrFearThemes")
				try values.encodeIfPresent(matureOrSuggestiveThemes, forKey: "matureOrSuggestiveThemes")
				try values.encodeIfPresent(isUnrestrictedWebAccess, forKey: "unrestrictedWebAccess")
				try values.encodeIfPresent(violenceCartoonOrFantasy, forKey: "violenceCartoonOrFantasy")
				try values.encodeIfPresent(violenceRealisticProlongedGraphicOrSadistic, forKey: "violenceRealisticProlongedGraphicOrSadistic")
				try values.encodeIfPresent(violenceRealistic, forKey: "violenceRealistic")
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.id = try values.decode(String.self, forKey: "id")
			self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(id, forKey: "id")
			try values.encodeIfPresent(attributes, forKey: "attributes")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
