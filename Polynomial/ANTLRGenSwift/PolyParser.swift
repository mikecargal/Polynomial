// Generated from Polynomial/ANTLR/Poly.g4 by ANTLR 4.9
import Antlr4

open class PolyParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = PolyParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(PolyParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, ADD = 1, SUB = 2, MULT = 3, DIV = 4, EXP = 5, L_PAREN = 6, 
                 R_PAREN = 7, X = 8, INT = 9, NL = 10, WS = 11
	}

	public
	static let RULE_polys = 0, RULE_pExpr = 1

	public
	static let ruleNames: [String] = [
		"polys", "pExpr"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'+'", "'-'", "'*'", "'/'", "'^'", "'('", "')'", "'x'", nil, "'\n'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "ADD", "SUB", "MULT", "DIV", "EXP", "L_PAREN", "R_PAREN", "X", "INT", 
		"NL", "WS"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "Poly.g4" }

	override open
	func getRuleNames() -> [String] { return PolyParser.ruleNames }

	override open
	func getSerializedATN() -> String { return PolyParser._serializedATN }

	override open
	func getATN() -> ATN { return PolyParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return PolyParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.9", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,PolyParser._ATN,PolyParser._decisionToDFA, PolyParser._sharedContextCache)
	}


	public class PolysContext: ParserRuleContext {
			open
			func pExpr() -> [PExprContext] {
				return getRuleContexts(PExprContext.self)
			}
			open
			func pExpr(_ i: Int) -> PExprContext? {
				return getRuleContext(PExprContext.self, i)
			}
			open
			func EOF() -> TerminalNode? {
				return getToken(PolyParser.Tokens.EOF.rawValue, 0)
			}
			open
			func NL() -> [TerminalNode] {
				return getTokens(PolyParser.Tokens.NL.rawValue)
			}
			open
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(PolyParser.Tokens.NL.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PolyParser.RULE_polys
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterPolys(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitPolys(self)
			}
		}
	}
	@discardableResult
	 open func polys() throws -> PolysContext {
		var _localctx: PolysContext = PolysContext(_ctx, getState())
		try enterRule(_localctx, 0, PolyParser.RULE_polys)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(4)
		 	try pExpr(0)
		 	setState(9)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PolyParser.Tokens.NL.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(5)
		 		try match(PolyParser.Tokens.NL.rawValue)
		 		setState(6)
		 		try pExpr(0)


		 		setState(11)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(12)
		 	try match(PolyParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class PExprContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return PolyParser.RULE_pExpr
		}
	}
	public class ParenContext: PExprContext {
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(PolyParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func pExpr() -> PExprContext? {
				return getRuleContext(PExprContext.self, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(PolyParser.Tokens.R_PAREN.rawValue, 0)
			}

		public
		init(_ ctx: PExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterParen(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitParen(self)
			}
		}
	}
	public class XContext: PExprContext {
			open
			func X() -> TerminalNode? {
				return getToken(PolyParser.Tokens.X.rawValue, 0)
			}
			open
			func EXP() -> TerminalNode? {
				return getToken(PolyParser.Tokens.EXP.rawValue, 0)
			}
			open
			func INT() -> TerminalNode? {
				return getToken(PolyParser.Tokens.INT.rawValue, 0)
			}

		public
		init(_ ctx: PExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterX(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitX(self)
			}
		}
	}
	public class AddSubContext: PExprContext {
		public var op: Token!
			open
			func pExpr() -> [PExprContext] {
				return getRuleContexts(PExprContext.self)
			}
			open
			func pExpr(_ i: Int) -> PExprContext? {
				return getRuleContext(PExprContext.self, i)
			}
			open
			func ADD() -> TerminalNode? {
				return getToken(PolyParser.Tokens.ADD.rawValue, 0)
			}
			open
			func SUB() -> TerminalNode? {
				return getToken(PolyParser.Tokens.SUB.rawValue, 0)
			}

		public
		init(_ ctx: PExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterAddSub(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitAddSub(self)
			}
		}
	}
	public class IntegerContext: PExprContext {
			open
			func INT() -> TerminalNode? {
				return getToken(PolyParser.Tokens.INT.rawValue, 0)
			}

		public
		init(_ ctx: PExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterInteger(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitInteger(self)
			}
		}
	}
	public class MulDivContext: PExprContext {
		public var op: Token!
			open
			func pExpr() -> [PExprContext] {
				return getRuleContexts(PExprContext.self)
			}
			open
			func pExpr(_ i: Int) -> PExprContext? {
				return getRuleContext(PExprContext.self, i)
			}
			open
			func MULT() -> TerminalNode? {
				return getToken(PolyParser.Tokens.MULT.rawValue, 0)
			}
			open
			func DIV() -> TerminalNode? {
				return getToken(PolyParser.Tokens.DIV.rawValue, 0)
			}

		public
		init(_ ctx: PExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterMulDiv(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitMulDiv(self)
			}
		}
	}

	 public final  func pExpr( ) throws -> PExprContext   {
		return try pExpr(0)
	}
	@discardableResult
	private func pExpr(_ _p: Int) throws -> PExprContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: PExprContext = PExprContext(_ctx, _parentState)
		var _prevctx: PExprContext = _localctx
		let _startState: Int = 2
		try enterRecursionRule(_localctx, 2, PolyParser.RULE_pExpr, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(25)
			try _errHandler.sync(self)
			switch (PolyParser.Tokens(rawValue: try _input.LA(1))!) {
			case .L_PAREN:
				_localctx = ParenContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx

				setState(15)
				try match(PolyParser.Tokens.L_PAREN.rawValue)
				setState(16)
				try pExpr(0)
				setState(17)
				try match(PolyParser.Tokens.R_PAREN.rawValue)

				break

			case .X:
				_localctx = XContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(19)
				try match(PolyParser.Tokens.X.rawValue)
				setState(22)
				try _errHandler.sync(self)
				switch (try getInterpreter().adaptivePredict(_input,1,_ctx)) {
				case 1:
					setState(20)
					try match(PolyParser.Tokens.EXP.rawValue)
					setState(21)
					try match(PolyParser.Tokens.INT.rawValue)

					break
				default: break
				}

				break

			case .INT:
				_localctx = IntegerContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(24)
				try match(PolyParser.Tokens.INT.rawValue)

				break
			default:
				throw ANTLRException.recognition(e: NoViableAltException(self))
			}
			_ctx!.stop = try _input.LT(-1)
			setState(35)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,4,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(33)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,3, _ctx)) {
					case 1:
						_localctx = MulDivContext(  PExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, PolyParser.RULE_pExpr)
						setState(27)
						if (!(precpred(_ctx, 3))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 3)"))
						}
						setState(28)
						_localctx.castdown(MulDivContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == PolyParser.Tokens.MULT.rawValue || _la == PolyParser.Tokens.DIV.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(MulDivContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(29)
						try pExpr(4)

						break
					case 2:
						_localctx = AddSubContext(  PExprContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, PolyParser.RULE_pExpr)
						setState(30)
						if (!(precpred(_ctx, 2))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
						}
						setState(31)
						_localctx.castdown(AddSubContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == PolyParser.Tokens.ADD.rawValue || _la == PolyParser.Tokens.SUB.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(AddSubContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(32)
						try pExpr(3)

						break
					default: break
					}
			 
				}
				setState(37)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,4,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  1:
			return try pExpr_sempred(_localctx?.castdown(PExprContext.self), predIndex)
	    default: return true
		}
	}
	private func pExpr_sempred(_ _localctx: PExprContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 3)
		    case 1:return precpred(_ctx, 2)
		    default: return true
		}
	}


	public
	static let _serializedATN = PolyParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}