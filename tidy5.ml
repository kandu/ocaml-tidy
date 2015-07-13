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

module Stub = struct
  type doc
  type node
  type attr

  external create: unit -> doc= "tidyCreate_stub"

  type result=
    | Success     (* 0 *)
    | Td_warning  (* 1 *)
    | Td_error    (* 2 *)
    | Sv_error    (* -1 *)

  external setCharEncoding: doc -> string -> int = "tidySetCharEncoding_stub"
  external setInCharEncoding: doc -> string -> int = "tidySetInCharEncoding_stub"
  external setOutCharEncoding: doc -> string -> int = "tidySetOutCharEncoding_stub"
  external declareBlockTags: doc -> string -> unit = "tidyDeclareBlockTags_stub"
  external setDropEmptyParas: doc -> bool -> unit = "tidySetDropEmptyParas_stub"
  external setDropEmptyElems: doc -> bool -> unit = "tidySetDropEmptyElems_stub"

  external parseFile: doc -> string -> result= "tidyParseFile_stub"
  external parseString: doc -> string -> result= "tidyParseString_stub"

  external getRoot: doc -> node= "tidyGetRoot_stub"
  external getHtml: doc -> node= "tidyGetHtml_stub"
  external getHead: doc -> node= "tidyGetHead_stub"
  external getBody: doc -> node= "tidyGetBody_stub"
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

let docGetRoot doc= {doc; node= Stub.getRoot doc}
let docGetHtml doc= {doc; node= Stub.getHtml doc}
let docGetHead doc= {doc; node= Stub.getHead doc}
let docGetBody doc= {doc; node= Stub.getBody doc}

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

