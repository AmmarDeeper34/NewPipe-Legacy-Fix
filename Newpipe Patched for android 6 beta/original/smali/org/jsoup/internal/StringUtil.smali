.class public abstract Lorg/jsoup/internal/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/internal/StringUtil$StringJoiner;
    }
.end annotation


# static fields
.field private static final BuilderPool:Lorg/jsoup/internal/SoftPool;

.field private static final controlChars:Ljava/util/regex/Pattern;

.field private static final extraDotSegmentsPattern:Ljava/util/regex/Pattern;

.field static final padding:[Ljava/lang/String;

.field private static final validUriScheme:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$cWFVKlWN0BFAQ195rUFbwZOxzno(Lorg/jsoup/internal/StringUtil$StringJoiner;Lorg/jsoup/internal/StringUtil$StringJoiner;)Lorg/jsoup/internal/StringUtil$StringJoiner;
    .locals 0

    .line 392
    invoke-virtual {p1}, Lorg/jsoup/internal/StringUtil$StringJoiner;->complete()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/internal/StringUtil$StringJoiner;->append(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    return-object p0
.end method

.method public static synthetic $r8$lambda$oNkaBj7Sve1V2Ydr6cYJkfbx7G0(Ljava/lang/String;)Lorg/jsoup/internal/StringUtil$StringJoiner;
    .locals 1

    .line 389
    new-instance v0, Lorg/jsoup/internal/StringUtil$StringJoiner;

    invoke-direct {v0, p0}, Lorg/jsoup/internal/StringUtil$StringJoiner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$wPYDUjwIOuwdGdsjaa1cO89t2j0()Ljava/lang/StringBuilder;
    .locals 2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 22

    .line 21
    const-string v20, "                   "

    const-string v21, "                    "

    const-string v1, ""

    const-string v2, " "

    const-string v3, "  "

    const-string v4, "   "

    const-string v5, "    "

    const-string v6, "     "

    const-string v7, "      "

    const-string v8, "       "

    const-string v9, "        "

    const-string v10, "         "

    const-string v11, "          "

    const-string v12, "           "

    const-string v13, "            "

    const-string v14, "             "

    const-string v15, "              "

    const-string v16, "               "

    const-string v17, "                "

    const-string v18, "                 "

    const-string v19, "                  "

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    .line 285
    const-string v0, "^/(?>(?>\\.\\.?/)+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->extraDotSegmentsPattern:Ljava/util/regex/Pattern;

    .line 332
    const-string v0, "^[a-zA-Z][a-zA-Z0-9+-.]*:"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->validUriScheme:Ljava/util/regex/Pattern;

    .line 334
    const-string v0, "[\\x00-\\x1f]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/internal/StringUtil;->controlChars:Ljava/util/regex/Pattern;

    .line 341
    new-instance v0, Lorg/jsoup/internal/SoftPool;

    new-instance v1, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/internal/SoftPool;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/jsoup/internal/StringUtil;->BuilderPool:Lorg/jsoup/internal/SoftPool;

    return-void
.end method

.method public static appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 8

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 241
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 242
    invoke-static {v5}, Lorg/jsoup/internal/StringUtil;->isActuallyWhitespace(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-eqz p2, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x20

    .line 245
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_1

    .line 248
    :cond_2
    invoke-static {v5}, Lorg/jsoup/internal/StringUtil;->isInvisibleChar(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 249
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 240
    :cond_3
    :goto_1
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static borrowBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 352
    sget-object v0, Lorg/jsoup/internal/StringUtil;->BuilderPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {v0}, Lorg/jsoup/internal/SoftPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static varargs in(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 257
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 259
    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static inSorted(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    .line 266
    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isActuallyWhitespace(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa0

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

.method public static isAsciiLetter(C)Z
    .locals 1

    .line 0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 157
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static isDigit(C)Z
    .locals 1

    .line 0
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHexDigit(C)Z
    .locals 1

    .line 407
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isInvisibleChar(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x200b

    if-eq p0, v0, :cond_1

    const/16 v0, 0xad

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

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 185
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/jsoup/internal/StringUtil;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static isWhitespace(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

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

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string p0, ""

    return-object p0

    .line 45
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 49
    :cond_1
    new-instance v1, Lorg/jsoup/internal/StringUtil$StringJoiner;

    invoke-direct {v1, p1}, Lorg/jsoup/internal/StringUtil$StringJoiner;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0}, Lorg/jsoup/internal/StringUtil$StringJoiner;->add(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    .line 51
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jsoup/internal/StringUtil$StringJoiner;->add(Ljava/lang/Object;)Lorg/jsoup/internal/StringUtil$StringJoiner;

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v1}, Lorg/jsoup/internal/StringUtil$StringJoiner;->complete()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static joining(Ljava/lang/String;)Lj$/util/stream/Collector;
    .locals 4

    .line 389
    new-instance v0, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda2;-><init>()V

    new-instance v1, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda4;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, p0, v1, v2, v3}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 223
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 224
    invoke-static {v0, p0, v1}, Lorg/jsoup/internal/StringUtil;->appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 225
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static padding(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 134
    :goto_0
    const-string v3, "width must be >= 0"

    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    const/4 v2, -0x1

    if-lt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 135
    :goto_1
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    if-eq p1, v2, :cond_2

    .line 137
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 138
    :cond_2
    sget-object p1, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 139
    aget-object p0, p1, p0

    return-object p0

    .line 140
    :cond_3
    new-array p1, p0, [C

    :goto_2
    if-ge v0, p0, :cond_4

    const/16 v1, 0x20

    .line 142
    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    .line 362
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 363
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->releaseBuilderVoid(Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method public static releaseBuilderVoid(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 375
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 377
    sget-object v0, Lorg/jsoup/internal/StringUtil;->BuilderPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {v0, p0}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 315
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->stripControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->stripControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 319
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    :try_start_1
    invoke-static {v0, p1}, Lorg/jsoup/internal/StringUtil;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    nop

    goto :goto_0

    .line 322
    :catch_1
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 329
    :goto_0
    sget-object p0, Lorg/jsoup/internal/StringUtil;->validUriScheme:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public static resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 294
    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->stripControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 296
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 299
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 300
    sget-object p0, Lorg/jsoup/internal/StringUtil;->extraDotSegmentsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 301
    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 304
    :cond_1
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-direct {p1, v1, v2, v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method private static stripControlChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 336
    sget-object v0, Lorg/jsoup/internal/StringUtil;->controlChars:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
