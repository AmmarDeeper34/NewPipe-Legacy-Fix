.class public Lorg/jsoup/parser/TokenQueue;
.super Ljava/lang/Object;
.source "TokenQueue.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final CssIdentifierChars:[C

.field private static final ElementSelectorChars:[C


# instance fields
.field private final reader:Lorg/jsoup/parser/CharacterReader;


# direct methods
.method public static synthetic $r8$lambda$yxaP84vHAYya0ixZcWZjnCfufNU(C)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/jsoup/parser/TokenQueue;->isIdent(C)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 313
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[C

    const/4 v0, 0x2

    .line 434
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jsoup/parser/TokenQueue;->CssIdentifierChars:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2as
        0x7cs
        0x5fs
        0x2ds
    .end array-data

    :array_1
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    return-void
.end method

.method private consumeCssEscapeSequenceInto(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 369
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    const v1, 0xfffd

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v0

    .line 375
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isHexDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 376
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    .line 379
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    new-instance v2, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda9;-><init>()V

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    .line 382
    :try_start_0
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    invoke-static {v0}, Lorg/jsoup/parser/TokenQueue;->isValidCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 393
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->current()C

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    .line 397
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->advance()V

    .line 398
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->current()C

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->advance()V

    return-void

    :cond_3
    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    .line 399
    invoke-static {p1}, Lorg/jsoup/parser/TokenQueue;->isNewline(C)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 400
    :cond_4
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->advance()V

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 384
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid escape sequence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private varargs consumeEscapedCssIdentifier([C)Ljava/lang/String;
    .locals 3

    .line 437
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->current()C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_0

    .line 441
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->advance()V

    .line 442
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :cond_0
    invoke-direct {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesCssIdentifier([C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->advance()V

    goto :goto_0

    .line 451
    :cond_1
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static isIdent(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    .line 420
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/jsoup/parser/TokenQueue;->isIdentStart(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isIdentStart(C)Z
    .locals 1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    .line 415
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->isAsciiLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/jsoup/parser/TokenQueue;->isNonAscii(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isNewline(C)Z
    .locals 1

    .line 0
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

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

.method private static isNonAscii(C)Z
    .locals 1

    .line 0
    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidCodePoint(I)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 431
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private varargs matchesCssIdentifier([C)Z
    .locals 1

    .line 455
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesAny([C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x5c

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object p0

    .line 207
    :cond_0
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-char v6, p0, v4

    if-ne v6, v0, :cond_1

    if-ne v5, v0, :cond_2

    .line 212
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    move v5, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 220
    :cond_3
    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public advance()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    :cond_0
    return-void
.end method

.method public chompBalanced(CC)Ljava/lang/String;
    .locals 10

    .line 157
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->mark()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 166
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_5

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v7

    const/16 v8, 0x5c

    const/4 v9, 0x1

    if-ne v2, v8, :cond_3

    const/16 v2, 0x51

    if-ne v7, v2, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x45

    if-ne v7, v2, :cond_2

    const/4 v6, 0x0

    .line 171
    :cond_2
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    const/16 v2, 0x27

    if-ne v7, v2, :cond_4

    if-eq v7, p1, :cond_4

    if-nez v3, :cond_4

    xor-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/16 v2, 0x22

    if-ne v7, v2, :cond_5

    if-eq v7, p1, :cond_5

    if-nez v4, :cond_5

    xor-int/lit8 v3, v3, 0x1

    :cond_5
    :goto_2
    if-nez v4, :cond_9

    if-nez v3, :cond_9

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    if-ne v7, p1, :cond_7

    add-int/lit8 v5, v5, 0x1

    if-le v5, v9, :cond_a

    .line 180
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    if-ne v7, p2, :cond_8

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_a

    .line 183
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 185
    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 177
    :cond_9
    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    :goto_4
    if-gtz v5, :cond_c

    .line 191
    :goto_5
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    if-lez v5, :cond_b

    .line 193
    iget-object p2, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Did not find balanced marker at \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    :cond_b
    return-object p1

    :cond_c
    move v2, v7

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .line 473
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->close()V

    return-void
.end method

.method public consume()C
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    return v0
.end method

.method public consumeCssIdentifier()Ljava/lang/String;
    .locals 4

    .line 327
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 330
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    new-instance v1, Lorg/jsoup/parser/TokenQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jsoup/parser/TokenQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->current()C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    return-object v0

    .line 338
    :cond_0
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 341
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 345
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->current()C

    move-result v0

    .line 346
    invoke-static {v0}, Lorg/jsoup/parser/TokenQueue;->isIdent(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 350
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->advance()V

    const v0, 0xfffd

    .line 351
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_5

    .line 353
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->advance()V

    .line 354
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->current()C

    move-result v0

    invoke-static {v0}, Lorg/jsoup/parser/TokenQueue;->isNewline(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    goto :goto_1

    .line 359
    :cond_4
    invoke-direct {p0, v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssEscapeSequenceInto(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 365
    :cond_5
    :goto_1
    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CSS identifier expected, but end of input found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consumeElementSelector()Ljava/lang/String;
    .locals 1

    .line 311
    sget-object v0, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[C

    invoke-direct {p0, v0}, Lorg/jsoup/parser/TokenQueue;->consumeEscapedCssIdentifier([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs consumeToAny([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 136
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 139
    iget-object v4, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v4, v3}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_2
    :goto_2
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public consumeWhitespace()Z
    .locals 2

    const/4 v0, 0x0

    .line 298
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->advance()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method current()C
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public matchChomp(C)Z
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public matchChomp(Ljava/lang/String;)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs matchesAny([C)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesAny([C)Z

    move-result p1

    return p1
.end method

.method public matchesWhitespace()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public matchesWord()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    return v0
.end method

.method public remainder()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
