.class abstract Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
.super Ljava/lang/Object;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Constants"
.end annotation


# static fields
.field static final AfterHeadBody:[Ljava/lang/String;

.field static final BeforeHtmlToHead:[Ljava/lang/String;

.field static final DdDt:[Ljava/lang/String;

.field static final Headings:[Ljava/lang/String;

.field static final InBodyEndAdoptionFormatters:[Ljava/lang/String;

.field static final InBodyEndClosers:[Ljava/lang/String;

.field static final InBodyEndOtherErrors:[Ljava/lang/String;

.field static final InBodyStartApplets:[Ljava/lang/String;

.field static final InBodyStartDrop:[Ljava/lang/String;

.field static final InBodyStartInputAttribs:[Ljava/lang/String;

.field static final InBodyStartLiBreakers:[Ljava/lang/String;

.field static final InBodyStartMedia:[Ljava/lang/String;

.field static final InBodyStartPClosers:[Ljava/lang/String;

.field static final InBodyStartToHead:[Ljava/lang/String;

.field static final InCaptionIgnore:[Ljava/lang/String;

.field static final InCellBody:[Ljava/lang/String;

.field static final InCellCol:[Ljava/lang/String;

.field static final InCellNames:[Ljava/lang/String;

.field static final InCellTable:[Ljava/lang/String;

.field static final InForeignToHtml:[Ljava/lang/String;

.field static final InHeadEmpty:[Ljava/lang/String;

.field static final InHeadEnd:[Ljava/lang/String;

.field static final InHeadNoScriptHead:[Ljava/lang/String;

.field static final InHeadNoscriptIgnore:[Ljava/lang/String;

.field static final InHeadRaw:[Ljava/lang/String;

.field static final InRowIgnore:[Ljava/lang/String;

.field static final InRowMissing:[Ljava/lang/String;

.field static final InSelectEnd:[Ljava/lang/String;

.field static final InSelectTableEnd:[Ljava/lang/String;

.field static final InTableAddBody:[Ljava/lang/String;

.field static final InTableBodyEndIgnore:[Ljava/lang/String;

.field static final InTableBodyExit:[Ljava/lang/String;

.field static final InTableEndErr:[Ljava/lang/String;

.field static final InTableEndIgnore:[Ljava/lang/String;

.field static final InTableFoster:[Ljava/lang/String;

.field static final InTableToBody:[Ljava/lang/String;

.field static final InTableToHead:[Ljava/lang/String;

.field static final InTemplateToHead:[Ljava/lang/String;

.field static final InTemplateToTable:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    .line 1900
    const-string v0, "command"

    const-string v1, "link"

    const-string v2, "base"

    const-string v3, "basefont"

    const-string v4, "bgsound"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEmpty:[Ljava/lang/String;

    .line 1901
    const-string v0, "noframes"

    const-string v1, "style"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadRaw:[Ljava/lang/String;

    .line 1902
    const-string v0, "body"

    const-string v2, "br"

    const-string v3, "html"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEnd:[Ljava/lang/String;

    .line 1903
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->AfterHeadBody:[Ljava/lang/String;

    .line 1904
    const-string v4, "head"

    filled-new-array {v0, v2, v4, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->BeforeHtmlToHead:[Ljava/lang/String;

    .line 1905
    const-string v9, "noframes"

    const-string v10, "style"

    const-string v5, "basefont"

    const-string v6, "bgsound"

    const-string v7, "link"

    const-string v8, "meta"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoScriptHead:[Ljava/lang/String;

    .line 1906
    const-string v14, "template"

    const-string v15, "title"

    const-string v5, "base"

    const-string v6, "basefont"

    const-string v7, "bgsound"

    const-string v8, "command"

    const-string v9, "link"

    const-string v10, "meta"

    const-string v11, "noframes"

    const-string v12, "script"

    const-string v13, "style"

    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    .line 1907
    const-string v25, "summary"

    const-string v26, "ul"

    const-string v5, "address"

    const-string v6, "article"

    const-string v7, "aside"

    const-string v8, "blockquote"

    const-string v9, "center"

    const-string v10, "details"

    const-string v11, "dir"

    const-string v12, "div"

    const-string v13, "dl"

    const-string v14, "fieldset"

    const-string v15, "figcaption"

    const-string v16, "figure"

    const-string v17, "footer"

    const-string v18, "header"

    const-string v19, "hgroup"

    const-string v20, "menu"

    const-string v21, "nav"

    const-string v22, "ol"

    const-string v23, "p"

    const-string v24, "section"

    filled-new-array/range {v5 .. v26}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    .line 1910
    const-string v9, "h5"

    const-string v10, "h6"

    const-string v5, "h1"

    const-string v6, "h2"

    const-string v7, "h3"

    const-string v8, "h4"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    .line 1911
    const-string v2, "div"

    const-string v5, "p"

    const-string v6, "address"

    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    .line 1912
    const-string v2, "dd"

    const-string v5, "dt"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    .line 1913
    const-string v2, "marquee"

    const-string v5, "object"

    const-string v6, "applet"

    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    .line 1914
    const-string v2, "source"

    const-string v5, "track"

    const-string v6, "param"

    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    .line 1915
    const-string v2, "name"

    const-string v5, "prompt"

    const-string v6, "action"

    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    .line 1916
    const-string v14, "thead"

    const-string v15, "tr"

    const-string v5, "caption"

    const-string v6, "col"

    const-string v7, "colgroup"

    const-string v8, "frame"

    const-string v9, "head"

    const-string v10, "tbody"

    const-string v11, "td"

    const-string v12, "tfoot"

    const-string v13, "th"

    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    .line 1917
    const-string v27, "summary"

    const-string v28, "ul"

    const-string v5, "address"

    const-string v6, "article"

    const-string v7, "aside"

    const-string v8, "blockquote"

    const-string v9, "button"

    const-string v10, "center"

    const-string v11, "details"

    const-string v12, "dir"

    const-string v13, "div"

    const-string v14, "dl"

    const-string v15, "fieldset"

    const-string v16, "figcaption"

    const-string v17, "figure"

    const-string v18, "footer"

    const-string v19, "header"

    const-string v20, "hgroup"

    const-string v21, "listing"

    const-string v22, "menu"

    const-string v23, "nav"

    const-string v24, "ol"

    const-string v25, "pre"

    const-string v26, "section"

    filled-new-array/range {v5 .. v28}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    .line 1920
    const-string v21, "thead"

    const-string v22, "tr"

    const-string v5, "body"

    const-string v6, "dd"

    const-string v7, "dt"

    const-string v8, "html"

    const-string v9, "li"

    const-string v10, "optgroup"

    const-string v11, "option"

    const-string v12, "p"

    const-string v13, "rb"

    const-string v14, "rp"

    const-string v15, "rt"

    const-string v16, "rtc"

    const-string v17, "tbody"

    const-string v18, "td"

    const-string v19, "tfoot"

    const-string v20, "th"

    filled-new-array/range {v5 .. v22}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    .line 1921
    const-string v17, "tt"

    const-string v18, "u"

    const-string v5, "a"

    const-string v6, "b"

    const-string v7, "big"

    const-string v8, "code"

    const-string v9, "em"

    const-string v10, "font"

    const-string v11, "i"

    const-string v12, "nobr"

    const-string v13, "s"

    const-string v14, "small"

    const-string v15, "strike"

    const-string v16, "strong"

    filled-new-array/range {v5 .. v18}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    .line 1922
    const-string v2, "tbody"

    const-string v5, "tfoot"

    const-string v6, "thead"

    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToBody:[Ljava/lang/String;

    .line 1923
    const-string v7, "td"

    const-string v8, "th"

    const-string v9, "tr"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableAddBody:[Ljava/lang/String;

    .line 1924
    const-string v10, "script"

    const-string v11, "template"

    filled-new-array {v10, v1, v11}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToHead:[Ljava/lang/String;

    .line 1925
    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellNames:[Ljava/lang/String;

    .line 1926
    const-string v1, "caption"

    const-string v7, "col"

    const-string v8, "colgroup"

    filled-new-array {v0, v1, v7, v8, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellBody:[Ljava/lang/String;

    .line 1927
    const-string v0, "table"

    filled-new-array {v0, v2, v5, v6, v9}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellTable:[Ljava/lang/String;

    .line 1928
    const-string v17, "thead"

    const-string v18, "tr"

    const-string v10, "caption"

    const-string v11, "col"

    const-string v12, "colgroup"

    const-string v13, "tbody"

    const-string v14, "td"

    const-string v15, "tfoot"

    const-string v16, "th"

    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellCol:[Ljava/lang/String;

    .line 1929
    const-string v19, "thead"

    const-string v20, "tr"

    const-string v10, "body"

    const-string v11, "caption"

    const-string v12, "col"

    const-string v13, "colgroup"

    const-string v14, "html"

    const-string v15, "tbody"

    const-string v16, "td"

    const-string v17, "tfoot"

    const-string v18, "th"

    filled-new-array/range {v10 .. v20}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndErr:[Ljava/lang/String;

    .line 1930
    filled-new-array {v0, v2, v5, v6, v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableFoster:[Ljava/lang/String;

    .line 1931
    const-string v13, "tfoot"

    const-string v14, "thead"

    const-string v9, "caption"

    const-string v10, "col"

    const-string v11, "colgroup"

    const-string v12, "tbody"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyExit:[Ljava/lang/String;

    .line 1932
    const-string v15, "th"

    const-string v16, "tr"

    const-string v9, "body"

    const-string v10, "caption"

    const-string v11, "col"

    const-string v12, "colgroup"

    const-string v13, "html"

    const-string v14, "td"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyEndIgnore:[Ljava/lang/String;

    .line 1933
    const-string v14, "thead"

    const-string v15, "tr"

    const-string v9, "caption"

    const-string v10, "col"

    const-string v11, "colgroup"

    const-string v12, "tbody"

    const-string v13, "tfoot"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowMissing:[Ljava/lang/String;

    .line 1934
    const-string v14, "td"

    const-string v15, "th"

    const-string v9, "body"

    const-string v10, "caption"

    const-string v11, "col"

    const-string v12, "colgroup"

    const-string v13, "html"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowIgnore:[Ljava/lang/String;

    .line 1935
    const-string v0, "keygen"

    const-string v3, "textarea"

    const-string v7, "input"

    filled-new-array {v7, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectEnd:[Ljava/lang/String;

    .line 1936
    const-string v15, "thead"

    const-string v16, "tr"

    const-string v9, "caption"

    const-string v10, "table"

    const-string v11, "tbody"

    const-string v12, "td"

    const-string v13, "tfoot"

    const-string v14, "th"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectTableEnd:[Ljava/lang/String;

    .line 1937
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndIgnore:[Ljava/lang/String;

    .line 1938
    const-string v0, "noscript"

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoscriptIgnore:[Ljava/lang/String;

    .line 1939
    const-string v17, "thead"

    const-string v18, "tr"

    const-string v9, "body"

    const-string v10, "col"

    const-string v11, "colgroup"

    const-string v12, "html"

    const-string v13, "tbody"

    const-string v14, "td"

    const-string v15, "tfoot"

    const-string v16, "th"

    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCaptionIgnore:[Ljava/lang/String;

    .line 1940
    const-string v17, "template"

    const-string v18, "title"

    const-string v9, "base"

    const-string v10, "basefont"

    const-string v11, "bgsound"

    const-string v12, "link"

    const-string v13, "meta"

    const-string v14, "noframes"

    const-string v15, "script"

    const-string v16, "style"

    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToHead:[Ljava/lang/String;

    .line 1941
    filled-new-array {v1, v8, v2, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToTable:[Ljava/lang/String;

    .line 1942
    const-string v43, "ul"

    const-string v44, "var"

    const-string v1, "b"

    const-string v2, "big"

    const-string v3, "blockquote"

    const-string v4, "body"

    const-string v5, "br"

    const-string v6, "center"

    const-string v7, "code"

    const-string v8, "dd"

    const-string v9, "div"

    const-string v10, "dl"

    const-string v11, "dt"

    const-string v12, "em"

    const-string v13, "embed"

    const-string v14, "h1"

    const-string v15, "h2"

    const-string v16, "h3"

    const-string v17, "h4"

    const-string v18, "h5"

    const-string v19, "h6"

    const-string v20, "head"

    const-string v21, "hr"

    const-string v22, "i"

    const-string v23, "img"

    const-string v24, "li"

    const-string v25, "listing"

    const-string v26, "menu"

    const-string v27, "meta"

    const-string v28, "nobr"

    const-string v29, "ol"

    const-string v30, "p"

    const-string v31, "pre"

    const-string v32, "ruby"

    const-string v33, "s"

    const-string v34, "small"

    const-string v35, "span"

    const-string v36, "strike"

    const-string v37, "strong"

    const-string v38, "sub"

    const-string v39, "sup"

    const-string v40, "table"

    const-string v41, "tt"

    const-string v42, "u"

    filled-new-array/range {v1 .. v44}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InForeignToHtml:[Ljava/lang/String;

    return-void
.end method
