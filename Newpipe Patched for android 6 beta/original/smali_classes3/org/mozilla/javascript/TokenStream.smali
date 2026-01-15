.class Lorg/mozilla/javascript/TokenStream;
.super Ljava/lang/Object;
.source "TokenStream.java"

# interfaces
.implements Lorg/mozilla/javascript/Parser$CurrentPositionReporter;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE_ORDER_MARK:C = '\ufeff'

.field private static final EOF_CHAR:I = -0x1

.field private static final NUMERIC_SEPARATOR:C = '_'

.field private static final REPORT_NUMBER_FORMAT_ERROR:I = -0x2


# instance fields
.field private final allStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bigInt:Ljava/math/BigInteger;

.field private commentCursor:I

.field private commentPrefix:Ljava/lang/String;

.field commentType:Lorg/mozilla/javascript/Token$CommentType;

.field cursor:I

.field private dirtyLine:Z

.field private hitEOF:Z

.field private isBinary:Z

.field private isHex:Z

.field private isOctal:Z

.field private isOldOctal:Z

.field private lastLineEnd:I

.field private lineEndChar:I

.field private lineStart:I

.field lineno:I

.field private number:D

.field private parser:Lorg/mozilla/javascript/Parser;

.field private quoteChar:I

.field private rawString:Ljava/lang/StringBuilder;

.field regExpFlags:Ljava/lang/String;

.field private sourceBuffer:[C

.field sourceCursor:I

.field private sourceEnd:I

.field private sourceReader:Ljava/io/Reader;

.field private sourceString:Ljava/lang/String;

.field private string:Ljava/lang/String;

.field private stringBuffer:[C

.field private stringBufferTop:I

.field tokenBeg:I

.field tokenEnd:I

.field private tokenStartLastLineEnd:I

.field private tokenStartLineno:I

.field private final ungetBuffer:[I

.field private ungetCursor:I

.field private xmlIsAttribute:Z

.field private xmlIsTagContent:Z

.field private xmlOpenTagsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    .line 2474
    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v1, 0x80

    .line 2485
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 2487
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Ljava/util/HashMap;

    const/4 v1, 0x3

    .line 2490
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    const/4 v1, 0x0

    .line 2493
    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    .line 2495
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    const/4 v2, -0x1

    .line 2496
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 2531
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    .line 2532
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 41
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 42
    iput p4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 44
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 45
    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    const/16 p1, 0x200

    .line 46
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 47
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 49
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 50
    :cond_2
    iput-object p3, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    .line 51
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 53
    :goto_0
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    return-void
.end method

.method private addToString(I)V
    .locals 6

    .line 2123
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 2124
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v2, v0, v1

    .line 2125
    iget-object v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 2126
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    const/4 v5, 0x0

    .line 2127
    invoke-static {v3, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2128
    iput-object v4, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 2131
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    int-to-char p1, p1

    aput-char p1, v1, v0

    goto :goto_0

    .line 2133
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v4

    aput-char v4, v1, v0

    .line 2134
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    add-int/2addr v0, v3

    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result p1

    aput-char p1, v1, v0

    .line 2136
    :goto_0
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    return-void
.end method

.method private canUngetChar()Z
    .locals 3

    .line 2140
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private final charAt(I)I
    .locals 3

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    .line 2266
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2267
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-lt p1, v2, :cond_1

    return v0

    .line 2270
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    .line 2272
    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-lt p1, v1, :cond_4

    .line 2273
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 2275
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    return v0

    .line 2284
    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    goto :goto_0

    :catch_0
    return v0

    .line 2286
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    aget-char p1, v0, p1

    return p1
.end method

.method private static convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2440
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2441
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2442
    const-string v3, "\\u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 2444
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    if-ge v2, v0, :cond_0

    const/16 v0, 0x30

    .line 2445
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2447
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fillSourceBuffer()Z
    .locals 5

    .line 2362
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2363
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 2364
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2365
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2366
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 2367
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 2368
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    goto :goto_0

    .line 2370
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 2371
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2372
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 2375
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gez v0, :cond_3

    return v2

    .line 2379
    :cond_3
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    const/4 v0, 0x1

    return v0
.end method

.method private getChar()I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2167
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/TokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getChar(Z)I
    .locals 1

    const/4 v0, 0x0

    .line 2171
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/TokenStream;->getChar(ZZ)I

    move-result p1

    return p1
.end method

.method private getChar(ZZ)I
    .locals 6

    .line 2175
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2176
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 2177
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aget p1, p1, v0

    return p1

    .line 2182
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 2183
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v3, v4, :cond_1

    .line 2184
    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    .line 2187
    :cond_1
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 2188
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 2189
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    goto :goto_1

    .line 2191
    :cond_2
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v0, v3, :cond_3

    .line 2192
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2193
    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    .line 2197
    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 2198
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    aget-char v0, v0, v3

    :goto_1
    const/16 v3, 0xd

    const/16 v4, 0xa

    if-nez p2, :cond_5

    .line 2201
    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v5, :cond_5

    if-ne v5, v3, :cond_4

    if-ne v0, v4, :cond_4

    .line 2203
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    goto :goto_0

    .line 2206
    :cond_4
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 2207
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 2208
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    .line 2209
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    :cond_5
    const/16 v2, 0x7f

    if-gt v0, v2, :cond_7

    if-eq v0, v4, :cond_6

    if-ne v0, v3, :cond_a

    .line 2214
    :cond_6
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    return v4

    :cond_7
    const v2, 0xfeff

    if-ne v0, v2, :cond_8

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_9

    .line 2219
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    .line 2222
    :cond_9
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2223
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    return v4

    :cond_a
    :goto_2
    return v0
.end method

.method private getCharIgnoreLineEnd()I
    .locals 1

    const/4 v0, 0x1

    .line 2232
    invoke-direct {p0, v0, v0}, Lorg/mozilla/javascript/TokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getCharIgnoreLineEnd(Z)I
    .locals 1

    const/4 v0, 0x1

    .line 2236
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/TokenStream;->getChar(ZZ)I

    move-result p1

    return p1
.end method

.method private getStringFromBuffer()Ljava/lang/String;
    .locals 4

    .line 2118
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2119
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private getTemplateLiteralChar()I
    .locals 5

    const/4 v0, 0x0

    .line 1592
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd(Z)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 1595
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    const/16 v0, 0x2028

    if-eq v3, v0, :cond_0

    const/16 v0, 0x2029

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    .line 1598
    :cond_1
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 1600
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd(Z)I

    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 1614
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 1615
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 1616
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 1619
    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1
.end method

.method private internString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1450
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Ljava/util/HashMap;

    invoke-static {v0, p1, p1}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    return-object v0
.end method

.method private static isAlpha(I)Z
    .locals 3

    .line 0
    const/16 v0, 0x5a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private static isDigit(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isDigit(II)Z
    .locals 1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    .line 1467
    invoke-static {p1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    .line 1468
    invoke-static {p1}, Lorg/mozilla/javascript/TokenStream;->isHexDigit(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 1469
    invoke-static {p1}, Lorg/mozilla/javascript/TokenStream;->isOctalDigit(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 1470
    invoke-static {p1}, Lorg/mozilla/javascript/TokenStream;->isDualDigit(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static isDualDigit(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x30

    if-eq v0, p0, :cond_1

    const/16 v0, 0x31

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isHexDigit(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static isJSFormatChar(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    int-to-char p0, p0

    .line 1503
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isJSSpace(I)Z
    .locals 4

    const/16 v0, 0x7f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-gt p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    if-eq p0, v3, :cond_1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/16 v0, 0xa0

    if-eq p0, v0, :cond_4

    const v0, 0xfeff

    if-eq p0, v0, :cond_4

    int-to-char p0, p0

    .line 1499
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    if-ne p0, v3, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method static isKeyword(Ljava/lang/String;IZ)Z
    .locals 0

    .line 83
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;IZ)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isMarkingComment()Z
    .locals 2

    .line 2424
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isOctalDigit(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidIdentifierName(Ljava/lang/String;)Z
    .locals 7

    .line 583
    invoke-static {p0}, Lorg/mozilla/javascript/TokenStream$$ExternalSyntheticAPIConversion0;->m(Ljava/lang/String;)Lj$/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Lj$/util/stream/IntStream;->toArray()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x24

    if-nez v3, :cond_0

    if-eq v4, v6, :cond_1

    const/16 v3, 0x5f

    if-eq v4, v3, :cond_1

    .line 585
    invoke-static {v4}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_0
    if-eq v4, v6, :cond_1

    const/16 v3, 0x200c

    if-eq v4, v3, :cond_1

    const/16 v3, 0x200d

    if-eq v4, v3, :cond_1

    .line 592
    invoke-static {v4}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private markCommentStart()V
    .locals 1

    .line 2413
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    return-void
.end method

.method private markCommentStart(Ljava/lang/String;)V
    .locals 1

    .line 2417
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 2418
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    .line 2419
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    :cond_0
    return-void
.end method

.method private matchChar(I)Z
    .locals 1

    .line 2151
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2153
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/4 p1, 0x1

    return p1

    .line 2156
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private matchTemplateLiteralChar(I)Z
    .locals 1

    .line 1629
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1633
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetTemplateLiteralChar(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private peekChar()I
    .locals 1

    .line 2161
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 2162
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    return v0
.end method

.method private peekTemplateLiteralChar()I
    .locals 1

    .line 1638
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    move-result v0

    .line 1639
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetTemplateLiteralChar(I)V

    return v0
.end method

.method private readCDATA()Z
    .locals 3

    .line 2057
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2058
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_1

    .line 2059
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2060
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 2061
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 2062
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 2063
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 2064
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    .line 2069
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2072
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    .line 2073
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 2074
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readDigits(II)I
    .locals 3

    .line 1405
    invoke-static {p1, p2}, Lorg/mozilla/javascript/TokenStream;->isDigit(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1406
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1408
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    :goto_0
    const/16 v1, 0x5f

    if-ne p2, v1, :cond_4

    .line 1417
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result p2

    const/16 v2, 0xa

    if-eq p2, v2, :cond_3

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 1424
    :cond_1
    invoke-static {p1, p2}, Lorg/mozilla/javascript/TokenStream;->isDigit(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1426
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    return v1

    .line 1429
    :cond_2
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, -0x2

    return p1

    .line 1430
    :cond_4
    invoke-static {p1, p2}, Lorg/mozilla/javascript/TokenStream;->isDigit(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1431
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1432
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result p2

    if-ne p2, v0, :cond_0

    return v0

    :cond_5
    return p2
.end method

.method private readEntity()Z
    .locals 4

    .line 2081
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 2082
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_2

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2081
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 2094
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    .line 2095
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 2096
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readPI()Z
    .locals 3

    .line 2102
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2103
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    .line 2104
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    .line 2105
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 2106
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 2111
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    .line 2112
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 2113
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readQuotedString(I)Z
    .locals 2

    .line 2021
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2022
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 2026
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v0, 0x0

    .line 2027
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 2028
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.XML.bad.form"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return p1
.end method

.method private readXmlComment()Z
    .locals 3

    .line 2034
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2035
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 2036
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2037
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 2038
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 2039
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 2040
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 2041
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    .line 2046
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2049
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    .line 2050
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 2051
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private skipLine()V
    .locals 2

    .line 2247
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2248
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 2249
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return-void
.end method

.method private static stringToKeyword(Ljava/lang/String;IZ)I
    .locals 1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    .line 88
    invoke-static {p0}, Lorg/mozilla/javascript/TokenStream;->stringToKeywordForJS(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 90
    :cond_0
    invoke-static {p0, p2}, Lorg/mozilla/javascript/TokenStream;->stringToKeywordForES(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static stringToKeywordForES(Ljava/lang/String;Z)I
    .locals 7

    .line 417
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x1f

    const/16 v3, 0x1e

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x2d

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "function"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x2c

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "instanceof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x2b

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "debugger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0x2a

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x29

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "yield"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0x28

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "while"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0x27

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "throw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v6, 0x26

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "super"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0x25

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v6, 0x24

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "const"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v6, 0x23

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v6, 0x22

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "catch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v6, 0x21

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "break"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v6, 0x20

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "await"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v6, 0x1f

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "with"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v6, 0x1e

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v6, 0x1d

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v6, 0x1c

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "this"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v6, 0x1b

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v6, 0x1a

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v6, 0x19

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "else"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v6, 0x18

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "case"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v6, 0x17

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v6, 0x16

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "try"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v6, 0x15

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v6, 0x14

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "let"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v6, 0x13

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "for"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v6, 0x12

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v6, 0x11

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "if"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v6, 0x10

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v6, 0xf

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "private"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v6, 0xe

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v6, 0xd

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "protected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "finally"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "typeof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "switch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "static"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_27
    const-string v0, "implements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_0

    :cond_27
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_28
    const-string v0, "return"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_0

    :cond_28
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_29
    const-string v0, "public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_0

    :cond_29
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_2a
    const-string v0, "import"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_2b
    const-string v0, "export"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_0

    :cond_2b
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_2c
    const-string v0, "extends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_0

    :cond_2c
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_2d
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 v6, 0x0

    :goto_0
    const/16 p0, 0x8c

    packed-switch v6, :pswitch_data_0

    :cond_2e
    const/4 v1, 0x0

    goto/16 :goto_2

    :pswitch_0
    const/16 v1, 0x81

    goto/16 :goto_2

    :pswitch_1
    const/16 v1, 0x7a

    goto/16 :goto_2

    :pswitch_2
    const/16 v1, 0x3a

    goto/16 :goto_2

    :pswitch_3
    const/16 v1, 0xae

    goto/16 :goto_2

    :pswitch_4
    if-eqz p1, :cond_2e

    :goto_1
    :pswitch_5
    const/16 v1, 0x8c

    goto/16 :goto_2

    :pswitch_6
    const/16 v1, 0x4e

    goto/16 :goto_2

    :pswitch_7
    const/16 v1, 0x82

    goto/16 :goto_2

    :pswitch_8
    const/16 v1, 0x37

    goto/16 :goto_2

    :pswitch_9
    const/16 v1, 0x4f

    goto/16 :goto_2

    :pswitch_a
    const/16 v1, 0x31

    goto/16 :goto_2

    :pswitch_b
    const/16 v1, 0xa8

    goto/16 :goto_2

    :pswitch_c
    const/16 v1, 0x89

    goto/16 :goto_2

    :pswitch_d
    const/16 v1, 0x85

    goto/16 :goto_2

    :pswitch_e
    const/16 v1, 0x88

    goto/16 :goto_2

    :pswitch_f
    const/16 v1, 0x8b

    goto :goto_2

    :pswitch_10
    const/16 v1, 0x32

    goto :goto_2

    :pswitch_11
    const/16 v1, 0x30

    goto :goto_2

    :pswitch_12
    const/16 v1, 0x2f

    goto :goto_2

    :pswitch_13
    const/16 v1, 0x7e

    goto :goto_2

    :pswitch_14
    const/16 v1, 0x80

    goto :goto_2

    :pswitch_15
    const/16 v1, 0x87

    goto :goto_2

    :pswitch_16
    const/16 v1, 0x5a

    goto :goto_2

    :pswitch_17
    const/16 v1, 0x1e

    goto :goto_2

    :pswitch_18
    const/16 v1, 0xa7

    goto :goto_2

    :pswitch_19
    const/16 v1, 0x84

    goto :goto_2

    :pswitch_1a
    const/16 v1, 0x39

    goto :goto_2

    :pswitch_1b
    const/16 v1, 0x7d

    goto :goto_2

    :pswitch_1c
    const/16 v1, 0x83

    goto :goto_2

    :pswitch_1d
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_1e
    const/16 v1, 0x86

    goto :goto_2

    :pswitch_1f
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_20
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_21
    const/16 v1, 0x8a

    goto :goto_2

    :pswitch_22
    const/16 v1, 0x7f

    goto :goto_2

    :pswitch_23
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_24
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_25
    const/4 v1, 0x4

    goto :goto_2

    :pswitch_26
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_27
    const/16 v1, 0x1f

    :goto_2
    :pswitch_28
    if-nez v1, :cond_2f

    return v5

    :cond_2f
    and-int/lit16 p0, v1, 0xff

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_2d
        -0x4dd2db67 -> :sswitch_2c
        -0x4cd6ec4c -> :sswitch_2b
        -0x469e8c5b -> :sswitch_2a
        -0x3a424d97 -> :sswitch_29
        -0x37b1c2d0 -> :sswitch_28
        -0x368fa850 -> :sswitch_27
        -0x35323192 -> :sswitch_26
        -0x350448cc -> :sswitch_25
        -0x3330496f -> :sswitch_24
        -0x32dbb67d -> :sswitch_23
        -0x301acbba -> :sswitch_22
        -0x24459452 -> :sswitch_21
        -0x21ced359 -> :sswitch_20
        -0x12beda7d -> :sswitch_1f
        0xc8b -> :sswitch_1e
        0xd1d -> :sswitch_1d
        0xd25 -> :sswitch_1c
        0x18cc9 -> :sswitch_1b
        0x1a21b -> :sswitch_1a
        0x1a9a0 -> :sswitch_19
        0x1c1bb -> :sswitch_18
        0x1c727 -> :sswitch_17
        0x2e7b30 -> :sswitch_16
        0x2f8d39 -> :sswitch_15
        0x2f9501 -> :sswitch_14
        0x33c587 -> :sswitch_13
        0x364e9e -> :sswitch_12
        0x36758e -> :sswitch_11
        0x375194 -> :sswitch_10
        0x37b0c6 -> :sswitch_f
        0x58e7956 -> :sswitch_e
        0x59a58ff -> :sswitch_d
        0x5a0eebb -> :sswitch_c
        0x5a5a978 -> :sswitch_b
        0x5a73763 -> :sswitch_a
        0x5cb1923 -> :sswitch_9
        0x68b6f7b -> :sswitch_8
        0x693a6e6 -> :sswitch_7
        0x6bdcb31 -> :sswitch_6
        0x6da5f8d -> :sswitch_5
        0x1df56d39 -> :sswitch_4
        0x20a6f421 -> :sswitch_3
        0x35c3d12c -> :sswitch_2
        0x524f73d8 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_5
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_5
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static stringToKeywordForJS(Ljava/lang/String;)I
    .locals 14

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x3a

    const/16 v2, 0x39

    const/16 v3, 0x37

    const/16 v4, 0x32

    const/16 v5, 0x31

    const/16 v6, 0x30

    const/16 v7, 0x2f

    const/16 v8, 0x20

    const/16 v9, 0x1f

    const/16 v10, 0x1e

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "abstract"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v13, 0x3c

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v13, 0x3b

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "function"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v13, 0x3a

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "transient"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v13, 0x39

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "instanceof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v13, 0x38

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "debugger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v13, 0x37

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v13, 0x36

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "yield"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v13, 0x35

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "while"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v13, 0x34

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "throw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v13, 0x33

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "super"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v13, 0x32

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v13, 0x31

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v13, 0x30

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "final"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v13, 0x2f

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v13, 0x2e

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "const"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v13, 0x2d

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v13, 0x2c

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "catch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v13, 0x2b

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "break"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v13, 0x2a

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v13, 0x29

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "with"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v13, 0x28

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v13, 0x27

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v13, 0x26

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "this"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v13, 0x25

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v13, 0x24

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v13, 0x23

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "goto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v13, 0x22

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v13, 0x21

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "else"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v13, 0x20

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v13, 0x1f

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "case"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v13, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v13, 0x1d

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v13, 0x1c

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "try"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v13, 0x1b

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v13, 0x1a

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "let"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v13, 0x19

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v13, 0x18

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "for"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v13, 0x17

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v13, 0x16

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "if"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v13, 0x15

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v13, 0x14

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "private"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v13, 0x13

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v13, 0x12

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "protected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v13, 0x11

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v13, 0x10

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "finally"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v13, 0xf

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "typeof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v13, 0xe

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "throws"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v13, 0xd

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "switch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v13, 0xc

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "static"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v13, 0xb

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "implements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v13, 0xa

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "return"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v13, 0x9

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v13, 0x8

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "native"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto :goto_0

    :cond_35
    const/4 v13, 0x7

    goto :goto_0

    :sswitch_36
    const-string v0, "import"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_0

    :cond_36
    const/4 v13, 0x6

    goto :goto_0

    :sswitch_37
    const-string v0, "export"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_0

    :cond_37
    const/4 v13, 0x5

    goto :goto_0

    :sswitch_38
    const-string v0, "extends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_0

    :cond_38
    const/4 v13, 0x4

    goto :goto_0

    :sswitch_39
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto :goto_0

    :cond_39
    const/4 v13, 0x3

    goto :goto_0

    :sswitch_3a
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_0

    :cond_3a
    const/4 v13, 0x2

    goto :goto_0

    :sswitch_3b
    const-string v0, "synchronized"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_0

    :cond_3b
    const/4 v13, 0x1

    goto :goto_0

    :sswitch_3c
    const-string v0, "volatile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_0

    :cond_3c
    const/4 v13, 0x0

    :goto_0
    const/16 p0, 0x8c

    packed-switch v13, :pswitch_data_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :pswitch_0
    const/16 v1, 0x8c

    goto/16 :goto_1

    :pswitch_1
    const/16 v1, 0x81

    goto/16 :goto_1

    :pswitch_2
    const/16 v1, 0x7a

    goto/16 :goto_1

    :pswitch_3
    const/16 v1, 0xae

    goto/16 :goto_1

    :pswitch_4
    const/16 v1, 0x4e

    goto/16 :goto_1

    :pswitch_5
    const/16 v1, 0x82

    goto/16 :goto_1

    :pswitch_6
    const/16 v1, 0x37

    goto :goto_1

    :pswitch_7
    const/16 v1, 0x31

    goto :goto_1

    :pswitch_8
    const/16 v1, 0xa8

    goto :goto_1

    :pswitch_9
    const/16 v1, 0x89

    goto :goto_1

    :pswitch_a
    const/16 v1, 0x85

    goto :goto_1

    :pswitch_b
    const/16 v1, 0x88

    goto :goto_1

    :pswitch_c
    const/16 v1, 0x8b

    goto :goto_1

    :pswitch_d
    const/16 v1, 0x32

    goto :goto_1

    :pswitch_e
    const/16 v1, 0x30

    goto :goto_1

    :pswitch_f
    const/16 v1, 0x2f

    goto :goto_1

    :pswitch_10
    const/16 v1, 0x7e

    goto :goto_1

    :pswitch_11
    const/16 v1, 0x80

    goto :goto_1

    :pswitch_12
    const/16 v1, 0x87

    goto :goto_1

    :pswitch_13
    const/16 v1, 0x5a

    goto :goto_1

    :pswitch_14
    const/16 v1, 0x1e

    goto :goto_1

    :pswitch_15
    const/16 v1, 0xa7

    goto :goto_1

    :pswitch_16
    const/16 v1, 0x84

    goto :goto_1

    :pswitch_17
    const/16 v1, 0x39

    goto :goto_1

    :pswitch_18
    const/16 v1, 0x7d

    goto :goto_1

    :pswitch_19
    const/16 v1, 0x83

    goto :goto_1

    :pswitch_1a
    const/16 v1, 0x86

    goto :goto_1

    :pswitch_1b
    const/16 v1, 0x8a

    goto :goto_1

    :pswitch_1c
    const/16 v1, 0x20

    goto :goto_1

    :pswitch_1d
    const/16 v1, 0x7f

    goto :goto_1

    :pswitch_1e
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_1f
    const/16 v1, 0x1f

    :goto_1
    :pswitch_20
    if-nez v1, :cond_3d

    return v12

    :cond_3d
    and-int/lit16 p0, v1, 0xff

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x70890264 -> :sswitch_3c
        -0x576a7aec -> :sswitch_3b
        -0x4f997a55 -> :sswitch_3a
        -0x4f08842f -> :sswitch_39
        -0x4dd2db67 -> :sswitch_38
        -0x4cd6ec4c -> :sswitch_37
        -0x469e8c5b -> :sswitch_36
        -0x3ebdafe9 -> :sswitch_35
        -0x3a424d97 -> :sswitch_34
        -0x37b1c2d0 -> :sswitch_33
        -0x368fa850 -> :sswitch_32
        -0x35323192 -> :sswitch_31
        -0x350448cc -> :sswitch_30
        -0x341ec9b3 -> :sswitch_2f
        -0x3330496f -> :sswitch_2e
        -0x32dbb67d -> :sswitch_2d
        -0x301acbba -> :sswitch_2c
        -0x24459452 -> :sswitch_2b
        -0x21ced359 -> :sswitch_2a
        -0x12beda7d -> :sswitch_29
        0xc8b -> :sswitch_28
        0xd1d -> :sswitch_27
        0xd25 -> :sswitch_26
        0x18cc9 -> :sswitch_25
        0x197ef -> :sswitch_24
        0x1a21b -> :sswitch_23
        0x1a9a0 -> :sswitch_22
        0x1c1bb -> :sswitch_21
        0x1c727 -> :sswitch_20
        0x2e6108 -> :sswitch_1f
        0x2e7b30 -> :sswitch_1e
        0x2e9356 -> :sswitch_1d
        0x2f8d39 -> :sswitch_1c
        0x2f9501 -> :sswitch_1b
        0x308163 -> :sswitch_1a
        0x32c67c -> :sswitch_19
        0x33c587 -> :sswitch_18
        0x364e9e -> :sswitch_17
        0x36758e -> :sswitch_16
        0x375194 -> :sswitch_15
        0x37b0c6 -> :sswitch_14
        0x3db6c28 -> :sswitch_13
        0x59a58ff -> :sswitch_12
        0x5a0eebb -> :sswitch_11
        0x5a5a978 -> :sswitch_10
        0x5a73763 -> :sswitch_f
        0x5cb1923 -> :sswitch_e
        0x5cec176 -> :sswitch_d
        0x5d0225c -> :sswitch_c
        0x685847c -> :sswitch_b
        0x68b6f7b -> :sswitch_a
        0x693a6e6 -> :sswitch_9
        0x6bdcb31 -> :sswitch_8
        0x6da5f8d -> :sswitch_7
        0x1df56d39 -> :sswitch_6
        0x20a6f421 -> :sswitch_5
        0x35c3d12c -> :sswitch_4
        0x3ebfa28a -> :sswitch_3
        0x524f73d8 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6749f022 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_20
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final substring(II)Ljava/lang/String;
    .locals 2

    .line 2290
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2291
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p2, p1

    .line 2294
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private ungetChar(I)V
    .locals 3

    .line 2145
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2146
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    .line 2147
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return-void
.end method

.method private ungetCharIgnoreLineEnd(I)V
    .locals 3

    .line 2240
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    .line 2241
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return-void
.end method

.method private ungetTemplateLiteralChar(I)V
    .locals 1

    .line 1624
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 1625
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method


# virtual methods
.method final eof()Z
    .locals 1

    .line 646
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v0
.end method

.method final getAndResetCurrentComment()Ljava/lang/String;
    .locals 5

    .line 2428
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2429
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2430
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2432
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2433
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2434
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    .line 2435
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 2436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getBigInt()Ljava/math/BigInteger;
    .locals 1

    .line 626
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->bigInt:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCommentType()Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    .line 2409
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method

.method public getCursor()I
    .locals 1

    .line 2385
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return v0
.end method

.method getFirstXMLToken()I
    .locals 1

    const/4 v0, 0x0

    .line 1857
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    .line 1858
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    .line 1859
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 1860
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->canUngetChar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v0, 0x3c

    .line 1861
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1862
    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getNextXMLToken()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 2

    .line 2458
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLine()Ljava/lang/String;
    .locals 4

    .line 2299
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 2300
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    add-int/lit8 v1, v0, -0x2

    .line 2303
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_3

    add-int/lit8 v2, v0, -0x2

    goto :goto_2

    .line 2308
    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    .line 2310
    :goto_0
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2311
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2315
    :cond_2
    :goto_1
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int v2, v1, v0

    .line 2317
    :cond_3
    :goto_2
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/TokenStream;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getLine(I[I)Ljava/lang/String;
    .locals 7

    .line 2323
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 2324
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v4, p1, -0x1

    .line 2333
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v4

    .line 2334
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v3, 0xa

    if-ne v4, v3, :cond_1

    add-int/lit8 v3, p1, -0x2

    .line 2335
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, -0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-lez p1, :cond_5

    add-int/lit8 v4, p1, -0x1

    .line 2347
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v4

    .line 2348
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 2353
    :goto_2
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    sub-int/2addr v4, v2

    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/4 v6, 0x1

    if-ltz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    add-int/2addr v4, v5

    aput v4, p2, v1

    .line 2354
    aput v0, p2, v6

    if-nez v2, :cond_7

    .line 2356
    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getLine()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2358
    :cond_7
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/TokenStream;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLineno()I
    .locals 1

    .line 606
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    return v0
.end method

.method getNextXMLToken()I
    .locals 10

    .line 1866
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 1867
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 1868
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v0, 0x0

    .line 1869
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1871
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const-string v2, "msg.XML.bad.form"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_13

    .line 1872
    iget-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    const/16 v6, 0x9f

    const/16 v7, 0x7b

    const/16 v8, 0x2f

    const/4 v9, 0x1

    if-eqz v5, :cond_8

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    const/16 v2, 0xd

    if-eq v1, v2, :cond_6

    const/16 v2, 0x20

    if-eq v1, v2, :cond_6

    const/16 v2, 0x22

    if-eq v1, v2, :cond_5

    const/16 v2, 0x27

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3e

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    .line 1908
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1909
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_1

    .line 1875
    :cond_1
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1876
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 1877
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_1

    .line 1898
    :cond_2
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1899
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_1

    .line 1889
    :cond_3
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1890
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return v6

    .line 1880
    :cond_4
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1881
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 1882
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1883
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1884
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 1885
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    sub-int/2addr v1, v9

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto :goto_1

    .line 1894
    :cond_5
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1895
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->readQuotedString(I)Z

    move-result v1

    if-nez v1, :cond_7

    return v4

    .line 1905
    :cond_6
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1913
    :cond_7
    :goto_1
    iget-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_0

    .line 1914
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1915
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1916
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 v0, 0xa2

    return v0

    :cond_8
    const/16 v5, 0x3c

    if-eq v1, v5, :cond_a

    if-eq v1, v7, :cond_9

    .line 2006
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_0

    .line 2002
    :cond_9
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 2003
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return v6

    .line 1922
    :cond_a
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1923
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v5, 0x21

    if-eq v1, v5, :cond_e

    if-eq v1, v8, :cond_c

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_b

    .line 1996
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 1997
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    add-int/2addr v1, v9

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto/16 :goto_0

    .line 1976
    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1977
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1978
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readPI()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 1982
    :cond_c
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1983
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1984
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_d

    .line 1986
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1987
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1988
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    .line 1991
    :cond_d
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    add-int/lit8 v1, v1, -0x1

    .line 1992
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto/16 :goto_0

    .line 1926
    :cond_e
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1927
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1928
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_11

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_f

    .line 1971
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readEntity()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 1946
    :cond_f
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1947
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1948
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v6, 0x43

    if-ne v1, v6, :cond_10

    .line 1949
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v7, 0x44

    if-ne v1, v7, :cond_10

    .line 1950
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v8, 0x41

    if-ne v1, v8, :cond_10

    .line 1951
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v9, 0x54

    if-ne v1, v9, :cond_10

    .line 1952
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v8, :cond_10

    .line 1953
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v5, :cond_10

    .line 1954
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1955
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1956
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1957
    invoke-direct {p0, v9}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1958
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1959
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1960
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readCDATA()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 1964
    :cond_10
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1965
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1966
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    .line 1931
    :cond_11
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1932
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1933
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v5, :cond_12

    .line 1935
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1936
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readXmlComment()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 1939
    :cond_12
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1940
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1941
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    .line 2012
    :cond_13
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2013
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 2014
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 2015
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4
.end method

.method final getNumber()D
    .locals 2

    .line 622
    iget-wide v0, p0, Lorg/mozilla/javascript/TokenStream;->number:D

    return-wide v0
.end method

.method public getOffset()I
    .locals 2

    .line 2255
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    .line 2256
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 2453
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    return v0
.end method

.method final getQuoteChar()C
    .locals 1

    .line 618
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    int-to-char v0, v0

    return v0
.end method

.method getRawString()Ljava/lang/String;
    .locals 1

    .line 1580
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    const-string v0, ""

    return-object v0

    .line 1583
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getSourceString()Ljava/lang/String;
    .locals 1

    .line 601
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    return-object v0
.end method

.method final getString()Ljava/lang/String;
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return-object v0
.end method

.method final getToken()I
    .locals 18

    move-object/from16 v0, p0

    .line 655
    :cond_0
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 657
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 658
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 659
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 660
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v3

    :cond_1
    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    .line 663
    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    .line 664
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 665
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 666
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 667
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v5

    .line 669
    :cond_2
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isJSSpace(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x2d

    if-eq v1, v6, :cond_3

    .line 671
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    .line 678
    :cond_3
    iget v7, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    iput v7, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 679
    iget v7, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iput v7, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 680
    iget v7, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v8, v7, -0x1

    iput v8, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 681
    iput v7, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 v7, 0x40

    if-ne v1, v7, :cond_4

    const/16 v1, 0xa1

    return v1

    :cond_4
    const/16 v7, 0x5f

    const/16 v8, 0x75

    const/16 v9, 0x5c

    if-ne v1, v9, :cond_7

    .line 690
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 694
    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    goto :goto_3

    .line 697
    :cond_5
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    const/16 v1, 0x5c

    const/4 v10, 0x0

    :cond_6
    :goto_0
    const/4 v11, 0x0

    goto :goto_3

    .line 701
    :cond_7
    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v10

    if-nez v10, :cond_9

    const/16 v10, 0x24

    if-eq v1, v10, :cond_9

    if-ne v1, v7, :cond_8

    goto :goto_1

    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_6

    .line 703
    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 704
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_0

    .line 708
    :goto_3
    const-string v12, "msg.invalid.escape"

    const/16 v13, 0xc8

    if-eqz v10, :cond_1f

    move v1, v11

    :goto_4
    if-eqz v11, :cond_11

    const/16 v4, 0x7b

    .line 719
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchTemplateLiteralChar(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    .line 721
    :cond_a
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    move-result v6

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_b

    goto :goto_5

    .line 726
    :cond_b
    invoke-static {v6, v4}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v4

    if-gez v4, :cond_a

    :goto_5
    if-ltz v4, :cond_c

    const v7, 0x10ffff

    if-le v4, v7, :cond_f

    .line 733
    :cond_c
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v3, v12}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_6
    const/4 v7, 0x4

    if-eq v6, v7, :cond_f

    .line 738
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v7

    .line 739
    invoke-static {v7, v4}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v4

    if-gez v4, :cond_e

    .line 742
    iget-object v6, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v6, v12}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    if-gez v4, :cond_10

    .line 748
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    .line 751
    :cond_10
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v11, 0x0

    goto :goto_4

    .line 754
    :cond_11
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    if-ne v6, v9, :cond_13

    .line 756
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v8, :cond_12

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_4

    .line 761
    :cond_12
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v4, "msg.illegal.character"

    invoke-virtual {v3, v4, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;I)V

    return v2

    :cond_13
    if-eq v6, v2, :cond_15

    const v4, 0xfeff

    if-eq v6, v4, :cond_15

    .line 767
    invoke-static {v6}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v4

    if-nez v4, :cond_14

    const/16 v4, 0x24

    if-eq v6, v4, :cond_14

    goto :goto_8

    .line 770
    :cond_14
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_4

    .line 774
    :cond_15
    :goto_8
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 776
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_17

    .line 777
    iget-object v4, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v4, v4, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 778
    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v4

    if-lt v4, v13, :cond_16

    goto :goto_9

    .line 806
    :cond_16
    iget-object v4, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v4, v4, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 808
    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v4

    iget-object v5, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 809
    invoke-virtual {v5}, Lorg/mozilla/javascript/Parser;->inUseStrictDirective()Z

    move-result v5

    .line 806
    invoke-static {v3, v4, v5}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 812
    invoke-static {v3}, Lorg/mozilla/javascript/TokenStream;->convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    .line 783
    :cond_17
    :goto_9
    iget-object v4, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v4, v4, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 786
    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v4

    iget-object v5, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 787
    invoke-virtual {v5}, Lorg/mozilla/javascript/Parser;->inUseStrictDirective()Z

    move-result v5

    .line 784
    invoke-static {v3, v4, v5}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;IZ)I

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v5, 0xa7

    if-eq v4, v5, :cond_18

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_1a

    .line 789
    :cond_18
    iget-object v5, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v5, v5, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 790
    invoke-virtual {v5}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v5

    const/16 v6, 0xaa

    if-ge v5, v6, :cond_1a

    const/16 v5, 0xa7

    if-ne v4, v5, :cond_19

    .line 792
    const-string v4, "let"

    goto :goto_a

    :cond_19
    const-string v4, "yield"

    :goto_a
    iput-object v4, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v4, 0x2c

    .line 797
    :cond_1a
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->internString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v5, 0x8c

    if-eq v4, v5, :cond_1b

    goto :goto_b

    .line 800
    :cond_1b
    iget-object v5, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v5, v5, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v5}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v5

    if-lt v5, v13, :cond_1c

    goto :goto_b

    .line 802
    :cond_1c
    iget-object v5, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v5, v5, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v5}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v5

    if-nez v5, :cond_1d

    :goto_b
    return v4

    :cond_1d
    :goto_c
    if-eqz v1, :cond_1e

    .line 815
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 816
    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    if-lt v1, v13, :cond_1e

    .line 817
    invoke-static {v3}, Lorg/mozilla/javascript/TokenStream;->isValidIdentifierName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 818
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return v2

    .line 822
    :cond_1e
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->internString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v1, 0x2c

    return v1

    .line 827
    :cond_1f
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v10

    const/16 v14, 0x38

    const/16 v15, 0x78

    const/16 v16, 0x5f

    const/16 v17, 0x2

    const/16 v11, 0x30

    const/16 v7, 0x2e

    if-nez v10, :cond_73

    if-ne v1, v7, :cond_20

    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v10

    invoke-static {v10}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v10

    if-eqz v10, :cond_20

    goto/16 :goto_1c

    :cond_20
    const/16 v10, 0x22

    if-eq v1, v10, :cond_5a

    const/16 v10, 0x27

    if-ne v1, v10, :cond_21

    goto/16 :goto_12

    :cond_21
    const/16 v10, 0x23

    const/16 v11, 0x21

    const/16 v12, 0xaf

    if-ne v1, v10, :cond_22

    .line 1135
    iget v10, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    if-ne v10, v5, :cond_22

    .line 1137
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v10

    if-ne v10, v11, :cond_22

    iget-object v10, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-boolean v10, v10, Lorg/mozilla/javascript/Parser;->calledByCompileFunction:Z

    if-nez v10, :cond_22

    .line 1140
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    return v12

    :cond_22
    const/16 v10, 0x3d

    if-eq v1, v11, :cond_57

    const/16 v14, 0x5b

    if-eq v1, v14, :cond_56

    const/16 v9, 0x60

    if-eq v1, v9, :cond_55

    const/16 v9, 0x25

    if-eq v1, v9, :cond_53

    const/16 v9, 0x26

    if-eq v1, v9, :cond_4f

    const/16 v9, 0x5d

    if-eq v1, v9, :cond_4e

    const/16 v9, 0x5e

    if-eq v1, v9, :cond_4c

    const/16 v4, 0x2a

    const/16 v9, 0x3e

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 1394
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v4, "msg.illegal.character"

    invoke-virtual {v3, v4, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;I)V

    return v2

    :pswitch_0
    const/16 v1, 0x1b

    return v1

    :pswitch_1
    return v16

    :pswitch_2
    const/16 v1, 0x7c

    .line 1197
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1198
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x65

    return v1

    :cond_23
    return v8

    .line 1200
    :cond_24
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x64

    return v1

    :cond_25
    const/16 v1, 0x9

    return v1

    :pswitch_3
    const/16 v1, 0x5e

    return v1

    .line 1162
    :pswitch_4
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    if-lt v1, v13, :cond_29

    .line 1163
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    if-ne v1, v7, :cond_27

    .line 1165
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1166
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_26

    const/16 v1, 0xba

    return v1

    .line 1169
    :cond_26
    invoke-direct {v0, v7}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    goto :goto_d

    :cond_27
    const/16 v1, 0x3f

    .line 1170
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1171
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x72

    return v1

    :cond_28
    const/16 v1, 0xb9

    return v1

    :cond_29
    :goto_d
    const/16 v1, 0x73

    return v1

    .line 1271
    :pswitch_5
    invoke-direct {v0, v9}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1272
    invoke-direct {v0, v9}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1273
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v1, 0x6b

    return v1

    :cond_2a
    const/16 v1, 0x14

    return v1

    .line 1278
    :cond_2b
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v1, 0x6a

    return v1

    :cond_2c
    const/16 v1, 0x13

    return v1

    .line 1283
    :cond_2d
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/16 v1, 0x11

    return v1

    :cond_2e
    const/16 v1, 0x10

    return v1

    .line 1223
    :pswitch_6
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1224
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/16 v1, 0x33

    return v1

    :cond_2f
    const/16 v1, 0xc

    return v1

    .line 1228
    :cond_30
    invoke-direct {v0, v9}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_31

    const/16 v1, 0xb2

    return v1

    :cond_31
    const/16 v1, 0x63

    return v1

    .line 1245
    :pswitch_7
    invoke-direct {v0, v11}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1246
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1247
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1248
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 1249
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 1250
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1251
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 1252
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v12

    .line 1255
    :cond_32
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 1257
    :cond_33
    invoke-direct {v0, v11}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_34
    const/16 v1, 0x3c

    .line 1259
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1260
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x69

    return v1

    :cond_35
    const/16 v1, 0x12

    return v1

    .line 1265
    :cond_36
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_37

    const/16 v1, 0xf

    return v1

    :cond_37
    const/16 v1, 0xe

    return v1

    :pswitch_8
    const/16 v1, 0x5b

    return v1

    :pswitch_9
    const/16 v1, 0x3a

    .line 1179
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_38

    const/16 v1, 0x9e

    return v1

    :cond_38
    const/16 v1, 0x74

    return v1

    .line 1303
    :pswitch_a
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart()V

    const/16 v1, 0x2f

    .line 1305
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1306
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 1307
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 1308
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1309
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 1310
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->LINE:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v12

    .line 1314
    :cond_39
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1316
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 1317
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 1318
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 1319
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1321
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    :goto_e
    const/4 v1, 0x1

    goto :goto_10

    .line 1323
    :cond_3a
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    :goto_f
    const/4 v1, 0x0

    .line 1326
    :cond_3b
    :goto_10
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    if-ne v6, v2, :cond_3c

    .line 1328
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr v1, v5

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1329
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.unterminated.comment"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v12

    :cond_3c
    if-ne v6, v4, :cond_3d

    goto :goto_e

    :cond_3d
    const/16 v7, 0x2f

    if-ne v6, v7, :cond_3e

    if-eqz v1, :cond_3b

    .line 1335
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1336
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v12

    .line 1341
    :cond_3e
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    goto :goto_f

    .line 1346
    :cond_3f
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_40

    const/16 v1, 0x6f

    return v1

    :cond_40
    const/16 v1, 0x18

    return v1

    .line 1184
    :pswitch_b
    invoke-direct {v0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1185
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    const/16 v2, 0xb4

    if-lt v1, v2, :cond_41

    .line 1186
    invoke-direct {v0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_41

    const/16 v1, 0xb8

    return v1

    :cond_41
    const/16 v1, 0x9d

    return v1

    :cond_42
    const/16 v1, 0x28

    .line 1190
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_43

    const/16 v1, 0xa0

    return v1

    :cond_43
    const/16 v1, 0x79

    return v1

    .line 1370
    :pswitch_c
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_44

    const/16 v15, 0x6d

    goto :goto_11

    .line 1372
    :cond_44
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1373
    iget-boolean v1, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    if-nez v1, :cond_46

    .line 1376
    invoke-direct {v0, v9}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1377
    const-string v1, "--"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    .line 1378
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 1379
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v12

    :cond_45
    const/16 v15, 0x16

    .line 1387
    :cond_46
    :goto_11
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    return v15

    :pswitch_d
    const/16 v1, 0x62

    return v1

    .line 1361
    :pswitch_e
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_47

    const/16 v1, 0x6c

    return v1

    :cond_47
    const/16 v1, 0x2b

    .line 1363
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_48

    const/16 v1, 0x77

    return v1

    :cond_48
    const/16 v1, 0x15

    return v1

    .line 1289
    :pswitch_f
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    if-lt v1, v13, :cond_4a

    .line 1290
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1291
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_49

    const/16 v1, 0x71

    return v1

    :cond_49
    const/16 v1, 0x51

    return v1

    .line 1297
    :cond_4a
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/16 v1, 0x6e

    return v1

    :cond_4b
    const/16 v1, 0x17

    return v1

    :pswitch_10
    const/16 v1, 0x61

    return v1

    :pswitch_11
    const/16 v1, 0x60

    return v1

    .line 1207
    :cond_4c
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/16 v1, 0x66

    return v1

    :cond_4d
    return v4

    :cond_4e
    const/16 v1, 0x5d

    return v1

    :cond_4f
    const/16 v1, 0x26

    .line 1213
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1214
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_50

    const/16 v1, 0x68

    return v1

    :cond_50
    const/16 v1, 0x76

    return v1

    .line 1216
    :cond_51
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_52

    const/16 v1, 0x67

    return v1

    :cond_52
    const/16 v1, 0xb

    return v1

    .line 1352
    :cond_53
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_54

    const/16 v1, 0x70

    return v1

    :cond_54
    const/16 v1, 0x19

    return v1

    :cond_55
    const/16 v1, 0xb4

    return v1

    :cond_56
    return v9

    .line 1235
    :cond_57
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1236
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_58

    const/16 v1, 0x34

    return v1

    :cond_58
    const/16 v1, 0xd

    return v1

    :cond_59
    const/16 v1, 0x1a

    return v1

    .line 973
    :cond_5a
    :goto_12
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    .line 974
    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 976
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd(Z)I

    move-result v1

    .line 978
    :goto_13
    iget v6, v0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    if-eq v1, v6, :cond_72

    if-ne v1, v2, :cond_5c

    :cond_5b
    const/4 v6, 0x1

    goto :goto_15

    :cond_5c
    if-ne v1, v4, :cond_5e

    .line 983
    iget v6, v0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-eq v6, v4, :cond_5b

    const/16 v10, 0xd

    if-eq v6, v10, :cond_5b

    const/16 v10, 0x2028

    if-eq v6, v10, :cond_5d

    const/16 v10, 0x2029

    if-eq v6, v10, :cond_5d

    goto :goto_14

    :cond_5d
    move v1, v6

    :cond_5e
    :goto_14
    const/4 v6, 0x0

    :goto_15
    if-eqz v6, :cond_5f

    .line 999
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 1000
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1001
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.unterminated.string.lit"

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_5f
    if-ne v1, v9, :cond_71

    .line 1009
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-eq v1, v4, :cond_70

    const/16 v6, 0x62

    if-eq v1, v6, :cond_6f

    const/16 v6, 0x66

    if-eq v1, v6, :cond_6e

    const/16 v6, 0x6e

    if-eq v1, v6, :cond_6d

    const/16 v6, 0x72

    if-eq v1, v6, :cond_6c

    if-eq v1, v15, :cond_6a

    packed-switch v1, :pswitch_data_3

    if-gt v11, v1, :cond_71

    if-ge v1, v14, :cond_71

    add-int/lit8 v1, v1, -0x30

    .line 1108
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    if-gt v11, v6, :cond_60

    if-ge v6, v14, :cond_60

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v6

    sub-int/2addr v1, v11

    .line 1111
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    if-gt v11, v6, :cond_60

    if-ge v6, v14, :cond_60

    const/16 v10, 0x1f

    if-gt v1, v10, :cond_60

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v6

    sub-int/2addr v1, v11

    .line 1116
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    .line 1119
    :cond_60
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    goto/16 :goto_1b

    :pswitch_12
    const/16 v1, 0xb

    goto/16 :goto_1b

    .line 1037
    :pswitch_13
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1038
    invoke-direct {v0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v6, 0x7b

    .line 1040
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v6

    if-eqz v6, :cond_65

    const/4 v6, 0x0

    .line 1042
    :goto_16
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v10

    const/16 v8, 0x7d

    if-ne v10, v8, :cond_61

    .line 1045
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_17

    .line 1048
    :cond_61
    invoke-static {v10, v6}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_64

    :goto_17
    if-ltz v6, :cond_62

    const v8, 0x10ffff

    if-le v6, v8, :cond_68

    .line 1056
    :cond_62
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_63
    :goto_18
    move v1, v10

    :goto_19
    const/16 v8, 0x75

    goto/16 :goto_13

    .line 1052
    :cond_64
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v8, 0x75

    goto :goto_16

    :cond_65
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1a
    const/4 v10, 0x4

    if-eq v6, v10, :cond_67

    .line 1061
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v10

    .line 1062
    invoke-static {v10, v8}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v8

    if-gez v8, :cond_66

    .line 1064
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    if-lt v1, v13, :cond_63

    .line 1066
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_18

    .line 1070
    :cond_66
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_67
    move v6, v8

    .line 1075
    :cond_68
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    :cond_69
    move v1, v6

    goto :goto_1b

    :pswitch_14
    const/16 v1, 0x9

    goto :goto_1b

    .line 1081
    :cond_6a
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1082
    invoke-static {v1, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_6b

    .line 1084
    invoke-direct {v0, v15}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_19

    .line 1088
    :cond_6b
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v8

    .line 1089
    invoke-static {v8, v6}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_69

    .line 1091
    invoke-direct {v0, v15}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1092
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    move v1, v8

    goto :goto_19

    :cond_6c
    const/16 v1, 0xd

    goto :goto_1b

    :cond_6d
    const/16 v1, 0xa

    goto :goto_1b

    :cond_6e
    const/16 v1, 0xc

    goto :goto_1b

    :cond_6f
    const/16 v1, 0x8

    goto :goto_1b

    .line 1102
    :cond_70
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    goto :goto_19

    .line 1124
    :cond_71
    :goto_1b
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1125
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v1

    goto :goto_19

    .line 1128
    :cond_72
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v1

    .line 1129
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->internString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1130
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1131
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v7

    .line 828
    :cond_73
    :goto_1c
    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 830
    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    .line 831
    iget-object v8, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v8, v8, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v8}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v8

    if-lt v8, v13, :cond_74

    const/4 v8, 0x1

    goto :goto_1d

    :cond_74
    const/4 v8, 0x0

    :goto_1d
    if-ne v1, v11, :cond_7b

    .line 834
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-eq v1, v15, :cond_7c

    const/16 v9, 0x58

    if-ne v1, v9, :cond_75

    goto :goto_1f

    :cond_75
    if-eqz v8, :cond_77

    const/16 v9, 0x6f

    if-eq v1, v9, :cond_76

    const/16 v9, 0x4f

    if-ne v1, v9, :cond_77

    .line 841
    :cond_76
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    .line 842
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    :goto_1e
    const/16 v9, 0x8

    goto :goto_20

    :cond_77
    if-eqz v8, :cond_79

    const/16 v9, 0x62

    if-eq v1, v9, :cond_78

    const/16 v9, 0x42

    if-ne v1, v9, :cond_79

    .line 845
    :cond_78
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    .line 846
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/4 v9, 0x2

    goto :goto_20

    .line 847
    :cond_79
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 849
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    goto :goto_1e

    .line 851
    :cond_7a
    invoke-direct {v0, v11}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    :cond_7b
    const/16 v9, 0xa

    goto :goto_20

    .line 837
    :cond_7c
    :goto_1f
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    .line 838
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v9, 0x10

    .line 855
    :goto_20
    iget v10, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 856
    const-string v11, "msg.caught.nfe"

    if-eq v9, v4, :cond_82

    const/16 v12, 0x10

    if-eq v9, v12, :cond_82

    const/16 v12, 0x8

    if-ne v9, v12, :cond_7d

    iget-boolean v12, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    if-eqz v12, :cond_82

    :cond_7d
    const/4 v12, 0x2

    if-ne v9, v12, :cond_7e

    goto :goto_23

    .line 863
    :cond_7e
    :goto_21
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v12

    if-eqz v12, :cond_83

    if-lt v1, v14, :cond_81

    .line 872
    iget-object v9, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    if-ne v1, v14, :cond_7f

    const-string v12, "8"

    goto :goto_22

    :cond_7f
    const-string v12, "9"

    :goto_22
    const-string v13, "msg.bad.octal.literal"

    invoke-virtual {v9, v13, v12}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/TokenStream;->readDigits(II)I

    move-result v1

    const/4 v9, -0x2

    if-ne v1, v9, :cond_80

    .line 877
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_80
    const/16 v9, 0xa

    goto :goto_24

    .line 882
    :cond_81
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 883
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    goto :goto_21

    .line 857
    :cond_82
    :goto_23
    invoke-direct {v0, v9, v1}, Lorg/mozilla/javascript/TokenStream;->readDigits(II)I

    move-result v1

    const/4 v12, -0x2

    if-ne v1, v12, :cond_83

    .line 859
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    .line 886
    :cond_83
    :goto_24
    iget v12, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    if-ne v12, v10, :cond_85

    iget-boolean v10, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    if-nez v10, :cond_84

    iget-boolean v10, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    if-nez v10, :cond_84

    iget-boolean v10, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    if-eqz v10, :cond_85

    .line 887
    :cond_84
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_85
    if-eqz v8, :cond_86

    const/16 v8, 0x6e

    if-ne v1, v8, :cond_86

    .line 896
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/4 v7, 0x1

    goto :goto_26

    :cond_86
    if-ne v9, v4, :cond_8a

    if-eq v1, v7, :cond_87

    const/16 v8, 0x65

    if-eq v1, v8, :cond_87

    const/16 v8, 0x45

    if-ne v1, v8, :cond_8a

    :cond_87
    if-ne v1, v7, :cond_88

    .line 901
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 902
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 903
    invoke-direct {v0, v9, v1}, Lorg/mozilla/javascript/TokenStream;->readDigits(II)I

    move-result v1

    const/4 v5, -0x2

    if-ne v1, v5, :cond_88

    .line 905
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_88
    const/16 v5, 0x65

    if-eq v1, v5, :cond_8b

    const/16 v5, 0x45

    if-ne v1, v5, :cond_89

    goto :goto_25

    :cond_89
    const/4 v5, 0x0

    :cond_8a
    const/4 v7, 0x0

    goto :goto_26

    .line 911
    :cond_8b
    :goto_25
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 912
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_8c

    if-ne v1, v6, :cond_8d

    .line 914
    :cond_8c
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 915
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 917
    :cond_8d
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_8e

    .line 918
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.missing.exponent"

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    .line 921
    :cond_8e
    invoke-direct {v0, v9, v1}, Lorg/mozilla/javascript/TokenStream;->readDigits(II)I

    move-result v1

    const/4 v5, -0x2

    if-ne v1, v5, :cond_89

    .line 923
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    .line 928
    :goto_26
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 929
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v1

    .line 930
    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v8, 0x5f

    .line 933
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v2, :cond_91

    .line 935
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    add-int/lit8 v12, v10, 0x1

    .line 936
    :goto_27
    array-length v13, v1

    if-ge v12, v13, :cond_90

    .line 937
    aget-char v13, v1, v12

    if-eq v13, v8, :cond_8f

    add-int/lit8 v14, v10, 0x1

    .line 938
    aput-char v13, v1, v10

    move v10, v14

    :cond_8f
    add-int/lit8 v12, v12, 0x1

    goto :goto_27

    .line 941
    :cond_90
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v3, v10}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v8

    :cond_91
    if-eqz v7, :cond_92

    .line 945
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lorg/mozilla/javascript/TokenStream;->bigInt:Ljava/math/BigInteger;

    const/16 v1, 0x59

    return v1

    :cond_92
    if-ne v9, v4, :cond_93

    if-nez v5, :cond_93

    .line 953
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_28

    .line 955
    :catch_0
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    .line 959
    :cond_93
    invoke-static {v1, v3, v9}, Lorg/mozilla/javascript/ScriptRuntime;->stringPrefixToNumber(Ljava/lang/String;II)D

    move-result-wide v1

    .line 962
    :goto_28
    iput-wide v1, v0, Lorg/mozilla/javascript/TokenStream;->number:D

    return v6

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x74
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getTokenBeg()I
    .locals 1

    .line 2390
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    return v0
.end method

.method public getTokenColumn()I
    .locals 2

    .line 2462
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTokenEnd()I
    .locals 1

    .line 2395
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v0
.end method

.method public getTokenLength()I
    .locals 2

    .line 2400
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTokenStartLineno()I
    .locals 1

    .line 610
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    return v0
.end method

.method final isNumericBinary()Z
    .locals 1

    .line 630
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    return v0
.end method

.method final isNumericHex()Z
    .locals 1

    .line 642
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    return v0
.end method

.method final isNumericOctal()Z
    .locals 1

    .line 638
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    return v0
.end method

.method final isNumericOldOctal()Z
    .locals 1

    .line 634
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    return v0
.end method

.method isXMLAttribute()Z
    .locals 1

    .line 1853
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    return v0
.end method

.method readAndClearRegExpFlags()Ljava/lang/String;
    .locals 2

    .line 1572
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1573
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    return-object v0
.end method

.method readRegExp(I)V
    .locals 8

    .line 1508
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v1, 0x0

    .line 1509
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/16 v2, 0x6f

    .line 1510
    const-string v3, "msg.unterminated.re.lit"

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x3d

    .line 1512
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    .line 1514
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1515
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result p1

    const/16 v2, 0x2a

    if-ne p1, v2, :cond_2

    .line 1516
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1517
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1518
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 1525
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_a

    if-eqz p1, :cond_3

    goto/16 :goto_3

    .line 1550
    :cond_3
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    :goto_2
    const/16 v2, 0x67

    .line 1553
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    :cond_4
    const/16 v2, 0x69

    .line 1554
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    :cond_5
    const/16 v2, 0x6d

    .line 1555
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    :cond_6
    const/16 v2, 0x73

    .line 1556
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    :cond_7
    const/16 v2, 0x79

    .line 1557
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    .line 1560
    :cond_8
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1562
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1563
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1564
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 1563
    const-string v3, "msg.invalid.re.flag"

    invoke-virtual {v0, v3, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    :cond_9
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1568
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    return-void

    :cond_a
    :goto_3
    const/16 v5, 0xa

    if-eq v2, v5, :cond_10

    const/4 v6, -0x1

    if-ne v2, v6, :cond_b

    goto :goto_5

    :cond_b
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_d

    .line 1534
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1535
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    if-eq v2, v5, :cond_c

    if-ne v2, v6, :cond_f

    .line 1537
    :cond_c
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1538
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1539
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1540
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void

    :cond_d
    const/16 v5, 0x5b

    if-ne v2, v5, :cond_e

    const/4 p1, 0x1

    goto :goto_4

    :cond_e
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_f

    const/4 p1, 0x0

    .line 1548
    :cond_f
    :goto_4
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_1

    .line 1527
    :cond_10
    :goto_5
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1528
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1529
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1530
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method readTemplateLiteral(Z)I
    .locals 10

    .line 1644
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1645
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v0, 0x0

    .line 1649
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1d

    const/16 v6, 0x24

    const/16 v7, 0x7b

    const/4 v8, 0x2

    if-eq v2, v6, :cond_1a

    const/16 v6, 0x5c

    const/16 v9, 0x60

    if-eq v2, v6, :cond_3

    if-eq v2, v9, :cond_1

    .line 1846
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_0

    .line 1657
    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1658
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1659
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1660
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 p1, 0xb4

    return p1

    .line 1692
    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v6, 0x62

    if-eq v2, v6, :cond_18

    const/16 v6, 0x66

    if-eq v2, v6, :cond_17

    const/16 v6, 0x6e

    if-eq v2, v6, :cond_16

    const/16 v3, 0x72

    if-eq v2, v3, :cond_15

    const/16 v3, 0x78

    .line 1693
    const-string v6, "msg.syntax"

    if-eq v2, v3, :cond_11

    const/16 v3, 0x2028

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2029

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_a

    :pswitch_0
    const/16 v2, 0xb

    goto/16 :goto_a

    .line 1749
    :pswitch_1
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchTemplateLiteralChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    .line 1751
    :goto_2
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekTemplateLiteralChar()I

    move-result v3

    if-ne v3, v9, :cond_4

    const/4 v2, -0x1

    goto :goto_3

    .line 1756
    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 1758
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return v5

    :cond_5
    const/16 v7, 0x7d

    if-ne v3, v7, :cond_9

    :goto_3
    if-ltz v2, :cond_7

    const v3, 0x10ffff

    if-le v2, v3, :cond_6

    goto :goto_4

    :cond_6
    const v3, 0xffff

    if-le v2, v3, :cond_19

    .line 1779
    invoke-static {v2}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1780
    invoke-static {v2}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_0

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1773
    :cond_8
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return v5

    .line 1765
    :cond_9
    invoke-static {v3, v2}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v2

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    const/4 v7, 0x4

    if-ge v2, v7, :cond_c

    .line 1788
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekTemplateLiteralChar()I

    move-result v7

    if-ne v7, v9, :cond_b

    const/4 v2, -0x1

    goto :goto_7

    .line 1793
    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    move-result v7

    invoke-static {v7, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    move v2, v3

    :goto_7
    if-gez v2, :cond_19

    if-eqz p1, :cond_d

    goto :goto_5

    .line 1801
    :cond_d
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return v5

    :pswitch_2
    const/16 v2, 0x9

    goto :goto_a

    :pswitch_3
    if-eqz p1, :cond_e

    goto :goto_5

    .line 1836
    :cond_e
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return v5

    .line 1810
    :pswitch_4
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekTemplateLiteralChar()I

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_10

    const/16 v3, 0x39

    if-gt v2, v3, :cond_10

    if-eqz p1, :cond_f

    goto :goto_5

    .line 1816
    :cond_f
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return v5

    :cond_10
    const/4 v2, 0x0

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v2, v8, :cond_13

    .line 1725
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekTemplateLiteralChar()I

    move-result v7

    if-ne v7, v9, :cond_12

    const/4 v2, -0x1

    goto :goto_9

    .line 1730
    :cond_12
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    move-result v7

    invoke-static {v7, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    move v2, v3

    :goto_9
    if-gez v2, :cond_19

    if-eqz p1, :cond_14

    goto :goto_5

    .line 1738
    :cond_14
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return v5

    :cond_15
    const/16 v2, 0xd

    goto :goto_a

    :cond_16
    const/16 v2, 0xa

    goto :goto_a

    :cond_17
    const/16 v2, 0xc

    goto :goto_a

    :cond_18
    const/16 v2, 0x8

    .line 1843
    :cond_19
    :goto_a
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_0

    .line 1663
    :cond_1a
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchTemplateLiteralChar(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1664
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz v0, :cond_1b

    goto :goto_b

    .line 1665
    :cond_1b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v3

    :goto_b
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1666
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 p1, 0xb6

    return p1

    .line 1669
    :cond_1c
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_0

    :cond_1d
    if-eqz v0, :cond_1e

    goto :goto_c

    .line 1652
    :cond_1e
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v3

    :goto_c
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1653
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1654
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v0, "msg.unexpected.eof"

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method tokenToString(I)Ljava/lang/String;
    .locals 0

    .line 79
    const-string p1, ""

    return-object p1
.end method
