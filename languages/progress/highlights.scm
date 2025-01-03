;; Keywords
(
  [
    "ABSTRACT"
    "ACCUM"
    "ACCUMULATE"
    "AMBIGUOUS"
    "AND"
    "ANYWHERE"
    "APPEND"
    "AS"
    "ASC"
    "ASCENDING"
    "ASSEMBLY"
    "ASSIGN"
    "AUTO-ENDKEY"
    "AUTO-GO"
    "AVAIL"
    "AVAILABLE"
    "AVERAGE"
    "BEGINS"
    "BGCOLOR"
    "BINARY"
    "BIND"
    "BLOCK-LEVEL"
    "BREAK"
    "BUFFER"
    "BUTTON"
    "BY"
    "BY-REFERENCE"
    "BY-VALUE"
    "CACHE"
    "CAN-FIND"
    "CASE-SENSITIVE"
    "CASE"
    "CATCH"
    "CHAR"
    "CHARACTER"
    "CLASS"
    "CLOSE"
    "COLLATE"
    "COLUMN-LABEL"
    "COLUMN"
    "COM-HANDLE"
    "CONSTRUCTOR"
    "CONTAINS"
    "CONTEXT-HELP-ID"
    "CONVERT"
    "COUNT"
    "CURRENT"
    "CURRENT-CHANGED"
    "DATA-RELATION"
    "DATA-SOURCE"
    "DATASET-HANDLE"
    "DATASET"
    "DATE"
    "DATETIME-TZ"
    "DATETIME"
    "DCOLOR"
    "DECIMALS"
    "DECIMAL"
    "DEF"
    "DEFAULT"
    "DEFINE"
    "DESC"
    "DESCENDING"
    "DESTRUCTOR"
    "DO"
    "DROP-TARGET"
    "EACH"
    "ECHO"
    "EDITING"
    "ELSE"
    "END"
    "EQ"
    "ERROR"
    "EVENT"
    "EXCEPT"
    "EXCLUSIVE-LOCK"
    "EXTENT"
    "FALSE"
    "FGCOLOR"
    "FIELD"
    "FIELDS"
    "FILE"
    "FINAL"
    "FINALLY"
    "FIND"
    "FIRST"
    "FLAT-BUTTON"
    "FONT"
    "FOR"
    "FORMAT"
    "FRAME"
    "FROM"
    "FUNCTION"
    "GE"
    "GET"
    "GLOBAL"
    "GT"
    "HANDLE"
    "HELP"
    "IF"
    "IMAGE-DOWN"
    "IMAGE-INSENSITIVE"
    "IMAGE-SIZE-CHARS"
    "IMAGE-SIZE-PIXELS"
    "IMAGE-SIZE"
    "IMAGE-UP"
    "IMAGE"
    "IMPLEMENTS"
    "IN"
    "INDEX"
    "INHERITS"
    "INIT"
    "INITIAL"
    "INPUT-OUTPUT"
    "INPUT"
    "INTERFACE"
    "INTEGER"
    "INT64"
    "INT"
    "IS"
    "KEEP-MESSAGES"
    "LABEL"
    "LANDSCAPE"
    "LAST"
    "LEAVE"
    "LE"
    "LIKE"
    "LOB-DIR"
    "LOCKED"
    "LOGICAL"
    "LONGCHAR"
    "LT"
    "MAP"
    "MATCHES"
    "MAXIMUM"
    "MEMPTR"
    "METHOD"
    "MINIMUM"
    "MOUSE-POINTER"
    "NE"
    "NEW"
    "NEXT"
    "NO"
    "NO-APPLY"
    "NO-CONVERT-3D-COLORS"
    "NO-CONVERT"
    "NO-ECHO"
    "NO-ERROR"
    "NO-FOCUS"
    "NO-LOCK"
    "NO-MAP"
    "NO-UNDO"
    "NO-WAIT"
    "NON-SERIALIZABLE"
    "NOT"
    "NUM-COPIES"
    "OF"
    "ON"
    "OR"
    "OTHERWISE"
    "OUTPUT"
    "OVERRIDE"
    "PACKAGE-PRIVATE"
    "PACKAGE-PROTECTED"
    "PAGE-SIZE"
    "PAGED"
    "PARAMETER"
    "PARAM"
    "PFCOLOR"
    "PORTRAIT"
    "PREV"
    "PRIMARY"
    "PRIVATE"
    "PROCEDURE"
    "PROMPT-FOR"
    "PROPATH"
    "PROPERTY"
    "PROTECTED"
    "PUBLIC"
    "QUERY"
    "QUIT"
    "RAW"
    "RCODE-INFORMATION"
    "RECID"
    "REFERENCE-ONLY"
    "RELATION-FIELDS"
    "REPEAT"
    "RETRY"
    "RETURNS"
    "RETURN"
    "ROUTINE-LEVEL"
    "ROWID"
    "ROW"
    "SERIALIZABLE"
    "SERIALIZE-HIDDEN"
    "SERIALIZE-NAME"
    "SET"
    "SHARE-LOCK"
    "SHARED"
    "SIGNATURE"
    "SIZE-CHARS"
    "SIZE-PIXELS"
    "SIZE"
    "SOURCE"
    "STATIC"
    "STOP-AFTER"
    "STOP"
    "STREAM-HANDLE"
    "STREAM"
    "SUB-AVERAGE"
    "SUB-COUNT"
    "SUB-MAXIMUM"
    "SUB-MINIMUM"
    "SUB-TOTAL"
    "TABLE-HANDLE"
    "TABLE"
    "TARGET"
    "TEMP-TABLE"
    "THEN"
    "THROW"
    "TO"
    "TOOLTIP"
    "TOTAL"
    "TRANSACTION"
    "TRUE"
    "UNBUFFERED"
    "UNDO"
    "UNIQUE"
    "USE-INDEX"
    "USE-WIDGET-POOL"
    "USING"
    "VARIABLE"
    "VAR"
    "VOID"
    "WHEN"
    "WHERE"
    "WHILE"
    "WITH"
    "WORD-INDEX"
    "WORK-TABLE"
    "WORKFILE"
    "XML-DATA-TYPE"
    "XML-NODE-NAME"
    "XML-NODE-TYPE"
    "X"
    "YES"
    "Y"
  ] @keyword
)

;; Types
(primitive_type) @type
(using_statement
    (qualified_name
        ((_) (identifier) @type .)
        (#match? @type "^[A-Z]")))

;; Operators
(
  [
    "="
    "+"
    "-"
    "*"
    "/"
    ">"
    "<"
    ">="
    "<="
    "<>"
    "LT"
    "LE"
    "NE"
    "EQ"
    "GT"
    "GE"
    "AND"
    "OR"
    "NOT"
    "MATCHES"
    "CONTAINS"
    "BEGINS"
  ] @operator
)

;; Comments
(comment) @comment

;; Strings
(double_quoted_string
    ("~" (["\"" "`" "~" "\\" "{" "t" "r" "n" "E" "b" "f"])) @string.escape
    ) @string
(single_quoted_string
    ("~" (["\"" "`" "~" "\\" "{" "t" "r" "n" "E" "b" "f"])) @string.escape
    ) @string



;; Numbers
(number_literal) @number
(date_literal) @number

;; Booleans
(boolean_literal) @boolean

;; Constant values
(null_expression) @constant
(constant) @constant


;; Functions and procedures
(procedure_statement
  (identifier) @function
  (body))
(function_statement
  name: (identifier) @function)
(method_definition
  (identifier) @function)
(event_definition
    (identifier) @function)

;; Variables
(variable_definition
  name: (identifier) @variable)

;; Parameters
(procedure_parameter_definition
    name: (identifier) @parameter)
(function_parameter
    (identifier) @parameter)

;; Properties
(property_definition) @property

;; Preprocessor
(include) @preprocessor

;; Punctuation
(["(" ")" "[" "]" "{" "}"]) @punctuation.bracket
(",") @punctuation.list_marker
(":") @punctuation.delimiter
(".") @punctuation.special

;; Class names
(class_statement
  name: (_) @type
  (body))
(interface_statement
  name: (_) @type
  (body))

;; Constants
(constant) @constant

;; Special keywords
(
  [
    "INPUT-OUTPUT"
    "INPUT"
    "OUTPUT"
    "RETURNS"
    "RETURN"
    "BUFFER"
    "TEMP-TABLE"
    "DATASET"
    "PARAMETER"
  ] @keyword.special
)
