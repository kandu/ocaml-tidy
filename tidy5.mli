type nodeType =
  | Node_Root
  | Node_DocType
  | Node_Comment
  | Node_ProcIns
  | Node_Text
  | Node_Start
  | Node_End
  | Node_StartEnd
  | Node_CDATA
  | Node_Section
  | Node_Asp
  | Node_Jste
  | Node_Php
  | Node_XmlDecl

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
val getText : node -> string

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
