.class public abstract Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Entities$EscapeMode;,
        Lorg/jsoup/nodes/Entities$CoreCharset;
    }
.end annotation


# static fields
.field private static final LocalEncoder:Ljava/lang/ThreadLocal;

.field private static final baseSorted:Ljava/util/ArrayList;

.field private static final charBuf:Ljava/lang/ThreadLocal;

.field private static final codeDelims:[C

.field private static final multipoints:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$KTvUvCKvCXkaAvR11N3mF4BDb7k()[C
    .locals 1

    const/4 v0, 0x2

    .line 284
    new-array v0, v0, [C

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x6a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/jsoup/nodes/Entities;->baseSorted:Ljava/util/ArrayList;

    .line 284
    new-instance v0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lorg/jsoup/internal/SoftPool$$ExternalSyntheticThreadLocal1;

    invoke-direct {v1, v0}, Lorg/jsoup/internal/SoftPool$$ExternalSyntheticThreadLocal1;-><init>(Ljava/util/function/Supplier;)V

    sput-object v1, Lorg/jsoup/nodes/Entities;->charBuf:Ljava/lang/ThreadLocal;

    .line 374
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/Entities;->LocalEncoder:Ljava/lang/ThreadLocal;

    return-void

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 25
    sget-object v0, Lorg/jsoup/nodes/Entities;->baseSorted:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Lorg/jsoup/nodes/Entities;->load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V

    return-void
.end method

.method private static appendApos(Lorg/jsoup/internal/QuietAppendable;ILorg/jsoup/nodes/Entities$EscapeMode;)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 293
    sget-object p1, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-ne p2, p1, :cond_0

    const-string p1, "&#x27;"

    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    return-void

    .line 294
    :cond_0
    const-string p1, "&apos;"

    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    return-void

    :cond_1
    const/16 p1, 0x27

    .line 296
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    return-void
.end method

.method private static appendEncoded(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V
    .locals 2

    .line 301
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Entities$EscapeMode;->nameForCodepoint(I)Ljava/lang/String;

    move-result-object p1

    .line 302
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3b

    if-nez v0, :cond_0

    const/16 p2, 0x26

    .line 303
    invoke-virtual {p0, p2}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    return-void

    .line 305
    :cond_0
    const-string p1, "&#x"

    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    return-void
.end method

.method private static appendEscaped(ILorg/jsoup/internal/QuietAppendable;ILorg/jsoup/nodes/Entities$EscapeMode;Lorg/jsoup/nodes/Entities$CoreCharset;Ljava/nio/charset/CharsetEncoder;)V
    .locals 2

    .line 233
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-ne v0, p3, :cond_0

    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->isValidXmlChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-char v0, p0

    const/high16 v1, 0x10000

    if-ge p0, v1, :cond_b

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0xd

    if-eq v0, v1, :cond_a

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    const/16 v1, 0x27

    if-eq v0, v1, :cond_3

    const/16 p2, 0x20

    if-lt v0, p2, :cond_2

    .line 269
    invoke-static {p4, v0, p5}, Lorg/jsoup/nodes/Entities;->canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p1, v0}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    return-void

    .line 269
    :cond_2
    :goto_0
    invoke-static {p1, p3, p0}, Lorg/jsoup/nodes/Entities;->appendEncoded(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    return-void

    .line 260
    :cond_3
    invoke-static {p1, p2, p3}, Lorg/jsoup/nodes/Entities;->appendApos(Lorg/jsoup/internal/QuietAppendable;ILorg/jsoup/nodes/Entities$EscapeMode;)V

    return-void

    .line 243
    :cond_4
    const-string p0, "&amp;"

    invoke-virtual {p1, p0}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    return-void

    .line 246
    :cond_5
    invoke-static {p1, p3}, Lorg/jsoup/nodes/Entities;->appendNbsp(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;)V

    return-void

    .line 252
    :cond_6
    const-string p0, "&gt;"

    invoke-virtual {p1, p0}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    return-void

    .line 249
    :cond_7
    const-string p0, "&lt;"

    invoke-virtual {p1, p0}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    return-void

    :cond_8
    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_9

    .line 255
    const-string p0, "&quot;"

    invoke-virtual {p1, p0}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    return-void

    .line 256
    :cond_9
    invoke-virtual {p1, v0}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    return-void

    .line 266
    :cond_a
    invoke-virtual {p1, v0}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    return-void

    .line 273
    :cond_b
    invoke-static {p4, v0, p5}, Lorg/jsoup/nodes/Entities;->canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 275
    sget-object p2, Lorg/jsoup/nodes/Entities;->charBuf:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [C

    const/4 p3, 0x0

    .line 276
    invoke-static {p0, p2, p3}, Ljava/lang/Character;->toChars(I[CI)I

    move-result p0

    .line 277
    invoke-virtual {p1, p2, p3, p0}, Lorg/jsoup/internal/QuietAppendable;->append([CII)Lorg/jsoup/internal/QuietAppendable;

    return-void

    .line 279
    :cond_c
    invoke-static {p1, p3, p0}, Lorg/jsoup/nodes/Entities;->appendEncoded(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    return-void
.end method

.method private static appendNbsp(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;)V
    .locals 1

    .line 287
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-eq p1, v0, :cond_0

    const-string p1, "&nbsp;"

    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    return-void

    .line 288
    :cond_0
    const-string p1, "&#xa0;"

    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    return-void
.end method

.method private static canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z
    .locals 3

    .line 344
    sget-object v0, Lorg/jsoup/nodes/Entities$1;->$SwitchMap$org$jsoup$nodes$Entities$CoreCharset:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    .line 350
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result p0

    return p0

    :cond_0
    const p0, 0xd800

    if-lt p1, p0, :cond_2

    const p0, 0xe000

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/16 p0, 0x80

    if-ge p1, p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public static codepointsForName(Ljava/lang/String;[I)I
    .locals 3

    .line 132
    sget-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v2

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v1

    const/4 p0, 0x2

    return p0

    .line 138
    :cond_0
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 140
    aput p0, p1, v2

    return v1

    :cond_1
    return v2
.end method

.method private static doEscape(Ljava/lang/String;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;I)V
    .locals 11

    .line 195
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/nodes/Entities$CoreCharset;->byName(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$CoreCharset;

    move-result-object v5

    .line 196
    invoke-static {p3}, Lorg/jsoup/nodes/Entities;->encoderFor(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v6

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p3, :cond_6

    move v4, v1

    .line 204
    invoke-virtual {p0, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    and-int/lit8 v8, p4, 0x4

    if-eqz v8, :cond_5

    .line 207
    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v8

    const/16 v9, 0x20

    const/4 v10, 0x1

    if-eqz v8, :cond_3

    and-int/lit8 v8, p4, 0x8

    if-eqz v8, :cond_0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    :goto_1
    move v10, v2

    move-object v2, p1

    move p1, v4

    move-object v4, p2

    move p2, v3

    move v3, p4

    goto :goto_4

    :cond_1
    and-int/lit8 v8, p4, 0x10

    if-eqz v8, :cond_2

    move-object v4, p2

    move v10, v2

    move p2, v3

    move-object v2, p1

    move v3, p4

    const/4 p1, 0x1

    goto :goto_4

    .line 214
    :cond_2
    invoke-virtual {p1, v9}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    move v3, p4

    move v10, v2

    move-object v2, p1

    move p1, v4

    move-object v4, p2

    const/4 p2, 0x1

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_4

    .line 221
    invoke-virtual {p1, v9}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    move-object v2, p1

    move-object v4, p2

    move v3, p4

    const/4 p1, 0x0

    :goto_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    move-object v2, p1

    move v3, p4

    move p1, v4

    move-object v4, p2

    goto :goto_2

    :cond_5
    move v10, v2

    move-object v2, p1

    move p1, v4

    move-object v4, p2

    move p2, v3

    move v3, p4

    .line 226
    :goto_3
    invoke-static/range {v1 .. v6}, Lorg/jsoup/nodes/Entities;->appendEscaped(ILorg/jsoup/internal/QuietAppendable;ILorg/jsoup/nodes/Entities$EscapeMode;Lorg/jsoup/nodes/Entities$CoreCharset;Ljava/nio/charset/CharsetEncoder;)V

    .line 203
    :goto_4
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p4

    add-int/2addr v7, p4

    move v1, p1

    move-object p1, v2

    move p4, v3

    move v2, v10

    move v3, p2

    move-object p2, v4

    goto :goto_0

    :cond_6
    return-void
.end method

.method private static encoderFor(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
    .locals 3

    .line 376
    sget-object v0, Lorg/jsoup/nodes/Entities;->LocalEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/CharsetEncoder;

    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    .line 378
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    .line 379
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 180
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, v1}, Lorg/jsoup/nodes/Entities;->escapeString(Ljava/lang/String;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static escape(Lorg/jsoup/internal/QuietAppendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;I)V
    .locals 1

    .line 191
    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p1, p0, v0, p2, p3}, Lorg/jsoup/nodes/Entities;->doEscape(Ljava/lang/String;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method private static escapeString(Ljava/lang/String;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 184
    const-string p0, ""

    return-object p0

    .line 185
    :cond_0
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lorg/jsoup/internal/QuietAppendable;->wrap(Ljava/lang/Appendable;)Lorg/jsoup/internal/QuietAppendable;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, p1, p2, v2}, Lorg/jsoup/nodes/Entities;->doEscape(Ljava/lang/String;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;I)V

    .line 187
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static findPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 152
    sget-object v0, Lorg/jsoup/nodes/Entities;->baseSorted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 155
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static isBaseNamedEntity(Ljava/lang/String;)Z
    .locals 1

    .line 112
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNamedEntity(Ljava/lang/String;)Z
    .locals 1

    .line 101
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidXmlChar(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 8

    .line 385
    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$202(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 386
    new-array v0, p2, [I

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$302(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    .line 387
    new-array v0, p2, [I

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$402(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    .line 388
    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$502(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 391
    new-instance v0, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 392
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x3d

    .line 395
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 397
    sget-object v3, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 398
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v5

    .line 399
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    const/16 v6, 0x2c

    const/4 v7, -0x1

    if-ne v5, v6, :cond_0

    const/16 v5, 0x3b

    .line 402
    invoke-virtual {v0, v5}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 403
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v5, -0x1

    :goto_1
    const/16 v6, 0x26

    .line 407
    invoke-virtual {v0, v6}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v6

    .line 408
    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 409
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 411
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$200(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    move-result-object v6

    aput-object v2, v6, v1

    .line 412
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$300(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    move-result-object v6

    aput v3, v6, v1

    .line 413
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$400(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    move-result-object v6

    aput v3, v6, v4

    .line 414
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$500(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    move-result-object v6

    aput-object v2, v6, v4

    if-eq v5, v7, :cond_1

    .line 417
    sget-object v4, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/String;

    filled-new-array {v3, v5}, [I

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {v6, v3, p1, v5}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v1, p2, :cond_3

    const/4 p1, 0x1

    .line 422
    :cond_3
    const-string p0, "Unexpected count of entities loaded"

    invoke-static {p1, p0}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->close()V

    return-void

    .line 391
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method
