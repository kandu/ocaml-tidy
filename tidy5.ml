open Core_kernel.Std

type nodeType=
  | Node_Root      (* Root *)
  | Node_DocType   (* DOCTYPE *)
  | Node_Comment   (* Comment *)
  | Node_ProcIns   (* Processing Instruction *)
  | Node_Text      (* Text *)
  | Node_Start     (* Start Tag *)
  | Node_End       (* End Tag *)
  | Node_StartEnd  (* Start/End (empty) Tag *)
  | Node_CDATA     (* Unparsed Text *)
  | Node_Section   (* XML Section *)
  | Node_Asp       (* ASP Source *)
  | Node_Jste      (* JSTE Source *)
  | Node_Php       (* PHP Source *)
  | Node_XmlDecl   (* XML Declaration *)

type tagId=
  | Tag_UNKNOWN (* Unknown tag! *)
  | Tag_A (* A. *)
  | Tag_ABBR (* ABBR. *)
  | Tag_ACRONYM (* ACRONYM. *)
  | Tag_ADDRESS (* ADDRESS. *)
  | Tag_ALIGN (* ALIGN. *)
  | Tag_APPLET (* APPLET. *)
  | Tag_AREA (* AREA. *)
  | Tag_B (* B. *)
  | Tag_BASE (* BASE. *)
  | Tag_BASEFONT (* BASEFONT. *)
  | Tag_BDO (* BDO. *)
  | Tag_BGSOUND (* BGSOUND. *)
  | Tag_BIG (* BIG. *)
  | Tag_BLINK (* BLINK. *)
  | Tag_BLOCKQUOTE (* BLOCKQUOTE. *)
  | Tag_BODY (* BODY. *)
  | Tag_BR (* BR. *)
  | Tag_BUTTON (* BUTTON. *)
  | Tag_CAPTION (* CAPTION. *)
  | Tag_CENTER (* CENTER. *)
  | Tag_CITE (* CITE. *)
  | Tag_CODE (* CODE. *)
  | Tag_COL (* COL. *)
  | Tag_COLGROUP (* COLGROUP. *)
  | Tag_COMMENT (* COMMENT. *)
  | Tag_DD (* DD. *)
  | Tag_DEL (* DEL. *)
  | Tag_DFN (* DFN. *)
  | Tag_DIR (* DIR. *)
  | Tag_DIV (* DIF. *)
  | Tag_DL (* DL. *)
  | Tag_DT (* DT. *)
  | Tag_EM (* EM. *)
  | Tag_EMBED (* EMBED. *)
  | Tag_FIELDSET (* FIELDSET. *)
  | Tag_FONT (* FONT. *)
  | Tag_FORM (* FORM. *)
  | Tag_FRAME (* FRAME. *)
  | Tag_FRAMESET (* FRAMESET. *)
  | Tag_H1 (* H1. *)
  | Tag_H2 (* H2. *)
  | Tag_H3 (* H3. *)
  | Tag_H4 (* H4. *)
  | Tag_H5 (* H5. *)
  | Tag_H6 (* H6. *)
  | Tag_HEAD (* HEAD. *)
  | Tag_HR (* HR. *)
  | Tag_HTML (* HTML. *)
  | Tag_I (* I. *)
  | Tag_IFRAME (* IFRAME. *)
  | Tag_ILAYER (* ILAYER. *)
  | Tag_IMG (* IMG. *)
  | Tag_INPUT (* INPUT. *)
  | Tag_INS (* INS. *)
  | Tag_ISINDEX (* ISINDEX. *)
  | Tag_KBD (* KBD. *)
  | Tag_KEYGEN (* KEYGEN. *)
  | Tag_LABEL (* LABEL. *)
  | Tag_LAYER (* LAYER. *)
  | Tag_LEGEND (* LEGEND. *)
  | Tag_LI (* LI. *)
  | Tag_LINK (* LINK. *)
  | Tag_LISTING (* LISTING. *)
  | Tag_MAP (* MAP. *)
  | Tag_MATHML (* MATH (HTML5) [i_a]2 MathML embedded in [X]HTML. *)
  | Tag_MARQUEE (* MARQUEE. *)
  | Tag_MENU (* MENU. *)
  | Tag_META (* META. *)
  | Tag_MULTICOL (* MULTICOL. *)
  | Tag_NOBR (* NOBR. *)
  | Tag_NOEMBED (* NOEMBED. *)
  | Tag_NOFRAMES (* NOFRAMES. *)
  | Tag_NOLAYER (* NOLAYER. *)
  | Tag_NOSAVE (* NOSAVE. *)
  | Tag_NOSCRIPT (* NOSCRIPT. *)
  | Tag_OBJECT (* OBJECT. *)
  | Tag_OL (* OL. *)
  | Tag_OPTGROUP (* OPTGROUP. *)
  | Tag_OPTION (* OPTION. *)
  | Tag_P (* P. *)
  | Tag_PARAM (* PARAM. *)
  | Tag_PICTURE (* PICTURE (HTML5) *)
  | Tag_PLAINTEXT (* PLAINTEXT. *)
  | Tag_PRE (* PRE. *)
  | Tag_Q (* Q. *)
  | Tag_RB (* RB. *)
  | Tag_RBC (* RBC. *)
  | Tag_RP (* RP. *)
  | Tag_RT (* RT. *)
  | Tag_RTC (* RTC. *)
  | Tag_RUBY (* RUBY. *)
  | Tag_S (* S. *)
  | Tag_SAMP (* SAMP. *)
  | Tag_SCRIPT (* SCRIPT. *)
  | Tag_SELECT (* SELECT. *)
  | Tag_SERVER (* SERVER. *)
  | Tag_SERVLET (* SERVLET. *)
  | Tag_SMALL (* SMALL. *)
  | Tag_SPACER (* SPACER. *)
  | Tag_SPAN (* SPAN. *)
  | Tag_STRIKE (* STRIKE. *)
  | Tag_STRONG (* STRONG. *)
  | Tag_STYLE (* STYLE. *)
  | Tag_SUB (* SUB. *)
  | Tag_SUP (* SUP. *)
  | Tag_SVG (* SVG (HTML5) *)
  | Tag_TABLE (* TABLE. *)
  | Tag_TBODY (* TBODY. *)
  | Tag_TD (* TD. *)
  | Tag_TEXTAREA (* TEXTAREA. *)
  | Tag_TFOOT (* TFOOT. *)
  | Tag_TH (* TH. *)
  | Tag_THEAD (* THEAD. *)
  | Tag_TITLE (* TITLE. *)
  | Tag_TR (* TR. *)
  | Tag_TT (* TT. *)
  | Tag_U (* U. *)
  | Tag_UL (* UL. *)
  | Tag_VAR (* VAR. *)
  | Tag_WBR (* WBR. *)
  | Tag_XMP (* XMP. *)
  | Tag_NEXTID (* NEXTID. *)
  | Tag_ARTICLE
  | Tag_ASIDE
  | Tag_AUDIO
  | Tag_BDI
  | Tag_CANVAS
  | Tag_COMMAND
  | Tag_DATALIST
  | Tag_DETAILS
  | Tag_DIALOG
  | Tag_FIGCAPTION
  | Tag_FIGURE
  | Tag_FOOTER
  | Tag_HEADER
  | Tag_HGROUP
  | Tag_MAIN
  | Tag_MARK
  | Tag_MENUITEM
  | Tag_METER
  | Tag_NAV
  | Tag_OUTPUT
  | Tag_PROGRESS
  | Tag_SECTION
  | Tag_SOURCE
  | Tag_SUMMARY
  | Tag_TEMPLATE
  | Tag_TIME
  | Tag_TRACK
  | Tag_VIDEO
  | N_TIDY_TAGS

type attrId=
  | Attr_UNKNOWN (* UNKNOWN=. *)
  | Attr_ABBR (* ABBR=. *)
  | Attr_ACCEPT (* ACCEPT=. *)
  | Attr_ACCEPT_CHARSET (* ACCEPT_CHARSET=. *)
  | Attr_ACCESSKEY (* ACCESSKEY=. *)
  | Attr_ACTION (* ACTION=. *)
  | Attr_ADD_DATE (* ADD_DATE=. *)
  | Attr_ALIGN (* ALIGN=. *)
  | Attr_ALINK (* ALINK=. *)
  | Attr_ALT (* ALT=. *)
  | Attr_ARCHIVE (* ARCHIVE=. *)
  | Attr_AXIS (* AXIS=. *)
  | Attr_BACKGROUND (* BACKGROUND=. *)
  | Attr_BGCOLOR (* BGCOLOR=. *)
  | Attr_BGPROPERTIES (* BGPROPERTIES=. *)
  | Attr_BORDER (* BORDER=. *)
  | Attr_BORDERCOLOR (* BORDERCOLOR=. *)
  | Attr_BOTTOMMARGIN (* BOTTOMMARGIN=. *)
  | Attr_CELLPADDING (* CELLPADDING=. *)
  | Attr_CELLSPACING (* CELLSPACING=. *)
  | Attr_CHAR (* CHAR=. *)
  | Attr_CHAROFF (* CHAROFF=. *)
  | Attr_CHARSET (* CHARSET=. *)
  | Attr_CHECKED (* CHECKED=. *)
  | Attr_CITE (* CITE=. *)
  | Attr_CLASS (* CLASS=. *)
  | Attr_CLASSID (* CLASSID=. *)
  | Attr_CLEAR (* CLEAR=. *)
  | Attr_CODE (* CODE=. *)
  | Attr_CODEBASE (* CODEBASE=. *)
  | Attr_CODETYPE (* CODETYPE=. *)
  | Attr_COLOR (* COLOR=. *)
  | Attr_COLS (* COLS=. *)
  | Attr_COLSPAN (* COLSPAN=. *)
  | Attr_COMPACT (* COMPACT=. *)
  | Attr_CONTENT (* CONTENT=. *)
  | Attr_COORDS (* COORDS=. *)
  | Attr_DATA (* DATA=. *)
  | Attr_DATAFLD (* DATAFLD=. *)
  | Attr_DATAFORMATAS (* DATAFORMATAS=. *)
  | Attr_DATAPAGESIZE (* DATAPAGESIZE=. *)
  | Attr_DATASRC (* DATASRC=. *)
  | Attr_DATETIME (* DATETIME=. *)
  | Attr_DECLARE (* DECLARE=. *)
  | Attr_DEFER (* DEFER=. *)
  | Attr_DIR (* DIR=. *)
  | Attr_DISABLED (* DISABLED=. *)
  | Attr_ENCODING (* ENCODING=. *)
  | Attr_ENCTYPE (* ENCTYPE=. *)
  | Attr_FACE (* FACE=. *)
  | Attr_FOR (* FOR=. *)
  | Attr_FRAME (* FRAME=. *)
  | Attr_FRAMEBORDER (* FRAMEBORDER=. *)
  | Attr_FRAMESPACING (* FRAMESPACING=. *)
  | Attr_GRIDX (* GRIDX=. *)
  | Attr_GRIDY (* GRIDY=. *)
  | Attr_HEADERS (* HEADERS=. *)
  | Attr_HEIGHT (* HEIGHT=. *)
  | Attr_HREF (* HREF=. *)
  | Attr_HREFLANG (* HREFLANG=. *)
  | Attr_HSPACE (* HSPACE=. *)
  | Attr_HTTP_EQUIV (* HTTP_EQUIV=. *)
  | Attr_ID (* ID=. *)
  | Attr_ISMAP (* ISMAP=. *)
  | Attr_ITEMID (* ITEMID=. *)
  | Attr_ITEMPROP (* ITEMPROP=. *)
  | Attr_ITEMREF (* ITEMREF=. *)
  | Attr_ITEMSCOPE (* ITEMSCOPE=. *)
  | Attr_ITEMTYPE (* ITEMTYPE=. *)
  | Attr_LABEL (* LABEL=. *)
  | Attr_LANG (* LANG=. *)
  | Attr_LANGUAGE (* LANGUAGE=. *)
  | Attr_LAST_MODIFIED (* LAST_MODIFIED=. *)
  | Attr_LAST_VISIT (* LAST_VISIT=. *)
  | Attr_LEFTMARGIN (* LEFTMARGIN=. *)
  | Attr_LINK (* LINK=. *)
  | Attr_LONGDESC (* LONGDESC=. *)
  | Attr_LOWSRC (* LOWSRC=. *)
  | Attr_MARGINHEIGHT (* MARGINHEIGHT=. *)
  | Attr_MARGINWIDTH (* MARGINWIDTH=. *)
  | Attr_MAXLENGTH (* MAXLENGTH=. *)
  | Attr_MEDIA (* MEDIA=. *)
  | Attr_METHOD (* METHOD=. *)
  | Attr_MULTIPLE (* MULTIPLE=. *)
  | Attr_NAME (* NAME=. *)
  | Attr_NOHREF (* NOHREF=. *)
  | Attr_NORESIZE (* NORESIZE=. *)
  | Attr_NOSHADE (* NOSHADE=. *)
  | Attr_NOWRAP (* NOWRAP=. *)
  | Attr_OBJECT (* OBJECT=. *)
  | Attr_OnAFTERUPDATE (* OnAFTERUPDATE=. *)
  | Attr_OnBEFOREUNLOAD (* OnBEFOREUNLOAD=. *)
  | Attr_OnBEFOREUPDATE (* OnBEFOREUPDATE=. *)
  | Attr_OnBLUR (* OnBLUR=. *)
  | Attr_OnCHANGE (* OnCHANGE=. *)
  | Attr_OnCLICK (* OnCLICK=. *)
  | Attr_OnDATAAVAILABLE (* OnDATAAVAILABLE=. *)
  | Attr_OnDATASETCHANGED (* OnDATASETCHANGED=. *)
  | Attr_OnDATASETCOMPLETE (* OnDATASETCOMPLETE=. *)
  | Attr_OnDBLCLICK (* OnDBLCLICK=. *)
  | Attr_OnERRORUPDATE (* OnERRORUPDATE=. *)
  | Attr_OnFOCUS (* OnFOCUS=. *)
  | Attr_OnKEYDOWN (* OnKEYDOWN=. *)
  | Attr_OnKEYPRESS (* OnKEYPRESS=. *)
  | Attr_OnKEYUP (* OnKEYUP=. *)
  | Attr_OnLOAD (* OnLOAD=. *)
  | Attr_OnMOUSEDOWN (* OnMOUSEDOWN=. *)
  | Attr_OnMOUSEMOVE (* OnMOUSEMOVE=. *)
  | Attr_OnMOUSEOUT (* OnMOUSEOUT=. *)
  | Attr_OnMOUSEOVER (* OnMOUSEOVER=. *)
  | Attr_OnMOUSEUP (* OnMOUSEUP=. *)
  | Attr_OnRESET (* OnRESET=. *)
  | Attr_OnROWENTER (* OnROWENTER=. *)
  | Attr_OnROWEXIT (* OnROWEXIT=. *)
  | Attr_OnSELECT (* OnSELECT=. *)
  | Attr_OnSUBMIT (* OnSUBMIT=. *)
  | Attr_OnUNLOAD (* OnUNLOAD=. *)
  | Attr_PROFILE (* PROFILE=. *)
  | Attr_PROMPT (* PROMPT=. *)
  | Attr_RBSPAN (* RBSPAN=. *)
  | Attr_READONLY (* READONLY=. *)
  | Attr_REL (* REL=. *)
  | Attr_REV (* REV=. *)
  | Attr_RIGHTMARGIN (* RIGHTMARGIN=. *)
  | Attr_ROLE (* ROLE=. *)
  | Attr_ROWS (* ROWS=. *)
  | Attr_ROWSPAN (* ROWSPAN=. *)
  | Attr_RULES (* RULES=. *)
  | Attr_SCHEME (* SCHEME=. *)
  | Attr_SCOPE (* SCOPE=. *)
  | Attr_SCROLLING (* SCROLLING=. *)
  | Attr_SELECTED (* SELECTED=. *)
  | Attr_SHAPE (* SHAPE=. *)
  | Attr_SHOWGRID (* SHOWGRID=. *)
  | Attr_SHOWGRIDX (* SHOWGRIDX=. *)
  | Attr_SHOWGRIDY (* SHOWGRIDY=. *)
  | Attr_SIZE (* SIZE=. *)
  | Attr_SPAN (* SPAN=. *)
  | Attr_SRC (* SRC=. *)
  | Attr_SRCSET (* SRCSET= (HTML5) *)
  | Attr_STANDBY (* STANDBY=. *)
  | Attr_START (* START=. *)
  | Attr_STYLE (* STYLE=. *)
  | Attr_SUMMARY (* SUMMARY=. *)
  | Attr_TABINDEX (* TABINDEX=. *)
  | Attr_TARGET (* TARGET=. *)
  | Attr_TEXT (* TEXT=. *)
  | Attr_TITLE (* TITLE=. *)
  | Attr_TOPMARGIN (* TOPMARGIN=. *)
  | Attr_TYPE (* TYPE=. *)
  | Attr_USEMAP (* USEMAP=. *)
  | Attr_VALIGN (* VALIGN=. *)
  | Attr_VALUE (* VALUE=. *)
  | Attr_VALUETYPE (* VALUETYPE=. *)
  | Attr_VERSION (* VERSION=. *)
  | Attr_VLINK (* VLINK=. *)
  | Attr_VSPACE (* VSPACE=. *)
  | Attr_WIDTH (* WIDTH=. *)
  | Attr_WRAP (* WRAP=. *)
  | Attr_XML_LANG (* XML_LANG=. *)
  | Attr_XML_SPACE (* XML_SPACE=. *)
  | Attr_XMLNS (* XMLNS=. *)
  | Attr_EVENT (* EVENT=. *)
  | Attr_METHODS (* METHODS=. *)
  | Attr_N (* N=. *)
  | Attr_SDAFORM (* SDAFORM=. *)
  | Attr_SDAPREF (* SDAPREF=. *)
  | Attr_SDASUFF (* SDASUFF=. *)
  | Attr_URN (* URN=. *)
  | Attr_ASYNC
  | Attr_AUTOCOMPLETE
  | Attr_AUTOFOCUS
  | Attr_AUTOPLAY
  | Attr_CHALLENGE
  | Attr_CONTENTEDITABLE
  | Attr_CONTEXTMENU
  | Attr_CONTROLS
  | Attr_DEFAULT
  | Attr_DIRNAME
  | Attr_DRAGGABLE
  | Attr_DROPZONE
  | Attr_FORM
  | Attr_FORMACTION
  | Attr_FORMENCTYPE
  | Attr_FORMMETHOD
  | Attr_FORMNOVALIDATE
  | Attr_FORMTARGET
  | Attr_HIDDEN
  | Attr_HIGH
  | Attr_ICON
  | Attr_KEYTYPE
  | Attr_KIND
  | Attr_LIST
  | Attr_LOOP
  | Attr_LOW
  | Attr_MANIFEST
  | Attr_MAX
  | Attr_MEDIAGROUP
  | Attr_MIN
  | Attr_NOVALIDATE
  | Attr_OPEN
  | Attr_OPTIMUM
  | Attr_OnABORT
  | Attr_OnAFTERPRINT
  | Attr_OnBEFOREPRINT
  | Attr_OnCANPLAY
  | Attr_OnCANPLAYTHROUGH
  | Attr_OnCONTEXTMENU
  | Attr_OnCUECHANGE
  | Attr_OnDRAG
  | Attr_OnDRAGEND
  | Attr_OnDRAGENTER
  | Attr_OnDRAGLEAVE
  | Attr_OnDRAGOVER
  | Attr_OnDRAGSTART
  | Attr_OnDROP
  | Attr_OnDURATIONCHANGE
  | Attr_OnEMPTIED
  | Attr_OnENDED
  | Attr_OnERROR
  | Attr_OnHASHCHANGE
  | Attr_OnINPUT
  | Attr_OnINVALID
  | Attr_OnLOADEDDATA
  | Attr_OnLOADEDMETADATA
  | Attr_OnLOADSTART
  | Attr_OnMESSAGE
  | Attr_OnMOUSEWHEEL
  | Attr_OnOFFLINE
  | Attr_OnONLINE
  | Attr_OnPAGEHIDE
  | Attr_OnPAGESHOW
  | Attr_OnPAUSE
  | Attr_OnPLAY
  | Attr_OnPLAYING
  | Attr_OnPOPSTATE
  | Attr_OnPROGRESS
  | Attr_OnRATECHANGE
  | Attr_OnREADYSTATECHANGE
  | Attr_OnREDO
  | Attr_OnRESIZE
  | Attr_OnSCROLL
  | Attr_OnSEEKED
  | Attr_OnSEEKING
  | Attr_OnSHOW
  | Attr_OnSTALLED
  | Attr_OnSTORAGE
  | Attr_OnSUSPEND
  | Attr_OnTIMEUPDATE
  | Attr_OnUNDO
  | Attr_OnVOLUMECHANGE
  | Attr_OnWAITING
  | Attr_PATTERN
  | Attr_PLACEHOLDER
  | Attr_POSTER
  | Attr_PRELOAD
  | Attr_PUBDATE
  | Attr_RADIOGROUP
  | Attr_REQUIRED
  | Attr_REVERSED
  | Attr_SANDBOX
  | Attr_SCOPED
  | Attr_SEAMLESS
  | Attr_SIZES
  | Attr_SPELLCHECK
  | Attr_SRCDOC
  | Attr_SRCLANG
  | Attr_STEP
  | Attr_ARIA_ACTIVEDESCENDANT
  | Attr_ARIA_ATOMIC
  | Attr_ARIA_AUTOCOMPLETE
  | Attr_ARIA_BUSY
  | Attr_ARIA_CHECKED
  | Attr_ARIA_CONTROLS
  | Attr_ARIA_DESCRIBEDBY
  | Attr_ARIA_DISABLED
  | Attr_ARIA_DROPEFFECT
  | Attr_ARIA_EXPANDED
  | Attr_ARIA_FLOWTO
  | Attr_ARIA_GRABBED
  | Attr_ARIA_HASPOPUP
  | Attr_ARIA_HIDDEN
  | Attr_ARIA_INVALID
  | Attr_ARIA_LABEL
  | Attr_ARIA_LABELLEDBY
  | Attr_ARIA_LEVEL
  | Attr_ARIA_LIVE
  | Attr_ARIA_MULTILINE
  | Attr_ARIA_MULTISELECTABLE
  | Attr_ARIA_ORIENTATION
  | Attr_ARIA_OWNS
  | Attr_ARIA_POSINSET
  | Attr_ARIA_PRESSED
  | Attr_ARIA_READONLY
  | Attr_ARIA_RELEVANT
  | Attr_ARIA_REQUIRED
  | Attr_ARIA_SELECTED
  | Attr_ARIA_SETSIZE
  | Attr_ARIA_SORT
  | Attr_ARIA_VALUEMAX
  | Attr_ARIA_VALUEMIN
  | Attr_ARIA_VALUENOW
  | Attr_ARIA_VALUETEXT
  | Attr_X (* X=. *)
  | Attr_Y (* Y=. *)
  | Attr_VIEWBOX (* VIEWBOX=. *)
  | Attr_PRESERVEASPECTRATIO (* PRESERVEASPECTRATIO=. *)
  | Attr_ZOOMANDPAN (* ZOOMANDPAN=. *)
  | Attr_BASEPROFILE (* BASEPROFILE=. *)
  | Attr_CONTENTSCRIPTTYPE (* CONTENTSCRIPTTYPE=. *)
  | Attr_CONTENTSTYLETYPE (* CONTENTSTYLETYPE=. *)
  | Attr_DISPLAY (* DISPLAY= (html5) *)
  | N_TIDY_ATTRIBS

type optionId=
  | TidyUnknownOption  (* Unknown option! *)
  | TidyIndentSpaces  (* Indentation n spaces/tabs. *)
  | TidyWrapLen  (* Wrap margin. *)
  | TidyTabSize  (* Expand tabs to n spaces. *)
  | TidyCharEncoding  (* In/out character encoding. *)
  | TidyInCharEncoding  (* Input character encoding (if different) *)
  | TidyOutCharEncoding  (* Output character encoding (if different) *)
  | TidyNewline  (* Output line ending (default to platform) *)
  | TidyDoctypeMode  (* See doctype property. *)
  | TidyDoctype  (* User specified doctype. *)
  | TidyDuplicateAttrs  (* Keep first or last duplicate attribute. *)
  | TidyAltText  (* Default text for alt attribute. *)
  | TidySlideStyle  (* Style sheet for slides: not used for anything yet. *)
  | TidyErrFile  (* File name to write errors to. *)
  | TidyOutFile  (* File name to write markup to. *)
  | TidyWriteBack  (* If true then output tidied markup. *)
  | TidyShowMarkup  (* If false, normal output is suppressed. *)
  | TidyShowInfo  (* If true, info-level messages are shown. *)
  | TidyShowWarnings  (* However errors are always shown. *)
  | TidyQuiet  (* No 'Parsing X', guessed DTD or summary. *)
  | TidyIndentContent  (* Indent content of appropriate tags. "auto" does text/block level content indentation *)
  | TidyCoerceEndTags  (* Coerce end tags from start tags where probably intended. *)
  | TidyOmitOptionalTags  (* Suppress optional start tags and end tags. *)
  | TidyHideEndTags  (* Legacy name for TidyOmitOptionalTags. *)
  | TidyXmlTags  (* Treat input as XML. *)
  | TidyXmlOut  (* Create output as XML. *)
  | TidyXhtmlOut  (* Output extensible HTML. *)
  | TidyHtmlOut  (* Output plain HTML, even for XHTML input. Yes means set explicitly. *)
  | TidyXmlDecl  (* Add <?xml?> for XML docs. *)
  | TidyUpperCaseTags  (* Output tags in upper not lower case. *)
  | TidyUpperCaseAttrs  (* Output attributes in upper not lower case. *)
  | TidyMakeBare  (* Make bare HTML: remove Microsoft cruft. *)
  | TidyMakeClean  (* Replace presentational clutter by style rules. *)
  | TidyGDocClean  (* Clean up HTML exported from Google Docs. *)
  | TidyLogicalEmphasis  (* Replace i by em and b by strong. *)
  | TidyDropPropAttrs  (* Discard proprietary attributes. *)
  | TidyDropFontTags  (* Discard presentation tags. *)
  | TidyDropEmptyElems  (* Discard empty elements. *)
  | TidyDropEmptyParas  (* Discard empty p elements. *)
  | TidyFixComments  (* Fix comments with adjacent hyphens. *)
  | TidyBreakBeforeBR  (* Output newline before or not? *)
  | TidyBurstSlides  (* Create slides on each h2 element. *)
  | TidyNumEntities  (* Use numeric entities. *)
  | TidyQuoteMarks  (* Output " marks as ". *)
  | TidyQuoteNbsp  (* Output non-breaking space as entity. *)
  | TidyQuoteAmpersand  (* Output naked ampersand as &. *)
  | TidyWrapAttVals  (* Wrap within attribute values. *)
  | TidyWrapScriptlets  (* Wrap within JavaScript string literals. *)
  | TidyWrapSection  (* Wrap within <![ ... ]> section tags *)
  | TidyWrapAsp  (* Wrap within ASP pseudo elements. *)
  | TidyWrapJste  (* Wrap within JSTE pseudo elements. *)
  | TidyWrapPhp  (* Wrap within PHP pseudo elements. *)
  | TidyFixBackslash  (* Fix URLs by replacing \ with /. *)
  | TidyIndentAttributes  (* Newline+indent before each attribute. *)
  | TidyXmlPIs  (* If set to yes PIs must end with ?> *)
  | TidyXmlSpace  (* If set to yes adds xml:space attr as needed. *)
  | TidyEncloseBodyText  (* If yes text at body is wrapped in P's. *)
  | TidyEncloseBlockText  (* If yes text in blocks is wrapped in P's. *)
  | TidyKeepFileTimes  (* If yes last modied time is preserved. *)
  | TidyWord2000  (* Draconian cleaning for Word2000. *)
  | TidyMark  (* Add meta element indicating tidied doc. *)
  | TidyEmacs  (* If true format error output for GNU Emacs. *)
  | TidyEmacsFile  (* Name of current Emacs file. *)
  | TidyLiteralAttribs  (* If true attributes may use newlines. *)
  | TidyBodyOnly  (* Output BODY content only. *)
  | TidyFixUri  (* Applies URI encoding if necessary. *)
  | TidyLowerLiterals  (* Folds known attribute values to lower case. *)
  | TidyHideComments  (* Hides all (real) comments in output. *)
  | TidyIndentCdata  (* Indent <!CDATA[ ... ]]> section *)
  | TidyForceOutput  (* Output document even if errors were found. *)
  | TidyShowErrors  (* Number of errors to put out. *)
  | TidyAsciiChars  (* Convert quotes and dashes to nearest ASCII char. *)
  | TidyJoinClasses  (* Join multiple class attributes. *)
  | TidyJoinStyles  (* Join multiple style attributes. *)
  | TidyEscapeCdata  (* Replace <![CDATA[]]> sections with escaped text. *)
  | TidyLanguage
  | TidyNCR
  | TidyOutputBOM
  | TidyReplaceColor  (* Replace hex color attribute values with names. *)
  | TidyCSSPrefix  (* CSS class naming for -clean option. *)
  | TidyInlineTags  (* Declared inline tags. *)
  | TidyBlockTags  (* Declared block tags. *)
  | TidyEmptyTags  (* Declared empty tags. *)
  | TidyPreTags  (* Declared pre tags. *)
  | TidyAccessibilityCheckLevel  (* Accessibility check level 0 (old style), or 1, 2, 3. *)
  | TidyVertSpace  (* degree to which markup is spread out vertically *)
  | TidyPunctWrap
  | TidyMergeEmphasis  (* Merge nested B and I elements. *)
  | TidyMergeDivs  (* Merge multiple DIVs. *)
  | TidyDecorateInferredUL  (* Mark inferred UL elements with no indent CSS. *)
  | TidyPreserveEntities  (* Preserve entities. *)
  | TidySortAttributes  (* Sort attributes. *)
  | TidyMergeSpans  (* Merge multiple SPANs. *)
  | TidyAnchorAsName  (* Define anchors as name attributes. *)
  | TidyPPrintTabs  (* Indent using tabs istead of spaces. *)
  | N_TIDY_OPTIONS  (* Must be last.  *)

module Stub = struct
  type doc
  type node
  type attr
  type opt


  external create: unit -> doc= "tidyCreate_stub"

  type result=
    | Success     (* 0 *)
    | Td_warning  (* 1 *)
    | Td_error    (* 2 *)
    | Sv_error    (* -1 *)

  type optionType=
    | String
    | Integer
    | Boolean

  let string_of_optionType= function
    | String-> "string"
    | Integer-> "int"
    | Boolean-> "bool"

  let optionType_of_string str=
    match String.lowercase str with
    | "string"-> String
    | "int"-> Integer
    | "bool"-> Boolean
    | _-> failwith "unknown type"

  external getOption: doc -> optionId -> opt = "tidyGetOption_stub"
  external optGetName: opt -> string = "tidyOptGetName_stub"
  external optGetType: opt -> optionType = "tidyOptGetType_stub"
  external optGetId: opt -> optionId = "tidyOptGetId_stub"

  external optGetValue: doc -> optionId -> string = "tidyOptGetValue_stub"
  external optGetInt: doc -> optionId -> int = "tidyOptGetInt_stub"
  external optGetBool: doc -> optionId -> bool = "tidyOptGetBool_stub"

  external optSetValue: doc -> optionId -> string -> unit= "tidyOptSetValue_stub"
  external optSetInt: doc -> optionId -> int -> unit= "tidyOptSetInt_stub"
  external optSetBool: doc -> optionId -> bool -> unit= "tidyOptSetBool_stub"

  external setCharEncoding: doc -> string -> int = "tidySetCharEncoding_stub"
  external setInCharEncoding: doc -> string -> int = "tidySetInCharEncoding_stub"
  external setOutCharEncoding: doc -> string -> int = "tidySetOutCharEncoding_stub"
  external declareBlockTags: doc -> string -> unit = "tidyDeclareBlockTags_stub"
  external setDropEmptyParas: doc -> bool -> unit = "tidySetDropEmptyParas_stub"
  external setDropEmptyElems: doc -> bool -> unit = "tidySetDropEmptyElems_stub"

  external parseFile: doc -> string -> result= "tidyParseFile_stub"
  external parseString: doc -> string -> result= "tidyParseString_stub"

  external cleanAndRepair: doc -> unit= "tidyCleanAndRepair_stub" "noalloc"
  external reportDoctype: doc -> unit= "tidyReportDoctype_stub" "noalloc"
  external runDiagnostics: doc -> unit= "tidyRunDiagnostics_stub" "noalloc"

  external saveFile: doc -> string -> unit= "tidySaveFile_stub"
  external saveString: doc -> string option= "tidySaveString_stub"

  external getRoot: doc -> node= "tidyGetRoot_stub"
  external getHtml: doc -> node= "tidyGetHtml_stub"
  external getHead: doc -> node= "tidyGetHead_stub"
  external getBody: doc -> node= "tidyGetBody_stub"

  external attrGetId: attr -> attrId = "tidyAttrGetId_stub"
  external attrIsEvent: attr -> bool = "tidyAttrIsEvent_stub"
  external attrIsProp: attr -> bool = "tidyAttrIsProp_stub"

  external attrGetById: node -> attrId -> attr option= "tidyAttrGetById_stub"

  external getParent: node -> node option= "tidyGetParent_stub"
  external getChild: node -> node option= "tidyGetChild_stub"
  external getNext: node -> node option= "tidyGetNext_stub"
  external getPrev: node -> node option= "tidyGetPrev_stub"
  external attrFirst: node -> attr option= "tidyAttrFirst_stub"
  external attrNext: attr -> attr option= "tidyAttrNext_stub"
  external attrName: attr -> string= "tidyAttrName_stub"
  external attrValue: attr -> string= "tidyAttrValue_stub"

  external nodeGetId: node -> tagId= "tidyNodeGetId_stub"
  external nodeGetType: node -> nodeType= "tidyNodeGetType_stub"
  external nodeGetValue: doc -> node -> string option= "tidyNodeGetValue_stub"
  external nodeGetName: node -> string= "tidyNodeGetName_stub"
  external nodeIsText: node -> bool= "tidyNodeIsText_stub"
  external nodeIsProp: doc -> node -> bool= "tidyNodeIsProp_stub"
  external nodeIsHeader: node -> bool= "tidyNodeIsHeader_stub"
  external nodeHasText: doc -> node -> bool= "tidyNodeHasText_stub"
  external nodeGetText: doc -> node -> string option= "tidyNodeGetText_stub"
  external nodeLine: node -> int= "tidyNodeLine_stub"
  external nodeColumn: node -> int= "tidyNodeColumn_stub"
end

type doc= Stub.doc

type node= {
  doc: Stub.doc;
  node: Stub.node;
}

type attr= {
  doc: Stub.doc;
  attr: Stub.attr;
}

type opt=
  | Str of string
  | Int of int
  | Bool of bool

module Config = struct
  let blockTags doc tags=
    Stub.declareBlockTags doc (String.concat ~sep:" " tags)

  type t=
    | BlockTags of string list
    | Encoding of string
    | InEncoding of string
    | OutEncoding of string
    | DropEmptyParas of bool
    | DropEmptyElems of bool

  let apply configs doc= List.iter configs
    ~f:(function
      | BlockTags tags-> blockTags doc tags
      | Encoding enc-> Stub.setCharEncoding doc enc |> ignore
      | InEncoding enc-> Stub.setInCharEncoding doc enc |> ignore
      | OutEncoding enc-> Stub.setOutCharEncoding doc enc |> ignore
      | DropEmptyParas ifDrop-> Stub.setDropEmptyParas doc ifDrop |> ignore
      | DropEmptyElems ifDrop-> Stub.setDropEmptyElems doc ifDrop |> ignore
      )
end

let parseFile config filePath=
  let doc= Stub.create () in
  Config.apply config doc;
  match Stub.parseFile doc filePath with
  | Stub.Success | Stub.Td_warning | Stub.Td_error -> doc
  | Stub.Sv_error-> failwith (sprintf "can't parse file %s" filePath)

let parseString config str=
  let doc= Stub.create () in
  Config.apply config doc;
  match Stub.parseString doc str with
  | Stub.Success | Stub.Td_warning | Stub.Td_error -> doc
  | Stub.Sv_error-> failwith "sv_error"

let getOption doc optId=
  match Stub.getOption doc optId |> Stub.optGetType with
  | Stub.String-> Str (Stub.optGetValue doc optId)
  | Stub.Integer-> Int (Stub.optGetInt doc optId)
  | Stub.Boolean-> Bool (Stub.optGetBool doc optId)

let setOption doc optId value=
  let opt= Stub.getOption doc optId in
  let name= Stub.optGetName opt
  and optType= Stub.optGetType opt in
  match optType with
  | Stub.String->
    (match value with
    | Str v-> Stub.optSetValue doc optId v
    | _-> failwith (sprintf
      "%s requires a string parameter, but a %s is encounted"
      name
      (Stub.string_of_optionType optType)))
  | Stub.Integer->
    (match value with
    | Int v-> Stub.optSetInt doc optId v
    | _-> failwith (sprintf
      "%s requires a int parameter, but a %s is encounted"
      name
      (Stub.string_of_optionType optType)))
  | Stub.Boolean->
    (match value with
    | Bool v-> Stub.optSetBool doc optId v
    | _-> failwith (sprintf
      "%s requires a bool parameter, but a %s is encounted"
      name
      (Stub.string_of_optionType optType)))

let cleanAndRepair= Stub.cleanAndRepair
let reportDoctype= Stub.reportDoctype
let runDiagnostics doc=
  cleanAndRepair doc;
  Stub.cleanAndRepair doc

let saveFile= Stub.saveFile
let saveString= Stub.saveString

let docGetRoot doc= {doc; node= Stub.getRoot doc}
let docGetHtml doc= {doc; node= Stub.getHtml doc}
let docGetHead doc= {doc; node= Stub.getHead doc}
let docGetBody doc= {doc; node= Stub.getBody doc}

let attrGetId {doc; attr}= Stub.attrGetId attr
let attrIsEvent {doc; attr}= Stub.attrIsEvent attr
let attrIsProp {doc; attr}= Stub.attrIsProp attr

let attrGetById {doc; node} attrId=
  match Stub.attrGetById node attrId with
  | Some attr-> Some { doc; attr }
  | None-> None

let getParent {doc; node}=
  match Stub.getParent node with
  | Some node -> Some {doc;node}
  | None-> None

let getChildren {doc; node}=
  let rec get_children node=
    match Stub.getNext node with
    | Some node-> {doc; node} :: get_children node
    | None-> []
  in
  match Stub.getChild node with
  | Some node -> {doc; node} :: get_children node
  | None-> []

let getAttrs {doc; node}=
  let rec get_attrs attr map=
    match Stub.attrNext attr with
    | Some attr-> get_attrs attr
      (String.Map.add map
        ~key:(Stub.attrName attr)
        ~data:(Stub.attrValue attr))
    | None-> map
  in
  match Stub.attrFirst node with
  | Some attr-> get_attrs attr
      (String.Map.singleton (Stub.attrName attr) (Stub.attrValue attr))
  | None-> String.Map.empty

let getType {doc; node}= Stub.nodeGetType node
let getName {doc; node}= let open Stub in
  match nodeGetType node with
  | Node_Root-> "root"
  | Node_DocType-> "doctype"
  | Node_Comment-> "comment"
  | Node_ProcIns-> "processing instruction"
  | Node_Text-> "text"
  | Node_Start | Node_End | Node_StartEnd-> nodeGetName node
  | Node_CDATA-> "cdata"
  | Node_Section-> "xml section"
  | Node_Asp-> "asp"
  | Node_Jste-> "jste"
  | Node_Php-> "php"
  | Node_XmlDecl-> "xml declaration"


let isText {doc; node}= Stub.nodeIsText node
let isProp {doc; node}= Stub.nodeIsProp doc node
let isHeader {doc; node}= Stub.nodeIsHeader node
let hasText {doc; node}= Stub.nodeHasText doc node
let getValue {doc; node}= Stub.nodeGetValue doc node
let getValue_exn node=
  match getValue node with
  | Some value-> value
  | None-> raise Not_found
let getId {doc; node}= Stub.nodeGetId node
let getText {doc; node}= Stub.nodeGetText doc node
let getText_exn node=
  match getText node with
  | Some text-> text
  | None-> raise Not_found

let line {doc; node}= Stub.nodeLine node
let column {doc; node}= Stub.nodeColumn node

let rec extractText node=
  match getType node with
  | Node_Text-> [Option.value (getText node) ~default:""]
  | Node_Start | Node_End | Node_StartEnd->
    getChildren node
      |> List.map ~f:extractText
      |> List.concat
  | _-> []

module Tree = struct
  type index= {
    byType: node list String.Map.t;
    byAttr: node list String.Map.t;
  }

  let rec generateIndex node=
    if isText node then
      { byType= String.Map.singleton "text" [node];
        byAttr= String.Map.empty}
    else
      let name= getName node
      and attrs= getAttrs node
      and childrenIndex= List.map (getChildren node) ~f:generateIndex in
      let index= List.fold childrenIndex
        ~init:{byType= String.Map.empty; byAttr= String.Map.empty}
        ~f:(fun acc index->
          { byType= String.Map.merge acc.byType index.byType
              ~f:(fun ~key value->
                match value with
                | `Both (a, b)-> Some (List.merge a b ~cmp:compare)
                | `Left v-> Some v
                | `Right v-> Some v);
            byAttr= String.Map.merge acc.byAttr index.byAttr
              ~f:(fun ~key value->
                match value with
                | `Both (a, b)-> Some (List.merge a b ~cmp:compare)
                | `Left v-> Some v
                | `Right v-> Some v)})
      in
      { byType= String.Map.add_multi index.byType ~key:name ~data:node;
        byAttr= List.fold (String.Map.keys attrs)
          ~init:index.byAttr
          ~f:(fun acc attr-> String.Map.add_multi acc ~key:attr ~data:node)
      }

  let find index attr value=
    let _value= value in
    let open Option in
    String.Map.find index.byAttr attr
      >>| (List.filter
        ~f:(fun node->
          Option.value
            (let attrs= getAttrs node in
            String.Map.find attrs attr >>| ((=) _value))
            ~default:false))
      |> value ~default:[]
end

