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
		case EOF = -1, PLUS = 1, MINUS = 2, MULT = 3, DIV = 4, EXP = 5, L_PAREN = 6, 
                 R_PAREN = 7, VAR = 8, INT = 9, DECIMAL = 10, NL = 11, WS = 12
	}

	public
	static let RULE_polys = 0, RULE_fullPExpr = 1, RULE_pExpr = 2, RULE_term = 3, 
            RULE_degree = 4, RULE_coefficient = 5

	public
	static let ruleNames: [String] = [
		"polys", "fullPExpr", "pExpr", "term", "degree", "coefficient"
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
		 	setState(12)
		 	try pExpr(0)
		 	setState(17)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PolyParser.Tokens.NL.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(13)
		 		try match(PolyParser.Tokens.NL.rawValue)
		 		setState(14)
		 		try pExpr(0)


		 		setState(19)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(20)
		 	try match(PolyParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FullPExprContext: ParserRuleContext {
			open
			func pExpr() -> PExprContext? {
				return getRuleContext(PExprContext.self, 0)
			}
			open
			func EOF() -> TerminalNode? {
				return getToken(PolyParser.Tokens.EOF.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PolyParser.RULE_fullPExpr
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterFullPExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitFullPExpr(self)
			}
		}
	}
	@discardableResult
	 open func fullPExpr() throws -> FullPExprContext {
		var _localctx: FullPExprContext = FullPExprContext(_ctx, getState())
		try enterRule(_localctx, 2, PolyParser.RULE_fullPExpr)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(22)
		 	try pExpr(0)
		 	setState(23)
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
	public class ParenPExprContext: PExprContext {
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
				listener.enterParenPExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitParenPExpr(self)
			}
		}
	}
	public class AddSubContext: PExprContext {
		public var lhs: PExprContext!
		public var op: Token!
		public var rhs: PExprContext!
			open
			func pExpr() -> [PExprContext] {
				return getRuleContexts(PExprContext.self)
			}
			open
			func pExpr(_ i: Int) -> PExprContext? {
				return getRuleContext(PExprContext.self, i)
			}
			open
			func PLUS() -> TerminalNode? {
				return getToken(PolyParser.Tokens.PLUS.rawValue, 0)
			}
			open
			func MINUS() -> TerminalNode? {
				return getToken(PolyParser.Tokens.MINUS.rawValue, 0)
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
	public class PTermContext: PExprContext {
			open
			func term() -> TermContext? {
				return getRuleContext(TermContext.self, 0)
			}

		public
		init(_ ctx: PExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterPTerm(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitPTerm(self)
			}
		}
	}
	public class MulDivContext: PExprContext {
		public var lhs: PExprContext!
		public var op: Token!
		public var rhs: PExprContext!
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
		let _startState: Int = 4
		try enterRecursionRule(_localctx, 4, PolyParser.RULE_pExpr, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(31)
			try _errHandler.sync(self)
			switch (PolyParser.Tokens(rawValue: try _input.LA(1))!) {
			case .L_PAREN:
				_localctx = ParenPExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx

				setState(26)
				try match(PolyParser.Tokens.L_PAREN.rawValue)
				setState(27)
				try pExpr(0)
				setState(28)
				try match(PolyParser.Tokens.R_PAREN.rawValue)

				break
			case .MINUS:fallthrough
			case .VAR:fallthrough
			case .INT:fallthrough
			case .DECIMAL:
				_localctx = PTermContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(30)
				try term()

				break
			default:
				throw ANTLRException.recognition(e: NoViableAltException(self))
			}
			_ctx!.stop = try _input.LT(-1)
			setState(41)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,3,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(39)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,2, _ctx)) {
					case 1:
						_localctx = MulDivContext(  PExprContext(_parentctx, _parentState))
						(_localctx as! MulDivContext).lhs = _prevctx
						try pushNewRecursionContext(_localctx, _startState, PolyParser.RULE_pExpr)
						setState(33)
						if (!(precpred(_ctx, 3))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 3)"))
						}
						setState(34)
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
						setState(35)
						try {
								let assignmentValue = try pExpr(4)
								_localctx.castdown(MulDivContext.self).rhs = assignmentValue
						     }()


						break
					case 2:
						_localctx = AddSubContext(  PExprContext(_parentctx, _parentState))
						(_localctx as! AddSubContext).lhs = _prevctx
						try pushNewRecursionContext(_localctx, _startState, PolyParser.RULE_pExpr)
						setState(36)
						if (!(precpred(_ctx, 2))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
						}
						setState(37)
						_localctx.castdown(AddSubContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == PolyParser.Tokens.PLUS.rawValue || _la == PolyParser.Tokens.MINUS.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(AddSubContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(38)
						try {
								let assignmentValue = try pExpr(3)
								_localctx.castdown(AddSubContext.self).rhs = assignmentValue
						     }()


						break
					default: break
					}
			 
				}
				setState(43)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,3,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	public class TermContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return PolyParser.RULE_term
		}
	}
	public class CvdTermContext: TermContext {
		public var v: Token!
			open
			func coefficient() -> CoefficientContext? {
				return getRuleContext(CoefficientContext.self, 0)
			}
			open
			func degree() -> DegreeContext? {
				return getRuleContext(DegreeContext.self, 0)
			}
			open
			func VAR() -> TerminalNode? {
				return getToken(PolyParser.Tokens.VAR.rawValue, 0)
			}
			open
			func MULT() -> TerminalNode? {
				return getToken(PolyParser.Tokens.MULT.rawValue, 0)
			}

		public
		init(_ ctx: TermContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterCvdTerm(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitCvdTerm(self)
			}
		}
	}
	public class CTermContext: TermContext {
			open
			func coefficient() -> CoefficientContext? {
				return getRuleContext(CoefficientContext.self, 0)
			}

		public
		init(_ ctx: TermContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterCTerm(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitCTerm(self)
			}
		}
	}
	public class CvTermContext: TermContext {
		public var v: Token!
			open
			func coefficient() -> CoefficientContext? {
				return getRuleContext(CoefficientContext.self, 0)
			}
			open
			func VAR() -> TerminalNode? {
				return getToken(PolyParser.Tokens.VAR.rawValue, 0)
			}

		public
		init(_ ctx: TermContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterCvTerm(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitCvTerm(self)
			}
		}
	}
	public class VdTermContext: TermContext {
			open
			func VAR() -> TerminalNode? {
				return getToken(PolyParser.Tokens.VAR.rawValue, 0)
			}
			open
			func degree() -> DegreeContext? {
				return getRuleContext(DegreeContext.self, 0)
			}

		public
		init(_ ctx: TermContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterVdTerm(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitVdTerm(self)
			}
		}
	}
	@discardableResult
	 open func term() throws -> TermContext {
		var _localctx: TermContext = TermContext(_ctx, getState())
		try enterRule(_localctx, 6, PolyParser.RULE_term)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(57)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,5, _ctx)) {
		 	case 1:
		 		_localctx =  CvdTermContext(_localctx);
		 		try enterOuterAlt(_localctx, 1)
		 		setState(44)
		 		try coefficient()
		 		setState(46)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PolyParser.Tokens.MULT.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(45)
		 			try match(PolyParser.Tokens.MULT.rawValue)

		 		}

		 		setState(48)
		 		try {
		 				let assignmentValue = try match(PolyParser.Tokens.VAR.rawValue)
		 				_localctx.castdown(CvdTermContext.self).v = assignmentValue
		 		     }()

		 		setState(49)
		 		try degree()

		 		break
		 	case 2:
		 		_localctx =  VdTermContext(_localctx);
		 		try enterOuterAlt(_localctx, 2)
		 		setState(51)
		 		try match(PolyParser.Tokens.VAR.rawValue)
		 		setState(52)
		 		try degree()

		 		break
		 	case 3:
		 		_localctx =  CvTermContext(_localctx);
		 		try enterOuterAlt(_localctx, 3)
		 		setState(53)
		 		try coefficient()
		 		setState(54)
		 		try {
		 				let assignmentValue = try match(PolyParser.Tokens.VAR.rawValue)
		 				_localctx.castdown(CvTermContext.self).v = assignmentValue
		 		     }()


		 		break
		 	case 4:
		 		_localctx =  CTermContext(_localctx);
		 		try enterOuterAlt(_localctx, 4)
		 		setState(56)
		 		try coefficient()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DegreeContext: ParserRuleContext {
		open var degreeValue: Token!
			open
			func EXP() -> TerminalNode? {
				return getToken(PolyParser.Tokens.EXP.rawValue, 0)
			}
			open
			func INT() -> TerminalNode? {
				return getToken(PolyParser.Tokens.INT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PolyParser.RULE_degree
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterDegree(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitDegree(self)
			}
		}
	}
	@discardableResult
	 open func degree() throws -> DegreeContext {
		var _localctx: DegreeContext = DegreeContext(_ctx, getState())
		try enterRule(_localctx, 8, PolyParser.RULE_degree)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(59)
		 	try match(PolyParser.Tokens.EXP.rawValue)
		 	setState(60)
		 	try {
		 			let assignmentValue = try match(PolyParser.Tokens.INT.rawValue)
		 			_localctx.castdown(DegreeContext.self).degreeValue = assignmentValue
		 	     }()


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CoefficientContext: ParserRuleContext {
		open var neg: Token!
			open
			func INT() -> TerminalNode? {
				return getToken(PolyParser.Tokens.INT.rawValue, 0)
			}
			open
			func DECIMAL() -> TerminalNode? {
				return getToken(PolyParser.Tokens.DECIMAL.rawValue, 0)
			}
			open
			func MINUS() -> TerminalNode? {
				return getToken(PolyParser.Tokens.MINUS.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PolyParser.RULE_coefficient
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.enterCoefficient(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PolyListener {
				listener.exitCoefficient(self)
			}
		}
	}
	@discardableResult
	 open func coefficient() throws -> CoefficientContext {
		var _localctx: CoefficientContext = CoefficientContext(_ctx, getState())
		try enterRule(_localctx, 10, PolyParser.RULE_coefficient)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(63)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PolyParser.Tokens.MINUS.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(62)
		 		try {
		 				let assignmentValue = try match(PolyParser.Tokens.MINUS.rawValue)
		 				_localctx.castdown(CoefficientContext.self).neg = assignmentValue
		 		     }()


		 	}

		 	setState(65)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PolyParser.Tokens.INT.rawValue || _la == PolyParser.Tokens.DECIMAL.rawValue
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  2:
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