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
