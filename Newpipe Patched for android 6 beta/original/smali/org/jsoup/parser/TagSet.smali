.class public Lorg/jsoup/parser/TagSet;
.super Ljava/lang/Object;
.source "TagSet.java"


# static fields
.field static final HtmlTagSet:Lorg/jsoup/parser/TagSet;


# instance fields
.field private customizers:Ljava/util/ArrayList;

.field private final source:Lorg/jsoup/parser/TagSet;

.field private final tags:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$33NeMFXtq8UZRJhuUcfsyyfzQro(Lorg/jsoup/parser/Tag;)V
    .locals 1

    .line 280
    sget v0, Lorg/jsoup/parser/Tag;->InlineContainer:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$473TDVBBGSJYP5Xwb6yoqXEKtqM(Lorg/jsoup/parser/Tag;)V
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$4POaZQ698bD_NVb1M9kpaRhmVXM(Lorg/jsoup/parser/Tag;)V
    .locals 1

    .line 284
    sget v0, Lorg/jsoup/parser/Tag;->Data:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$Gt2yCe8LzJugahTzOaoBpdojQxA(Lorg/jsoup/parser/Tag;)V
    .locals 1

    .line 285
    sget v0, Lorg/jsoup/parser/Tag;->FormSubmittable:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$Kf71xmLpVNcoRWxDtI73fnzdTzU(Lorg/jsoup/parser/Tag;)V
    .locals 1

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$Ksk32jaHURaqRvqrehbYhQ2sEUs(Lorg/jsoup/parser/Tag;)V
    .locals 1

    .line 281
    sget v0, Lorg/jsoup/parser/Tag;->Void:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$QbTyyWFGHFN2vexnbopXzrsW968(Lorg/jsoup/parser/Tag;)V
    .locals 1

    .line 286
    sget v0, Lorg/jsoup/parser/Tag;->Block:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$Y9i9o31S68cNYCpK_7JPSZsVhlU(Lorg/jsoup/parser/Tag;)V
    .locals 1

    .line 283
    sget v0, Lorg/jsoup/parser/Tag;->RcData:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$fax0LG3jY2FUO-wq8-ab9QfZJN4(Lorg/jsoup/parser/Tag;)V
    .locals 1

    .line 290
    sget v0, Lorg/jsoup/parser/Tag;->Data:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$g1ukJQIQ957OqA4dKTUNb-xpaR8(Lorg/jsoup/parser/Tag;)V
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$ntNoYQmGqtC_59ukMco74ps3INg(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 94
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$sFSZM_wHndf-dnXeroSRSRvulf4(Lorg/jsoup/parser/Tag;)V
    .locals 1

    .line 278
    sget v0, Lorg/jsoup/parser/Tag;->Block:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$udktToLW2m9xwNaCJF-RHwWb90A(Lorg/jsoup/parser/Tag;)V
    .locals 1

    .line 288
    sget v0, Lorg/jsoup/parser/Tag;->Block:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method public static synthetic $r8$lambda$uvarcyNIbo0lw0EmeKQIBH-nO10(Lorg/jsoup/parser/Tag;)V
    .locals 1

    .line 282
    sget v0, Lorg/jsoup/parser/Tag;->PreserveWhitespace:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Lorg/jsoup/parser/TagSet;->initHtmlDefault()Lorg/jsoup/parser/TagSet;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/TagSet;->HtmlTagSet:Lorg/jsoup/parser/TagSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, v0}, Lorg/jsoup/parser/TagSet;-><init>(Lorg/jsoup/parser/TagSet;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/TagSet;)V
    .locals 5

    .line 53
    iget-object v0, p1, Lorg/jsoup/parser/TagSet;->source:Lorg/jsoup/parser/TagSet;

    invoke-static {p1}, Lorg/jsoup/parser/TagSet;->copyCustomizers(Lorg/jsoup/parser/TagSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/TagSet;-><init>(Lorg/jsoup/parser/TagSet;Ljava/util/ArrayList;)V

    .line 56
    iget-object v0, p1, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 58
    :cond_0
    iget-object p1, p1, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/parser/Tag;

    invoke-virtual {v3}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 63
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private constructor <init>(Lorg/jsoup/parser/TagSet;Ljava/util/ArrayList;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lorg/jsoup/parser/TagSet;->source:Lorg/jsoup/parser/TagSet;

    .line 40
    iput-object p2, p0, Lorg/jsoup/parser/TagSet;->customizers:Ljava/util/ArrayList;

    return-void
.end method

.method public static Html()Lorg/jsoup/parser/TagSet;
    .locals 3

    .line 35
    new-instance v0, Lorg/jsoup/parser/TagSet;

    sget-object v1, Lorg/jsoup/parser/TagSet;->HtmlTagSet:Lorg/jsoup/parser/TagSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TagSet;-><init>(Lorg/jsoup/parser/TagSet;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private static copyCustomizers(Lorg/jsoup/parser/TagSet;)Ljava/util/ArrayList;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->customizers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/jsoup/parser/TagSet;->customizers:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private doAdd(Lorg/jsoup/parser/Tag;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->customizers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 90
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/Map;

    iget-object v1, p1, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    new-instance v2, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1, v2}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 95
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static initHtmlDefault()Lorg/jsoup/parser/TagSet;
    .locals 70

    .line 236
    const-string v68, "listing"

    const-string v69, "#root"

    const-string v1, "html"

    const-string v2, "head"

    const-string v3, "body"

    const-string v4, "frameset"

    const-string v5, "script"

    const-string v6, "noscript"

    const-string v7, "style"

    const-string v8, "meta"

    const-string v9, "link"

    const-string v10, "title"

    const-string v11, "frame"

    const-string v12, "noframes"

    const-string v13, "section"

    const-string v14, "nav"

    const-string v15, "aside"

    const-string v16, "hgroup"

    const-string v17, "header"

    const-string v18, "footer"

    const-string v19, "p"

    const-string v20, "h1"

    const-string v21, "h2"

    const-string v22, "h3"

    const-string v23, "h4"

    const-string v24, "h5"

    const-string v25, "h6"

    const-string v26, "button"

    const-string v27, "ul"

    const-string v28, "ol"

    const-string v29, "pre"

    const-string v30, "div"

    const-string v31, "blockquote"

    const-string v32, "hr"

    const-string v33, "address"

    const-string v34, "figure"

    const-string v35, "figcaption"

    const-string v36, "form"

    const-string v37, "fieldset"

    const-string v38, "ins"

    const-string v39, "del"

    const-string v40, "dl"

    const-string v41, "dt"

    const-string v42, "dd"

    const-string v43, "li"

    const-string v44, "table"

    const-string v45, "caption"

    const-string v46, "thead"

    const-string v47, "tfoot"

    const-string v48, "tbody"

    const-string v49, "colgroup"

    const-string v50, "col"

    const-string v51, "tr"

    const-string v52, "th"

    const-string v53, "td"

    const-string v54, "video"

    const-string v55, "audio"

    const-string v56, "canvas"

    const-string v57, "details"

    const-string v58, "menu"

    const-string v59, "plaintext"

    const-string v60, "template"

    const-string v61, "article"

    const-string v62, "main"

    const-string v63, "center"

    const-string v64, "template"

    const-string v65, "dir"

    const-string v66, "applet"

    const-string v67, "marquee"

    filled-new-array/range {v1 .. v69}, [Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v67, "nobr"

    const-string v68, "rb"

    const-string v1, "object"

    const-string v2, "base"

    const-string v3, "font"

    const-string v4, "tt"

    const-string v5, "i"

    const-string v6, "b"

    const-string v7, "u"

    const-string v8, "big"

    const-string v9, "small"

    const-string v10, "em"

    const-string v11, "strong"

    const-string v12, "dfn"

    const-string v13, "code"

    const-string v14, "samp"

    const-string v15, "kbd"

    const-string v16, "var"

    const-string v17, "cite"

    const-string v18, "abbr"

    const-string v19, "time"

    const-string v20, "acronym"

    const-string v21, "mark"

    const-string v22, "ruby"

    const-string v23, "rt"

    const-string v24, "rp"

    const-string v25, "rtc"

    const-string v26, "a"

    const-string v27, "img"

    const-string v28, "wbr"

    const-string v29, "map"

    const-string v30, "q"

    const-string v31, "sub"

    const-string v32, "sup"

    const-string v33, "bdo"

    const-string v34, "iframe"

    const-string v35, "embed"

    const-string v36, "span"

    const-string v37, "input"

    const-string v38, "select"

    const-string v39, "textarea"

    const-string v40, "label"

    const-string v41, "optgroup"

    const-string v42, "option"

    const-string v43, "legend"

    const-string v44, "datalist"

    const-string v45, "keygen"

    const-string v46, "output"

    const-string v47, "progress"

    const-string v48, "meter"

    const-string v49, "area"

    const-string v50, "param"

    const-string v51, "source"

    const-string v52, "track"

    const-string v53, "summary"

    const-string v54, "command"

    const-string v55, "device"

    const-string v56, "area"

    const-string v57, "basefont"

    const-string v58, "bgsound"

    const-string v59, "menuitem"

    const-string v60, "param"

    const-string v61, "source"

    const-string v62, "track"

    const-string v63, "data"

    const-string v64, "bdi"

    const-string v65, "s"

    const-string v66, "strike"

    filled-new-array/range {v1 .. v68}, [Ljava/lang/String;

    move-result-object v1

    .line 257
    const-string v20, "s"

    const-string v21, "button"

    const-string v2, "title"

    const-string v3, "a"

    const-string v4, "p"

    const-string v5, "h1"

    const-string v6, "h2"

    const-string v7, "h3"

    const-string v8, "h4"

    const-string v9, "h5"

    const-string v10, "h6"

    const-string v11, "pre"

    const-string v12, "address"

    const-string v13, "li"

    const-string v14, "th"

    const-string v15, "td"

    const-string v16, "script"

    const-string v17, "style"

    const-string v18, "ins"

    const-string v19, "del"

    filled-new-array/range {v2 .. v21}, [Ljava/lang/String;

    move-result-object v2

    .line 261
    const-string v22, "source"

    const-string v23, "track"

    const-string v3, "meta"

    const-string v4, "link"

    const-string v5, "base"

    const-string v6, "frame"

    const-string v7, "img"

    const-string v8, "br"

    const-string v9, "wbr"

    const-string v10, "embed"

    const-string v11, "hr"

    const-string v12, "input"

    const-string v13, "keygen"

    const-string v14, "col"

    const-string v15, "command"

    const-string v16, "device"

    const-string v17, "area"

    const-string v18, "basefont"

    const-string v19, "bgsound"

    const-string v20, "menuitem"

    const-string v21, "param"

    filled-new-array/range {v3 .. v23}, [Ljava/lang/String;

    move-result-object v3

    .line 265
    const-string v4, "pre"

    const-string v5, "plaintext"

    const-string v6, "title"

    const-string v7, "textarea"

    const-string v8, "script"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    .line 268
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 269
    const-string v13, "style"

    const-string v14, "xmp"

    const-string v9, "iframe"

    const-string v10, "noembed"

    const-string v11, "noframes"

    const-string v12, "script"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v6

    .line 270
    sget-object v7, Lorg/jsoup/internal/SharedConstants;->FormSubmitTags:[Ljava/lang/String;

    .line 271
    const-string v9, "math"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 272
    const-string v10, "mn"

    const-string v11, "mtext"

    const-string v12, "mi"

    const-string v13, "mo"

    const-string v14, "msup"

    filled-new-array {v12, v13, v14, v10, v11}, [Ljava/lang/String;

    move-result-object v10

    .line 273
    const-string v11, "femerge"

    const-string v12, "femergenode"

    const-string v13, "svg"

    filled-new-array {v13, v11, v12}, [Ljava/lang/String;

    move-result-object v11

    .line 274
    const-string v12, "text"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    .line 275
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    .line 277
    new-instance v13, Lorg/jsoup/parser/TagSet;

    invoke-direct {v13}, Lorg/jsoup/parser/TagSet;-><init>()V

    new-instance v14, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    invoke-direct {v14}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>()V

    .line 278
    const-string v15, "http://www.w3.org/1999/xhtml"

    invoke-direct {v13, v15, v0, v14}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v13, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda5;

    invoke-direct {v13}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda5;-><init>()V

    .line 279
    invoke-direct {v0, v15, v1, v13}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda6;-><init>()V

    .line 280
    invoke-direct {v0, v15, v2, v1}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda7;-><init>()V

    .line 281
    invoke-direct {v0, v15, v3, v1}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda8;-><init>()V

    .line 282
    invoke-direct {v0, v15, v4, v1}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda9;-><init>()V

    .line 283
    invoke-direct {v0, v15, v5, v1}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda10;-><init>()V

    .line 284
    invoke-direct {v0, v15, v6, v1}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda11;-><init>()V

    .line 285
    invoke-direct {v0, v15, v7, v1}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda12;-><init>()V

    .line 286
    const-string v2, "http://www.w3.org/1998/Math/MathML"

    invoke-direct {v0, v2, v9, v1}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda13;-><init>()V

    .line 287
    invoke-direct {v0, v2, v10, v1}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda2;-><init>()V

    .line 288
    const-string v2, "http://www.w3.org/2000/svg"

    invoke-direct {v0, v2, v11, v1}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda3;-><init>()V

    .line 289
    invoke-direct {v0, v2, v12, v1}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda4;-><init>()V

    .line 290
    invoke-direct {v0, v2, v8, v1}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;

    move-result-object v0

    return-object v0
.end method

.method private setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;
    .locals 5

    .line 295
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 296
    invoke-virtual {p0, v3, p1}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v4

    if-nez v4, :cond_0

    .line 298
    new-instance v4, Lorg/jsoup/parser/Tag;

    invoke-direct {v4, v3, v3, p1}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iput v1, v4, Lorg/jsoup/parser/Tag;->options:I

    .line 300
    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TagSet;->add(Lorg/jsoup/parser/Tag;)Lorg/jsoup/parser/TagSet;

    .line 302
    :cond_0
    invoke-interface {p3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public add(Lorg/jsoup/parser/Tag;)Lorg/jsoup/parser/TagSet;
    .locals 1

    .line 81
    sget v0, Lorg/jsoup/parser/Tag;->Known:I

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 82
    invoke-direct {p0, p1}, Lorg/jsoup/parser/TagSet;->doAdd(Lorg/jsoup/parser/Tag;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 220
    instance-of v0, p1, Lorg/jsoup/parser/TagSet;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 221
    :cond_0
    check-cast p1, Lorg/jsoup/parser/TagSet;

    .line 222
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/Map;

    iget-object p1, p1, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/Map;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 107
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 108
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;

    if-eqz v0, :cond_0

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->source:Lorg/jsoup/parser/TagSet;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Lorg/jsoup/parser/TagSet;->doAdd(Lorg/jsoup/parser/Tag;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/Map;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 137
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 138
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1, p3}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 145
    invoke-static {p1}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 147
    :goto_0
    invoke-virtual {p0, p2, p3}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 150
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    move-result-object p2

    .line 151
    iput-object p1, p2, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 152
    invoke-direct {p0, p2}, Lorg/jsoup/parser/TagSet;->doAdd(Lorg/jsoup/parser/Tag;)V

    return-object p2

    :cond_3
    return-object v0

    .line 158
    :cond_4
    new-instance p4, Lorg/jsoup/parser/Tag;

    invoke-direct {p4, p1, p2, p3}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p4}, Lorg/jsoup/parser/TagSet;->doAdd(Lorg/jsoup/parser/Tag;)V

    return-object p4
.end method

.method public valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p3}, Lorg/jsoup/parser/ParseSettings;->preserveTagCase()Z

    move-result p3

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/jsoup/parser/TagSet;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;

    move-result-object p1

    return-object p1
.end method
