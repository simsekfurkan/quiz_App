import Foundation

// MARK: - WelcomeElement
struct WelcomeElement: Codable {
    let id: Int
    let question: String
    let description: JSONNull?
    let answers: Answers
    let multipleCorrectAnswers: String
    let correctAnswers: CorrectAnswers
    let correctAnswer: CorrectAnswer
    let explanation, tip: JSONNull?
    let tags: [Tag]
    let category: Category
    let difficulty: Difficulty

    enum CodingKeys: String, CodingKey {
        case id, question, description, answers
        case multipleCorrectAnswers
        case correctAnswers
        case correctAnswer
        case explanation, tip, tags, category, difficulty
    }
}

// MARK: - Answers
struct Answers: Codable {
    let answerA, answerB: String
    let answerC, answerD: String?
    let answerE, answerF: JSONNull?

    enum CodingKeys: String, CodingKey {
        case answerA
        case answerB
        case answerC
        case answerD
        case answerE
        case answerF
    }
}

enum Category: String, Codable {
    case sql = "SQL"
}

enum CorrectAnswer: String, Codable {
    case answerA = "answer_a"
}

// MARK: - CorrectAnswers
struct CorrectAnswers: Codable {
    let answerACorrect, answerBCorrect, answerCCorrect, answerDCorrect: String
    let answerECorrect, answerFCorrect: String

    enum CodingKeys: String, CodingKey {
        case answerACorrect
        case answerBCorrect
        case answerCCorrect
        case answerDCorrect
        case answerECorrect
        case answerFCorrect
    }
}

enum Difficulty: String, Codable {
    case easy = "Easy"
}

// MARK: - Tag
struct Tag: Codable {
    let name: Name
}

enum Name: String, Codable {
    case mySQL = "MySQL"
}

typealias Welcome = [WelcomeElement]

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

