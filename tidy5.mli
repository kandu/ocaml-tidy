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

type doc
type node
type attr

module Config :
  sig
    val blockTags : doc -> string list -> unit
    type t =
      | BlockTags of string list
      | Encoding of string
      | InEncoding of string
      | OutEncoding of string
      | DropEmptyParas of bool
      | DropEmptyElems of bool
    val apply : t list -> doc -> unit
  end

val parseFile : Config.t list -> string -> doc
val parseString : Config.t list -> string -> doc

val docGetRoot : doc -> node
val docGetHtml : doc -> node
val docGetHead : doc -> node
val docGetBody : doc -> node

val attrGetId : attr -> attrId

val attrGetById : node -> attrId -> attr option

val getParent : node -> node option
val getChildren : node -> node list
val getAttrs : node -> string Core_kernel.Std.String.Map.t
val getType : node -> nodeType
val getName : node -> string

val isText : node -> bool
val isProp : node -> bool
val isHeader : node -> bool

val hasText : node -> bool
val getId : node -> tagId
val getValue : node -> string option
val getValue_exn : node -> string
val getText : node -> string option
val getText_exn : node -> string
val line : node -> int
val column : node -> int

val extractText : node -> string list

module Tree :
  sig
    type index = {
      byType : node list Core_kernel.Std.String.Map.t;
      byAttr : node list Core_kernel.Std.String.Map.t;
    }
    val generateIndex : node -> index
    val find : index -> string -> string -> node list
  end
