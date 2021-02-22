// Generated from Polynomial/ANTLR/Poly.g4 by ANTLR 4.9
import Antlr4

open class PolyLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = PolyLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(PolyLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let PLUS=1, MINUS=2, MULT=3, DIV=4, EXP=5, L_PAREN=6, R_PAREN=7, 
            VAR=8, INT=9, DECIMAL=10, NL=11, WS=12

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"PLUS", "MINUS", "MULT", "DIV", "EXP", "L_PAREN", "R_PAREN", "VAR", "INT", 
		"DECIMAL", "NL", "WS"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'+'", "'-'", "'*'", "'/'", "'^'", "'('", "')'", nil, nil, nil, "'\n'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "PLUS", "MINUS", "MULT", "DIV", "EXP", "L_PAREN", "R_PAREN", "VAR", 
		"INT", "DECIMAL", "NL", "WS"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	override open
	func getVocabulary() -> Vocabulary {
		return PolyLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.9", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, PolyLexer._ATN, PolyLexer._decisionToDFA, PolyLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "Poly.g4" }

	override open
	func getRuleNames() -> [String] { return PolyLexer.ruleNames }

	override open
	func getSerializedATN() -> String { return PolyLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return PolyLexer.channelNames }

	override open
	func getModeNames() -> [String] { return PolyLexer.modeNames }

	override open
	func getATN() -> ATN { return PolyLexer._ATN }


	public
	static let _serializedATN: String = PolyLexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}