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

  external nodeGetType: node -> nodeType= "tidyNodeGetType_stub"
  external nodeGetName: node -> string= "tidyNodeGetName_stub"
  external nodeIsText: node -> bool= "tidyNodeIsText_stub"
  external nodeIsProp: doc -> node -> bool= "tidyNodeIsProp_stub"
  external nodeIsHeader: node -> bool= "tidyNodeIsHeader_stub"
  external nodeHasText: doc -> node -> bool= "tidyNodeHasText_stub"
  external nodeGetText: doc -> node -> string= "tidyNodeGetText_stub"
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
let getText {doc; node}= Stub.nodeGetText doc node

let rec extractText node=
  match getType node with
  | Node_Text-> [getText node]
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

