// Generated from Luazinha.g4 by ANTLR 4.7.2
package trabalho2;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class LuazinhaParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, T__40=41, T__41=42, T__42=43, T__43=44, T__44=45, 
		T__45=46, T__46=47, NOME=48, CADEIA=49, NUMERO=50, COMENTARIO=51, WS=52;
	public static final int
		RULE_programa = 0, RULE_trecho = 1, RULE_bloco = 2, RULE_comando = 3, 
		RULE_ultimocomando = 4, RULE_nomedafuncao = 5, RULE_listavar = 6, RULE_var = 7, 
		RULE_listadenomes = 8, RULE_listaexp = 9, RULE_exp = 10, RULE_expprefixo = 11, 
		RULE_expprefixo2 = 12, RULE_chamadadefuncao = 13, RULE_args = 14, RULE_funcao = 15, 
		RULE_corpodafuncao = 16, RULE_listapar = 17, RULE_construtortabela = 18, 
		RULE_listadecampos = 19, RULE_campo = 20, RULE_separadordecampos = 21, 
		RULE_opbin = 22, RULE_opunaria = 23;
	private static String[] makeRuleNames() {
		return new String[] {
			"programa", "trecho", "bloco", "comando", "ultimocomando", "nomedafuncao", 
			"listavar", "var", "listadenomes", "listaexp", "exp", "expprefixo", "expprefixo2", 
			"chamadadefuncao", "args", "funcao", "corpodafuncao", "listapar", "construtortabela", 
			"listadecampos", "campo", "separadordecampos", "opbin", "opunaria"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "';'", "'='", "'do'", "'end'", "'while'", "'repeat'", "'until'", 
			"'if'", "'then'", "'elseif'", "'else'", "'for'", "','", "'in'", "'function'", 
			"'local'", "'return'", "'break'", "'.'", "':'", "'['", "']'", "'nil'", 
			"'false'", "'true'", "'...'", "'('", "')'", "'{'", "'}'", "'+'", "'-'", 
			"'*'", "'/'", "'^'", "'%'", "'..'", "'<'", "'<='", "'>'", "'>='", "'=='", 
			"'~='", "'and'", "'or'", "'not'", "'#'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			"NOME", "CADEIA", "NUMERO", "COMENTARIO", "WS"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Luazinha.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public LuazinhaParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class ProgramaContext extends ParserRuleContext {
		public TrechoContext trecho() {
			return getRuleContext(TrechoContext.class,0);
		}
		public ProgramaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_programa; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterPrograma(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitPrograma(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitPrograma(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramaContext programa() throws RecognitionException {
		ProgramaContext _localctx = new ProgramaContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_programa);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(48);
			trecho();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TrechoContext extends ParserRuleContext {
		public List<ComandoContext> comando() {
			return getRuleContexts(ComandoContext.class);
		}
		public ComandoContext comando(int i) {
			return getRuleContext(ComandoContext.class,i);
		}
		public UltimocomandoContext ultimocomando() {
			return getRuleContext(UltimocomandoContext.class,0);
		}
		public TrechoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_trecho; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterTrecho(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitTrecho(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitTrecho(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TrechoContext trecho() throws RecognitionException {
		TrechoContext _localctx = new TrechoContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_trecho);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(56);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__4) | (1L << T__5) | (1L << T__7) | (1L << T__11) | (1L << T__14) | (1L << T__15) | (1L << NOME))) != 0)) {
				{
				{
				setState(50);
				comando();
				setState(52);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(51);
					match(T__0);
					}
				}

				}
				}
				setState(58);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(63);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__16 || _la==T__17) {
				{
				setState(59);
				ultimocomando();
				setState(61);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(60);
					match(T__0);
					}
				}

				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlocoContext extends ParserRuleContext {
		public TrechoContext trecho() {
			return getRuleContext(TrechoContext.class,0);
		}
		public BlocoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bloco; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterBloco(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitBloco(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitBloco(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BlocoContext bloco() throws RecognitionException {
		BlocoContext _localctx = new BlocoContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_bloco);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(65);
			trecho();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ComandoContext extends ParserRuleContext {
		public ComandoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_comando; }
	 
		public ComandoContext() { }
		public void copyFrom(ComandoContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ComandoLocalAtribuicaoContext extends ComandoContext {
		public ListadenomesContext listadenomes() {
			return getRuleContext(ListadenomesContext.class,0);
		}
		public ListaexpContext listaexp() {
			return getRuleContext(ListaexpContext.class,0);
		}
		public ComandoLocalAtribuicaoContext(ComandoContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterComandoLocalAtribuicao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitComandoLocalAtribuicao(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitComandoLocalAtribuicao(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ComandoLocalFunctionContext extends ComandoContext {
		public TerminalNode NOME() { return getToken(LuazinhaParser.NOME, 0); }
		public CorpodafuncaoContext corpodafuncao() {
			return getRuleContext(CorpodafuncaoContext.class,0);
		}
		public ComandoLocalFunctionContext(ComandoContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterComandoLocalFunction(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitComandoLocalFunction(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitComandoLocalFunction(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ComandoIfContext extends ComandoContext {
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public List<BlocoContext> bloco() {
			return getRuleContexts(BlocoContext.class);
		}
		public BlocoContext bloco(int i) {
			return getRuleContext(BlocoContext.class,i);
		}
		public ComandoIfContext(ComandoContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterComandoIf(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitComandoIf(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitComandoIf(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ComandoAtribuicaoContext extends ComandoContext {
		public ListavarContext listavar() {
			return getRuleContext(ListavarContext.class,0);
		}
		public ListaexpContext listaexp() {
			return getRuleContext(ListaexpContext.class,0);
		}
		public ComandoAtribuicaoContext(ComandoContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterComandoAtribuicao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitComandoAtribuicao(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitComandoAtribuicao(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ComandoDoContext extends ComandoContext {
		public BlocoContext bloco() {
			return getRuleContext(BlocoContext.class,0);
		}
		public ComandoDoContext(ComandoContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterComandoDo(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitComandoDo(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitComandoDo(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ComandoFunctionContext extends ComandoContext {
		public NomedafuncaoContext nomedafuncao() {
			return getRuleContext(NomedafuncaoContext.class,0);
		}
		public CorpodafuncaoContext corpodafuncao() {
			return getRuleContext(CorpodafuncaoContext.class,0);
		}
		public ComandoFunctionContext(ComandoContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterComandoFunction(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitComandoFunction(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitComandoFunction(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ComandoChamadaDeFuncaoContext extends ComandoContext {
		public ChamadadefuncaoContext chamadadefuncao() {
			return getRuleContext(ChamadadefuncaoContext.class,0);
		}
		public ComandoChamadaDeFuncaoContext(ComandoContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterComandoChamadaDeFuncao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitComandoChamadaDeFuncao(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitComandoChamadaDeFuncao(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ComandoWhileContext extends ComandoContext {
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public BlocoContext bloco() {
			return getRuleContext(BlocoContext.class,0);
		}
		public ComandoWhileContext(ComandoContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterComandoWhile(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitComandoWhile(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitComandoWhile(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ComandoRepeatContext extends ComandoContext {
		public BlocoContext bloco() {
			return getRuleContext(BlocoContext.class,0);
		}
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public ComandoRepeatContext(ComandoContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterComandoRepeat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitComandoRepeat(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitComandoRepeat(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ComandoFor2Context extends ComandoContext {
		public ListadenomesContext listadenomes() {
			return getRuleContext(ListadenomesContext.class,0);
		}
		public ListaexpContext listaexp() {
			return getRuleContext(ListaexpContext.class,0);
		}
		public BlocoContext bloco() {
			return getRuleContext(BlocoContext.class,0);
		}
		public ComandoFor2Context(ComandoContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterComandoFor2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitComandoFor2(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitComandoFor2(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ComandoFor1Context extends ComandoContext {
		public TerminalNode NOME() { return getToken(LuazinhaParser.NOME, 0); }
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public BlocoContext bloco() {
			return getRuleContext(BlocoContext.class,0);
		}
		public ComandoFor1Context(ComandoContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterComandoFor1(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitComandoFor1(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitComandoFor1(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ComandoContext comando() throws RecognitionException {
		ComandoContext _localctx = new ComandoContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_comando);
		int _la;
		try {
			setState(143);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
			case 1:
				_localctx = new ComandoAtribuicaoContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(67);
				listavar();
				setState(68);
				match(T__1);
				setState(69);
				listaexp();
				}
				break;
			case 2:
				_localctx = new ComandoChamadaDeFuncaoContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(71);
				chamadadefuncao();
				}
				break;
			case 3:
				_localctx = new ComandoDoContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(72);
				match(T__2);
				setState(73);
				bloco();
				setState(74);
				match(T__3);
				}
				break;
			case 4:
				_localctx = new ComandoWhileContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(76);
				match(T__4);
				setState(77);
				exp(0);
				setState(78);
				match(T__2);
				setState(79);
				bloco();
				setState(80);
				match(T__3);
				}
				break;
			case 5:
				_localctx = new ComandoRepeatContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(82);
				match(T__5);
				setState(83);
				bloco();
				setState(84);
				match(T__6);
				setState(85);
				exp(0);
				}
				break;
			case 6:
				_localctx = new ComandoIfContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(87);
				match(T__7);
				setState(88);
				exp(0);
				setState(89);
				match(T__8);
				setState(90);
				bloco();
				setState(98);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__9) {
					{
					{
					setState(91);
					match(T__9);
					setState(92);
					exp(0);
					setState(93);
					match(T__8);
					setState(94);
					bloco();
					}
					}
					setState(100);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(103);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__10) {
					{
					setState(101);
					match(T__10);
					setState(102);
					bloco();
					}
				}

				setState(105);
				match(T__3);
				}
				break;
			case 7:
				_localctx = new ComandoFor1Context(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(107);
				match(T__11);
				setState(108);
				match(NOME);
				setState(109);
				match(T__1);
				setState(110);
				exp(0);
				setState(111);
				match(T__12);
				setState(112);
				exp(0);
				setState(115);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__12) {
					{
					setState(113);
					match(T__12);
					setState(114);
					exp(0);
					}
				}

				setState(117);
				match(T__2);
				setState(118);
				bloco();
				setState(119);
				match(T__3);
				}
				break;
			case 8:
				_localctx = new ComandoFor2Context(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(121);
				match(T__11);
				setState(122);
				listadenomes();
				setState(123);
				match(T__13);
				setState(124);
				listaexp();
				setState(125);
				match(T__2);
				setState(126);
				bloco();
				setState(127);
				match(T__3);
				}
				break;
			case 9:
				_localctx = new ComandoFunctionContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(129);
				match(T__14);
				setState(130);
				nomedafuncao();
				setState(131);
				corpodafuncao();
				}
				break;
			case 10:
				_localctx = new ComandoLocalFunctionContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(133);
				match(T__15);
				setState(134);
				match(T__14);
				setState(135);
				match(NOME);
				setState(136);
				corpodafuncao();
				}
				break;
			case 11:
				_localctx = new ComandoLocalAtribuicaoContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(137);
				match(T__15);
				setState(138);
				listadenomes();
				setState(141);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__1) {
					{
					setState(139);
					match(T__1);
					setState(140);
					listaexp();
					}
				}

				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class UltimocomandoContext extends ParserRuleContext {
		public ListaexpContext listaexp() {
			return getRuleContext(ListaexpContext.class,0);
		}
		public UltimocomandoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ultimocomando; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterUltimocomando(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitUltimocomando(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitUltimocomando(this);
			else return visitor.visitChildren(this);
		}
	}

	public final UltimocomandoContext ultimocomando() throws RecognitionException {
		UltimocomandoContext _localctx = new UltimocomandoContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_ultimocomando);
		int _la;
		try {
			setState(150);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__16:
				enterOuterAlt(_localctx, 1);
				{
				setState(145);
				match(T__16);
				setState(147);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__14) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__28) | (1L << T__31) | (1L << T__45) | (1L << T__46) | (1L << NOME) | (1L << CADEIA) | (1L << NUMERO))) != 0)) {
					{
					setState(146);
					listaexp();
					}
				}

				}
				break;
			case T__17:
				enterOuterAlt(_localctx, 2);
				{
				setState(149);
				match(T__17);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NomedafuncaoContext extends ParserRuleContext {
		public String nome;
		public boolean metodo;
		public Token n1;
		public Token n2;
		public Token n3;
		public List<TerminalNode> NOME() { return getTokens(LuazinhaParser.NOME); }
		public TerminalNode NOME(int i) {
			return getToken(LuazinhaParser.NOME, i);
		}
		public NomedafuncaoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_nomedafuncao; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterNomedafuncao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitNomedafuncao(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitNomedafuncao(this);
			else return visitor.visitChildren(this);
		}
	}

	public final NomedafuncaoContext nomedafuncao() throws RecognitionException {
		NomedafuncaoContext _localctx = new NomedafuncaoContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_nomedafuncao);
		 ((NomedafuncaoContext)_localctx).metodo =  false; 
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(152);
			((NomedafuncaoContext)_localctx).n1 = match(NOME);
			 ((NomedafuncaoContext)_localctx).nome =  ((NomedafuncaoContext)_localctx).n1.getText(); 
			setState(159);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__18) {
				{
				{
				setState(154);
				match(T__18);
				setState(155);
				((NomedafuncaoContext)_localctx).n2 = match(NOME);
				 _localctx.nome += "." + ((NomedafuncaoContext)_localctx).n2.getText(); 
				}
				}
				setState(161);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(165);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__19) {
				{
				setState(162);
				match(T__19);
				setState(163);
				((NomedafuncaoContext)_localctx).n3 = match(NOME);
				 ((NomedafuncaoContext)_localctx).metodo =  true; _localctx.nome += "." + ((NomedafuncaoContext)_localctx).n3.getText(); 
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ListavarContext extends ParserRuleContext {
		public List<String> nomes;
		public VarContext v1;
		public VarContext v2;
		public List<VarContext> var() {
			return getRuleContexts(VarContext.class);
		}
		public VarContext var(int i) {
			return getRuleContext(VarContext.class,i);
		}
		public ListavarContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_listavar; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterListavar(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitListavar(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitListavar(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ListavarContext listavar() throws RecognitionException {
		ListavarContext _localctx = new ListavarContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_listavar);
		 ((ListavarContext)_localctx).nomes =  new ArrayList<String>(); 
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(167);
			((ListavarContext)_localctx).v1 = var();
			 _localctx.nomes.add(((ListavarContext)_localctx).v1.nome); 
			setState(175);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__12) {
				{
				{
				setState(169);
				match(T__12);
				setState(170);
				((ListavarContext)_localctx).v2 = var();
				 _localctx.nomes.add(((ListavarContext)_localctx).v2.nome); 
				}
				}
				setState(177);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarContext extends ParserRuleContext {
		public String nome;
		public int linha;
		public int coluna;
		public Token NOME;
		public TerminalNode NOME() { return getToken(LuazinhaParser.NOME, 0); }
		public ExpprefixoContext expprefixo() {
			return getRuleContext(ExpprefixoContext.class,0);
		}
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public VarContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_var; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterVar(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitVar(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitVar(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarContext var() throws RecognitionException {
		VarContext _localctx = new VarContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_var);
		try {
			setState(189);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(178);
				((VarContext)_localctx).NOME = match(NOME);
				 ((VarContext)_localctx).nome =  ((VarContext)_localctx).NOME.getText(); ((VarContext)_localctx).linha =  (((VarContext)_localctx).NOME!=null?((VarContext)_localctx).NOME.getLine():0); ((VarContext)_localctx).coluna =  (((VarContext)_localctx).NOME!=null?((VarContext)_localctx).NOME.getCharPositionInLine():0); 
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(180);
				expprefixo();
				setState(181);
				match(T__20);
				setState(182);
				exp(0);
				setState(183);
				match(T__21);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(185);
				expprefixo();
				setState(186);
				match(T__18);
				setState(187);
				match(NOME);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ListadenomesContext extends ParserRuleContext {
		public List<String> nomes;
		public Token n1;
		public Token n2;
		public List<TerminalNode> NOME() { return getTokens(LuazinhaParser.NOME); }
		public TerminalNode NOME(int i) {
			return getToken(LuazinhaParser.NOME, i);
		}
		public ListadenomesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_listadenomes; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterListadenomes(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitListadenomes(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitListadenomes(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ListadenomesContext listadenomes() throws RecognitionException {
		ListadenomesContext _localctx = new ListadenomesContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_listadenomes);
		 ((ListadenomesContext)_localctx).nomes =  new ArrayList<String>(); 
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(191);
			((ListadenomesContext)_localctx).n1 = match(NOME);
			 _localctx.nomes.add(((ListadenomesContext)_localctx).n1.getText()); 
			setState(198);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,15,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(193);
					match(T__12);
					setState(194);
					((ListadenomesContext)_localctx).n2 = match(NOME);
					 _localctx.nomes.add(((ListadenomesContext)_localctx).n2.getText()); 
					}
					} 
				}
				setState(200);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,15,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ListaexpContext extends ParserRuleContext {
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public ListaexpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_listaexp; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterListaexp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitListaexp(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitListaexp(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ListaexpContext listaexp() throws RecognitionException {
		ListaexpContext _localctx = new ListaexpContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_listaexp);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(206);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,16,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(201);
					exp(0);
					setState(202);
					match(T__12);
					}
					} 
				}
				setState(208);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,16,_ctx);
			}
			setState(209);
			exp(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpContext extends ParserRuleContext {
		public TerminalNode NUMERO() { return getToken(LuazinhaParser.NUMERO, 0); }
		public TerminalNode CADEIA() { return getToken(LuazinhaParser.CADEIA, 0); }
		public FuncaoContext funcao() {
			return getRuleContext(FuncaoContext.class,0);
		}
		public Expprefixo2Context expprefixo2() {
			return getRuleContext(Expprefixo2Context.class,0);
		}
		public ConstrutortabelaContext construtortabela() {
			return getRuleContext(ConstrutortabelaContext.class,0);
		}
		public OpunariaContext opunaria() {
			return getRuleContext(OpunariaContext.class,0);
		}
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public OpbinContext opbin() {
			return getRuleContext(OpbinContext.class,0);
		}
		public ExpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exp; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterExp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitExp(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitExp(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpContext exp() throws RecognitionException {
		return exp(0);
	}

	private ExpContext exp(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpContext _localctx = new ExpContext(_ctx, _parentState);
		ExpContext _prevctx = _localctx;
		int _startState = 20;
		enterRecursionRule(_localctx, 20, RULE_exp, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(224);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__22:
				{
				setState(212);
				match(T__22);
				}
				break;
			case T__23:
				{
				setState(213);
				match(T__23);
				}
				break;
			case T__24:
				{
				setState(214);
				match(T__24);
				}
				break;
			case NUMERO:
				{
				setState(215);
				match(NUMERO);
				}
				break;
			case CADEIA:
				{
				setState(216);
				match(CADEIA);
				}
				break;
			case T__25:
				{
				setState(217);
				match(T__25);
				}
				break;
			case T__14:
				{
				setState(218);
				funcao();
				}
				break;
			case T__26:
			case NOME:
				{
				setState(219);
				expprefixo2();
				}
				break;
			case T__28:
				{
				setState(220);
				construtortabela();
				}
				break;
			case T__31:
			case T__45:
			case T__46:
				{
				setState(221);
				opunaria();
				setState(222);
				exp(1);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(232);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,18,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new ExpContext(_parentctx, _parentState);
					pushNewRecursionContext(_localctx, _startState, RULE_exp);
					setState(226);
					if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
					setState(227);
					opbin();
					setState(228);
					exp(3);
					}
					} 
				}
				setState(234);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,18,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class ExpprefixoContext extends ParserRuleContext {
		public List<TerminalNode> NOME() { return getTokens(LuazinhaParser.NOME); }
		public TerminalNode NOME(int i) {
			return getToken(LuazinhaParser.NOME, i);
		}
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public ExpprefixoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expprefixo; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterExpprefixo(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitExpprefixo(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitExpprefixo(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpprefixoContext expprefixo() throws RecognitionException {
		ExpprefixoContext _localctx = new ExpprefixoContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_expprefixo);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(235);
			match(NOME);
			setState(244);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,20,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					setState(242);
					_errHandler.sync(this);
					switch (_input.LA(1)) {
					case T__20:
						{
						setState(236);
						match(T__20);
						setState(237);
						exp(0);
						setState(238);
						match(T__21);
						}
						break;
					case T__18:
						{
						setState(240);
						match(T__18);
						setState(241);
						match(NOME);
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					} 
				}
				setState(246);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,20,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Expprefixo2Context extends ParserRuleContext {
		public Expprefixo2Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expprefixo2; }
	 
		public Expprefixo2Context() { }
		public void copyFrom(Expprefixo2Context ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ExpPrefixo2ChamadaDeFuncaoContext extends Expprefixo2Context {
		public ChamadadefuncaoContext chamadadefuncao() {
			return getRuleContext(ChamadadefuncaoContext.class,0);
		}
		public ExpPrefixo2ChamadaDeFuncaoContext(Expprefixo2Context ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterExpPrefixo2ChamadaDeFuncao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitExpPrefixo2ChamadaDeFuncao(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitExpPrefixo2ChamadaDeFuncao(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ExpPrefixo2ExpContext extends Expprefixo2Context {
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public ExpPrefixo2ExpContext(Expprefixo2Context ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterExpPrefixo2Exp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitExpPrefixo2Exp(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitExpPrefixo2Exp(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ExpPrefixo2VarContext extends Expprefixo2Context {
		public VarContext var() {
			return getRuleContext(VarContext.class,0);
		}
		public ExpPrefixo2VarContext(Expprefixo2Context ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterExpPrefixo2Var(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitExpPrefixo2Var(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitExpPrefixo2Var(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Expprefixo2Context expprefixo2() throws RecognitionException {
		Expprefixo2Context _localctx = new Expprefixo2Context(_ctx, getState());
		enterRule(_localctx, 24, RULE_expprefixo2);
		try {
			setState(253);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,21,_ctx) ) {
			case 1:
				_localctx = new ExpPrefixo2VarContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(247);
				var();
				}
				break;
			case 2:
				_localctx = new ExpPrefixo2ChamadaDeFuncaoContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(248);
				chamadadefuncao();
				}
				break;
			case 3:
				_localctx = new ExpPrefixo2ExpContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(249);
				match(T__26);
				setState(250);
				exp(0);
				setState(251);
				match(T__27);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ChamadadefuncaoContext extends ParserRuleContext {
		public ExpprefixoContext expprefixo() {
			return getRuleContext(ExpprefixoContext.class,0);
		}
		public ArgsContext args() {
			return getRuleContext(ArgsContext.class,0);
		}
		public TerminalNode NOME() { return getToken(LuazinhaParser.NOME, 0); }
		public ChamadadefuncaoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_chamadadefuncao; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterChamadadefuncao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitChamadadefuncao(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitChamadadefuncao(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ChamadadefuncaoContext chamadadefuncao() throws RecognitionException {
		ChamadadefuncaoContext _localctx = new ChamadadefuncaoContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_chamadadefuncao);
		try {
			setState(263);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,22,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(255);
				expprefixo();
				setState(256);
				args();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(258);
				expprefixo();
				setState(259);
				match(T__19);
				setState(260);
				match(NOME);
				setState(261);
				args();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ArgsContext extends ParserRuleContext {
		public ListaexpContext listaexp() {
			return getRuleContext(ListaexpContext.class,0);
		}
		public ConstrutortabelaContext construtortabela() {
			return getRuleContext(ConstrutortabelaContext.class,0);
		}
		public TerminalNode CADEIA() { return getToken(LuazinhaParser.CADEIA, 0); }
		public ArgsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_args; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterArgs(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitArgs(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitArgs(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ArgsContext args() throws RecognitionException {
		ArgsContext _localctx = new ArgsContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_args);
		int _la;
		try {
			setState(272);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__26:
				enterOuterAlt(_localctx, 1);
				{
				setState(265);
				match(T__26);
				setState(267);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__14) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__28) | (1L << T__31) | (1L << T__45) | (1L << T__46) | (1L << NOME) | (1L << CADEIA) | (1L << NUMERO))) != 0)) {
					{
					setState(266);
					listaexp();
					}
				}

				setState(269);
				match(T__27);
				}
				break;
			case T__28:
				enterOuterAlt(_localctx, 2);
				{
				setState(270);
				construtortabela();
				}
				break;
			case CADEIA:
				enterOuterAlt(_localctx, 3);
				{
				setState(271);
				match(CADEIA);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FuncaoContext extends ParserRuleContext {
		public CorpodafuncaoContext corpodafuncao() {
			return getRuleContext(CorpodafuncaoContext.class,0);
		}
		public FuncaoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcao; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterFuncao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitFuncao(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitFuncao(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FuncaoContext funcao() throws RecognitionException {
		FuncaoContext _localctx = new FuncaoContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_funcao);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(274);
			match(T__14);
			setState(275);
			corpodafuncao();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CorpodafuncaoContext extends ParserRuleContext {
		public BlocoContext bloco() {
			return getRuleContext(BlocoContext.class,0);
		}
		public ListaparContext listapar() {
			return getRuleContext(ListaparContext.class,0);
		}
		public CorpodafuncaoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_corpodafuncao; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterCorpodafuncao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitCorpodafuncao(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitCorpodafuncao(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CorpodafuncaoContext corpodafuncao() throws RecognitionException {
		CorpodafuncaoContext _localctx = new CorpodafuncaoContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_corpodafuncao);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(277);
			match(T__26);
			setState(279);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__25 || _la==NOME) {
				{
				setState(278);
				listapar();
				}
			}

			setState(281);
			match(T__27);
			setState(282);
			bloco();
			setState(283);
			match(T__3);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ListaparContext extends ParserRuleContext {
		public ListaparContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_listapar; }
	 
		public ListaparContext() { }
		public void copyFrom(ListaparContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ListaParVarargsContext extends ListaparContext {
		public ListaParVarargsContext(ListaparContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterListaParVarargs(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitListaParVarargs(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitListaParVarargs(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ListaParListaDeNomesContext extends ListaparContext {
		public ListadenomesContext listadenomes() {
			return getRuleContext(ListadenomesContext.class,0);
		}
		public ListaParListaDeNomesContext(ListaparContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterListaParListaDeNomes(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitListaParListaDeNomes(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitListaParListaDeNomes(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ListaparContext listapar() throws RecognitionException {
		ListaparContext _localctx = new ListaparContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_listapar);
		int _la;
		try {
			setState(291);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case NOME:
				_localctx = new ListaParListaDeNomesContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(285);
				listadenomes();
				setState(288);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__12) {
					{
					setState(286);
					match(T__12);
					setState(287);
					match(T__25);
					}
				}

				}
				break;
			case T__25:
				_localctx = new ListaParVarargsContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(290);
				match(T__25);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstrutortabelaContext extends ParserRuleContext {
		public ListadecamposContext listadecampos() {
			return getRuleContext(ListadecamposContext.class,0);
		}
		public ConstrutortabelaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_construtortabela; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterConstrutortabela(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitConstrutortabela(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitConstrutortabela(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ConstrutortabelaContext construtortabela() throws RecognitionException {
		ConstrutortabelaContext _localctx = new ConstrutortabelaContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_construtortabela);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(293);
			match(T__28);
			setState(295);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__14) | (1L << T__20) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__26) | (1L << T__28) | (1L << T__31) | (1L << T__45) | (1L << T__46) | (1L << NOME) | (1L << CADEIA) | (1L << NUMERO))) != 0)) {
				{
				setState(294);
				listadecampos();
				}
			}

			setState(297);
			match(T__29);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ListadecamposContext extends ParserRuleContext {
		public List<CampoContext> campo() {
			return getRuleContexts(CampoContext.class);
		}
		public CampoContext campo(int i) {
			return getRuleContext(CampoContext.class,i);
		}
		public List<SeparadordecamposContext> separadordecampos() {
			return getRuleContexts(SeparadordecamposContext.class);
		}
		public SeparadordecamposContext separadordecampos(int i) {
			return getRuleContext(SeparadordecamposContext.class,i);
		}
		public ListadecamposContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_listadecampos; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterListadecampos(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitListadecampos(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitListadecampos(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ListadecamposContext listadecampos() throws RecognitionException {
		ListadecamposContext _localctx = new ListadecamposContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_listadecampos);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(299);
			campo();
			setState(305);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(300);
					separadordecampos();
					setState(301);
					campo();
					}
					} 
				}
				setState(307);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			}
			setState(309);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__0 || _la==T__12) {
				{
				setState(308);
				separadordecampos();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CampoContext extends ParserRuleContext {
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public TerminalNode NOME() { return getToken(LuazinhaParser.NOME, 0); }
		public CampoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_campo; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterCampo(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitCampo(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitCampo(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CampoContext campo() throws RecognitionException {
		CampoContext _localctx = new CampoContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_campo);
		try {
			setState(321);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,31,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(311);
				match(T__20);
				setState(312);
				exp(0);
				setState(313);
				match(T__21);
				setState(314);
				match(T__1);
				setState(315);
				exp(0);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(317);
				match(NOME);
				setState(318);
				match(T__1);
				setState(319);
				exp(0);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(320);
				exp(0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SeparadordecamposContext extends ParserRuleContext {
		public SeparadordecamposContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_separadordecampos; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterSeparadordecampos(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitSeparadordecampos(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitSeparadordecampos(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SeparadordecamposContext separadordecampos() throws RecognitionException {
		SeparadordecamposContext _localctx = new SeparadordecamposContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_separadordecampos);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(323);
			_la = _input.LA(1);
			if ( !(_la==T__0 || _la==T__12) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class OpbinContext extends ParserRuleContext {
		public OpbinContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_opbin; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterOpbin(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitOpbin(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitOpbin(this);
			else return visitor.visitChildren(this);
		}
	}

	public final OpbinContext opbin() throws RecognitionException {
		OpbinContext _localctx = new OpbinContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_opbin);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(325);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << T__33) | (1L << T__34) | (1L << T__35) | (1L << T__36) | (1L << T__37) | (1L << T__38) | (1L << T__39) | (1L << T__40) | (1L << T__41) | (1L << T__42) | (1L << T__43) | (1L << T__44))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class OpunariaContext extends ParserRuleContext {
		public OpunariaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_opunaria; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).enterOpunaria(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof LuazinhaListener ) ((LuazinhaListener)listener).exitOpunaria(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LuazinhaVisitor ) return ((LuazinhaVisitor<? extends T>)visitor).visitOpunaria(this);
			else return visitor.visitChildren(this);
		}
	}

	public final OpunariaContext opunaria() throws RecognitionException {
		OpunariaContext _localctx = new OpunariaContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_opunaria);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(327);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__31) | (1L << T__45) | (1L << T__46))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 10:
			return exp_sempred((ExpContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean exp_sempred(ExpContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 2);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\66\u014c\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\3\2\3\2\3\3\3\3\5\3\67\n\3\7\39\n\3\f\3\16\3<\13\3\3\3\3\3\5\3@\n\3\5"+
		"\3B\n\3\3\4\3\4\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3"+
		"\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\7\5c\n"+
		"\5\f\5\16\5f\13\5\3\5\3\5\5\5j\n\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5"+
		"\3\5\5\5v\n\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5"+
		"\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\5\5\u0090\n\5\5\5\u0092\n\5\3"+
		"\6\3\6\5\6\u0096\n\6\3\6\5\6\u0099\n\6\3\7\3\7\3\7\3\7\3\7\7\7\u00a0\n"+
		"\7\f\7\16\7\u00a3\13\7\3\7\3\7\3\7\5\7\u00a8\n\7\3\b\3\b\3\b\3\b\3\b\3"+
		"\b\7\b\u00b0\n\b\f\b\16\b\u00b3\13\b\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3"+
		"\t\3\t\3\t\5\t\u00c0\n\t\3\n\3\n\3\n\3\n\3\n\7\n\u00c7\n\n\f\n\16\n\u00ca"+
		"\13\n\3\13\3\13\3\13\7\13\u00cf\n\13\f\13\16\13\u00d2\13\13\3\13\3\13"+
		"\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\5\f\u00e3\n\f\3\f"+
		"\3\f\3\f\3\f\7\f\u00e9\n\f\f\f\16\f\u00ec\13\f\3\r\3\r\3\r\3\r\3\r\3\r"+
		"\3\r\7\r\u00f5\n\r\f\r\16\r\u00f8\13\r\3\16\3\16\3\16\3\16\3\16\3\16\5"+
		"\16\u0100\n\16\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\5\17\u010a\n\17"+
		"\3\20\3\20\5\20\u010e\n\20\3\20\3\20\3\20\5\20\u0113\n\20\3\21\3\21\3"+
		"\21\3\22\3\22\5\22\u011a\n\22\3\22\3\22\3\22\3\22\3\23\3\23\3\23\5\23"+
		"\u0123\n\23\3\23\5\23\u0126\n\23\3\24\3\24\5\24\u012a\n\24\3\24\3\24\3"+
		"\25\3\25\3\25\3\25\7\25\u0132\n\25\f\25\16\25\u0135\13\25\3\25\5\25\u0138"+
		"\n\25\3\26\3\26\3\26\3\26\3\26\3\26\3\26\3\26\3\26\3\26\5\26\u0144\n\26"+
		"\3\27\3\27\3\30\3\30\3\31\3\31\3\31\2\3\26\32\2\4\6\b\n\f\16\20\22\24"+
		"\26\30\32\34\36 \"$&(*,.\60\2\5\4\2\3\3\17\17\3\2!/\4\2\"\"\60\61\2\u0168"+
		"\2\62\3\2\2\2\4:\3\2\2\2\6C\3\2\2\2\b\u0091\3\2\2\2\n\u0098\3\2\2\2\f"+
		"\u009a\3\2\2\2\16\u00a9\3\2\2\2\20\u00bf\3\2\2\2\22\u00c1\3\2\2\2\24\u00d0"+
		"\3\2\2\2\26\u00e2\3\2\2\2\30\u00ed\3\2\2\2\32\u00ff\3\2\2\2\34\u0109\3"+
		"\2\2\2\36\u0112\3\2\2\2 \u0114\3\2\2\2\"\u0117\3\2\2\2$\u0125\3\2\2\2"+
		"&\u0127\3\2\2\2(\u012d\3\2\2\2*\u0143\3\2\2\2,\u0145\3\2\2\2.\u0147\3"+
		"\2\2\2\60\u0149\3\2\2\2\62\63\5\4\3\2\63\3\3\2\2\2\64\66\5\b\5\2\65\67"+
		"\7\3\2\2\66\65\3\2\2\2\66\67\3\2\2\2\679\3\2\2\28\64\3\2\2\29<\3\2\2\2"+
		":8\3\2\2\2:;\3\2\2\2;A\3\2\2\2<:\3\2\2\2=?\5\n\6\2>@\7\3\2\2?>\3\2\2\2"+
		"?@\3\2\2\2@B\3\2\2\2A=\3\2\2\2AB\3\2\2\2B\5\3\2\2\2CD\5\4\3\2D\7\3\2\2"+
		"\2EF\5\16\b\2FG\7\4\2\2GH\5\24\13\2H\u0092\3\2\2\2I\u0092\5\34\17\2JK"+
		"\7\5\2\2KL\5\6\4\2LM\7\6\2\2M\u0092\3\2\2\2NO\7\7\2\2OP\5\26\f\2PQ\7\5"+
		"\2\2QR\5\6\4\2RS\7\6\2\2S\u0092\3\2\2\2TU\7\b\2\2UV\5\6\4\2VW\7\t\2\2"+
		"WX\5\26\f\2X\u0092\3\2\2\2YZ\7\n\2\2Z[\5\26\f\2[\\\7\13\2\2\\d\5\6\4\2"+
		"]^\7\f\2\2^_\5\26\f\2_`\7\13\2\2`a\5\6\4\2ac\3\2\2\2b]\3\2\2\2cf\3\2\2"+
		"\2db\3\2\2\2de\3\2\2\2ei\3\2\2\2fd\3\2\2\2gh\7\r\2\2hj\5\6\4\2ig\3\2\2"+
		"\2ij\3\2\2\2jk\3\2\2\2kl\7\6\2\2l\u0092\3\2\2\2mn\7\16\2\2no\7\62\2\2"+
		"op\7\4\2\2pq\5\26\f\2qr\7\17\2\2ru\5\26\f\2st\7\17\2\2tv\5\26\f\2us\3"+
		"\2\2\2uv\3\2\2\2vw\3\2\2\2wx\7\5\2\2xy\5\6\4\2yz\7\6\2\2z\u0092\3\2\2"+
		"\2{|\7\16\2\2|}\5\22\n\2}~\7\20\2\2~\177\5\24\13\2\177\u0080\7\5\2\2\u0080"+
		"\u0081\5\6\4\2\u0081\u0082\7\6\2\2\u0082\u0092\3\2\2\2\u0083\u0084\7\21"+
		"\2\2\u0084\u0085\5\f\7\2\u0085\u0086\5\"\22\2\u0086\u0092\3\2\2\2\u0087"+
		"\u0088\7\22\2\2\u0088\u0089\7\21\2\2\u0089\u008a\7\62\2\2\u008a\u0092"+
		"\5\"\22\2\u008b\u008c\7\22\2\2\u008c\u008f\5\22\n\2\u008d\u008e\7\4\2"+
		"\2\u008e\u0090\5\24\13\2\u008f\u008d\3\2\2\2\u008f\u0090\3\2\2\2\u0090"+
		"\u0092\3\2\2\2\u0091E\3\2\2\2\u0091I\3\2\2\2\u0091J\3\2\2\2\u0091N\3\2"+
		"\2\2\u0091T\3\2\2\2\u0091Y\3\2\2\2\u0091m\3\2\2\2\u0091{\3\2\2\2\u0091"+
		"\u0083\3\2\2\2\u0091\u0087\3\2\2\2\u0091\u008b\3\2\2\2\u0092\t\3\2\2\2"+
		"\u0093\u0095\7\23\2\2\u0094\u0096\5\24\13\2\u0095\u0094\3\2\2\2\u0095"+
		"\u0096\3\2\2\2\u0096\u0099\3\2\2\2\u0097\u0099\7\24\2\2\u0098\u0093\3"+
		"\2\2\2\u0098\u0097\3\2\2\2\u0099\13\3\2\2\2\u009a\u009b\7\62\2\2\u009b"+
		"\u00a1\b\7\1\2\u009c\u009d\7\25\2\2\u009d\u009e\7\62\2\2\u009e\u00a0\b"+
		"\7\1\2\u009f\u009c\3\2\2\2\u00a0\u00a3\3\2\2\2\u00a1\u009f\3\2\2\2\u00a1"+
		"\u00a2\3\2\2\2\u00a2\u00a7\3\2\2\2\u00a3\u00a1\3\2\2\2\u00a4\u00a5\7\26"+
		"\2\2\u00a5\u00a6\7\62\2\2\u00a6\u00a8\b\7\1\2\u00a7\u00a4\3\2\2\2\u00a7"+
		"\u00a8\3\2\2\2\u00a8\r\3\2\2\2\u00a9\u00aa\5\20\t\2\u00aa\u00b1\b\b\1"+
		"\2\u00ab\u00ac\7\17\2\2\u00ac\u00ad\5\20\t\2\u00ad\u00ae\b\b\1\2\u00ae"+
		"\u00b0\3\2\2\2\u00af\u00ab\3\2\2\2\u00b0\u00b3\3\2\2\2\u00b1\u00af\3\2"+
		"\2\2\u00b1\u00b2\3\2\2\2\u00b2\17\3\2\2\2\u00b3\u00b1\3\2\2\2\u00b4\u00b5"+
		"\7\62\2\2\u00b5\u00c0\b\t\1\2\u00b6\u00b7\5\30\r\2\u00b7\u00b8\7\27\2"+
		"\2\u00b8\u00b9\5\26\f\2\u00b9\u00ba\7\30\2\2\u00ba\u00c0\3\2\2\2\u00bb"+
		"\u00bc\5\30\r\2\u00bc\u00bd\7\25\2\2\u00bd\u00be\7\62\2\2\u00be\u00c0"+
		"\3\2\2\2\u00bf\u00b4\3\2\2\2\u00bf\u00b6\3\2\2\2\u00bf\u00bb\3\2\2\2\u00c0"+
		"\21\3\2\2\2\u00c1\u00c2\7\62\2\2\u00c2\u00c8\b\n\1\2\u00c3\u00c4\7\17"+
		"\2\2\u00c4\u00c5\7\62\2\2\u00c5\u00c7\b\n\1\2\u00c6\u00c3\3\2\2\2\u00c7"+
		"\u00ca\3\2\2\2\u00c8\u00c6\3\2\2\2\u00c8\u00c9\3\2\2\2\u00c9\23\3\2\2"+
		"\2\u00ca\u00c8\3\2\2\2\u00cb\u00cc\5\26\f\2\u00cc\u00cd\7\17\2\2\u00cd"+
		"\u00cf\3\2\2\2\u00ce\u00cb\3\2\2\2\u00cf\u00d2\3\2\2\2\u00d0\u00ce\3\2"+
		"\2\2\u00d0\u00d1\3\2\2\2\u00d1\u00d3\3\2\2\2\u00d2\u00d0\3\2\2\2\u00d3"+
		"\u00d4\5\26\f\2\u00d4\25\3\2\2\2\u00d5\u00d6\b\f\1\2\u00d6\u00e3\7\31"+
		"\2\2\u00d7\u00e3\7\32\2\2\u00d8\u00e3\7\33\2\2\u00d9\u00e3\7\64\2\2\u00da"+
		"\u00e3\7\63\2\2\u00db\u00e3\7\34\2\2\u00dc\u00e3\5 \21\2\u00dd\u00e3\5"+
		"\32\16\2\u00de\u00e3\5&\24\2\u00df\u00e0\5\60\31\2\u00e0\u00e1\5\26\f"+
		"\3\u00e1\u00e3\3\2\2\2\u00e2\u00d5\3\2\2\2\u00e2\u00d7\3\2\2\2\u00e2\u00d8"+
		"\3\2\2\2\u00e2\u00d9\3\2\2\2\u00e2\u00da\3\2\2\2\u00e2\u00db\3\2\2\2\u00e2"+
		"\u00dc\3\2\2\2\u00e2\u00dd\3\2\2\2\u00e2\u00de\3\2\2\2\u00e2\u00df\3\2"+
		"\2\2\u00e3\u00ea\3\2\2\2\u00e4\u00e5\f\4\2\2\u00e5\u00e6\5.\30\2\u00e6"+
		"\u00e7\5\26\f\5\u00e7\u00e9\3\2\2\2\u00e8\u00e4\3\2\2\2\u00e9\u00ec\3"+
		"\2\2\2\u00ea\u00e8\3\2\2\2\u00ea\u00eb\3\2\2\2\u00eb\27\3\2\2\2\u00ec"+
		"\u00ea\3\2\2\2\u00ed\u00f6\7\62\2\2\u00ee\u00ef\7\27\2\2\u00ef\u00f0\5"+
		"\26\f\2\u00f0\u00f1\7\30\2\2\u00f1\u00f5\3\2\2\2\u00f2\u00f3\7\25\2\2"+
		"\u00f3\u00f5\7\62\2\2\u00f4\u00ee\3\2\2\2\u00f4\u00f2\3\2\2\2\u00f5\u00f8"+
		"\3\2\2\2\u00f6\u00f4\3\2\2\2\u00f6\u00f7\3\2\2\2\u00f7\31\3\2\2\2\u00f8"+
		"\u00f6\3\2\2\2\u00f9\u0100\5\20\t\2\u00fa\u0100\5\34\17\2\u00fb\u00fc"+
		"\7\35\2\2\u00fc\u00fd\5\26\f\2\u00fd\u00fe\7\36\2\2\u00fe\u0100\3\2\2"+
		"\2\u00ff\u00f9\3\2\2\2\u00ff\u00fa\3\2\2\2\u00ff\u00fb\3\2\2\2\u0100\33"+
		"\3\2\2\2\u0101\u0102\5\30\r\2\u0102\u0103\5\36\20\2\u0103\u010a\3\2\2"+
		"\2\u0104\u0105\5\30\r\2\u0105\u0106\7\26\2\2\u0106\u0107\7\62\2\2\u0107"+
		"\u0108\5\36\20\2\u0108\u010a\3\2\2\2\u0109\u0101\3\2\2\2\u0109\u0104\3"+
		"\2\2\2\u010a\35\3\2\2\2\u010b\u010d\7\35\2\2\u010c\u010e\5\24\13\2\u010d"+
		"\u010c\3\2\2\2\u010d\u010e\3\2\2\2\u010e\u010f\3\2\2\2\u010f\u0113\7\36"+
		"\2\2\u0110\u0113\5&\24\2\u0111\u0113\7\63\2\2\u0112\u010b\3\2\2\2\u0112"+
		"\u0110\3\2\2\2\u0112\u0111\3\2\2\2\u0113\37\3\2\2\2\u0114\u0115\7\21\2"+
		"\2\u0115\u0116\5\"\22\2\u0116!\3\2\2\2\u0117\u0119\7\35\2\2\u0118\u011a"+
		"\5$\23\2\u0119\u0118\3\2\2\2\u0119\u011a\3\2\2\2\u011a\u011b\3\2\2\2\u011b"+
		"\u011c\7\36\2\2\u011c\u011d\5\6\4\2\u011d\u011e\7\6\2\2\u011e#\3\2\2\2"+
		"\u011f\u0122\5\22\n\2\u0120\u0121\7\17\2\2\u0121\u0123\7\34\2\2\u0122"+
		"\u0120\3\2\2\2\u0122\u0123\3\2\2\2\u0123\u0126\3\2\2\2\u0124\u0126\7\34"+
		"\2\2\u0125\u011f\3\2\2\2\u0125\u0124\3\2\2\2\u0126%\3\2\2\2\u0127\u0129"+
		"\7\37\2\2\u0128\u012a\5(\25\2\u0129\u0128\3\2\2\2\u0129\u012a\3\2\2\2"+
		"\u012a\u012b\3\2\2\2\u012b\u012c\7 \2\2\u012c\'\3\2\2\2\u012d\u0133\5"+
		"*\26\2\u012e\u012f\5,\27\2\u012f\u0130\5*\26\2\u0130\u0132\3\2\2\2\u0131"+
		"\u012e\3\2\2\2\u0132\u0135\3\2\2\2\u0133\u0131\3\2\2\2\u0133\u0134\3\2"+
		"\2\2\u0134\u0137\3\2\2\2\u0135\u0133\3\2\2\2\u0136\u0138\5,\27\2\u0137"+
		"\u0136\3\2\2\2\u0137\u0138\3\2\2\2\u0138)\3\2\2\2\u0139\u013a\7\27\2\2"+
		"\u013a\u013b\5\26\f\2\u013b\u013c\7\30\2\2\u013c\u013d\7\4\2\2\u013d\u013e"+
		"\5\26\f\2\u013e\u0144\3\2\2\2\u013f\u0140\7\62\2\2\u0140\u0141\7\4\2\2"+
		"\u0141\u0144\5\26\f\2\u0142\u0144\5\26\f\2\u0143\u0139\3\2\2\2\u0143\u013f"+
		"\3\2\2\2\u0143\u0142\3\2\2\2\u0144+\3\2\2\2\u0145\u0146\t\2\2\2\u0146"+
		"-\3\2\2\2\u0147\u0148\t\3\2\2\u0148/\3\2\2\2\u0149\u014a\t\4\2\2\u014a"+
		"\61\3\2\2\2\"\66:?Adiu\u008f\u0091\u0095\u0098\u00a1\u00a7\u00b1\u00bf"+
		"\u00c8\u00d0\u00e2\u00ea\u00f4\u00f6\u00ff\u0109\u010d\u0112\u0119\u0122"+
		"\u0125\u0129\u0133\u0137\u0143";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}