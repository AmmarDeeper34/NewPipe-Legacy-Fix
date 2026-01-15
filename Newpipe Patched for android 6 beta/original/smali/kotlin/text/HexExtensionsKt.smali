.class public abstract Lkotlin/text/HexExtensionsKt;
.super Ljava/lang/Object;
.source "HexExtensions.kt"


# static fields
.field private static final BYTE_TO_LOWER_CASE_HEX_DIGITS:[I

.field private static final BYTE_TO_UPPER_CASE_HEX_DIGITS:[I

.field private static final HEX_DIGITS_TO_DECIMAL:[I

.field private static final HEX_DIGITS_TO_LONG_DECIMAL:[J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    .line 20
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "0123456789abcdef"

    if-ge v3, v0, :cond_0

    shr-int/lit8 v5, v3, 0x4

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    and-int/lit8 v6, v3, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    or-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_0
    sput-object v1, Lkotlin/text/HexExtensionsKt;->BYTE_TO_LOWER_CASE_HEX_DIGITS:[I

    .line 29
    new-array v1, v0, [I

    const/4 v3, 0x0

    :goto_1
    const-string v5, "0123456789ABCDEF"

    if-ge v3, v0, :cond_1

    shr-int/lit8 v6, v3, 0x4

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    and-int/lit8 v7, v3, 0xf

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 29
    :cond_1
    sput-object v1, Lkotlin/text/HexExtensionsKt;->BYTE_TO_UPPER_CASE_HEX_DIGITS:[I

    .line 41
    new-array v1, v0, [I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    const/4 v6, -0x1

    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1189
    :goto_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    .line 42
    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1189
    :goto_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    .line 43
    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_4

    .line 41
    :cond_4
    sput-object v1, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_DECIMAL:[I

    .line 53
    new-array v1, v0, [J

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_5

    const-wide/16 v6, -0x1

    aput-wide v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1189
    :goto_6
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v3, 0x1

    int-to-long v8, v3

    .line 54
    aput-wide v8, v1, v6

    add-int/lit8 v0, v0, 0x1

    move v3, v7

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    .line 1189
    :goto_7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v0, 0x1

    int-to-long v6, v0

    .line 55
    aput-wide v6, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_7

    .line 53
    :cond_7
    sput-object v1, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    return-void
.end method

.method private static final charsPerSet(JII)J
    .locals 4

    if-lez p2, :cond_0

    int-to-long v0, p2

    mul-long p0, p0, v0

    int-to-long p2, p3

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    mul-long p2, p2, v0

    add-long/2addr p0, p2

    return-wide p0

    .line 613
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final checkNewLineAt(Ljava/lang/String;II)I
    .locals 3

    .line 623
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xa

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    if-ge v0, p2, :cond_0

    .line 624
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v2, :cond_0

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_0
    return v0

    .line 625
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 628
    :cond_2
    new-instance p2, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a new line at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static final hexToByteArray(Ljava/lang/String;IILkotlin/text/HexFormat;)[B
    .locals 2

    .line 392
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/collections/AbstractList$Companion;->checkBoundsIndexes$kotlin_stdlib(III)V

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    .line 394
    new-array p0, p0, [B

    return-object p0

    .line 398
    :cond_0
    invoke-virtual {p3}, Lkotlin/text/HexFormat;->getBytes()Lkotlin/text/HexFormat$BytesHexFormat;

    move-result-object p3

    .line 401
    invoke-virtual {p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getNoLineAndGroupSeparator$kotlin_stdlib()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/HexExtensionsKt;->hexToByteArrayNoLineAndGroupSeparator(Ljava/lang/String;IILkotlin/text/HexFormat$BytesHexFormat;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 405
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/HexExtensionsKt;->hexToByteArraySlowPath(Ljava/lang/String;IILkotlin/text/HexFormat$BytesHexFormat;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final hexToByteArray(Ljava/lang/String;Lkotlin/text/HexFormat;)[B
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lkotlin/text/HexExtensionsKt;->hexToByteArray(Ljava/lang/String;IILkotlin/text/HexFormat;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic hexToByteArray$default(Ljava/lang/String;Lkotlin/text/HexFormat;ILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 362
    sget-object p1, Lkotlin/text/HexFormat;->Companion:Lkotlin/text/HexFormat$Companion;

    invoke-virtual {p1}, Lkotlin/text/HexFormat$Companion;->getDefault()Lkotlin/text/HexFormat;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/HexExtensionsKt;->hexToByteArray(Ljava/lang/String;Lkotlin/text/HexFormat;)[B

    move-result-object p0

    return-object p0
.end method

.method private static final hexToByteArrayNoLineAndGroupSeparator(Ljava/lang/String;IILkotlin/text/HexFormat$BytesHexFormat;)[B
    .locals 1

    .line 414
    invoke-virtual {p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getShortByteSeparatorNoPrefixAndSuffix$kotlin_stdlib()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/HexExtensionsKt;->hexToByteArrayShortByteSeparatorNoPrefixAndSuffix(Ljava/lang/String;IILkotlin/text/HexFormat$BytesHexFormat;)[B

    move-result-object p0

    return-object p0

    .line 418
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/HexExtensionsKt;->hexToByteArrayNoLineAndGroupSeparatorSlowPath(Ljava/lang/String;IILkotlin/text/HexFormat$BytesHexFormat;)[B

    move-result-object p0

    return-object p0
.end method

.method private static final hexToByteArrayNoLineAndGroupSeparatorSlowPath(Ljava/lang/String;IILkotlin/text/HexFormat$BytesHexFormat;)[B
    .locals 12

    .line 464
    invoke-virtual {p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getBytePrefix()Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-virtual {p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getByteSuffix()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-virtual {p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getByteSeparator()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 468
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    sub-int v3, p2, p1

    int-to-long v8, v3

    add-long v10, v8, v6

    .line 470
    div-long/2addr v10, v4

    long-to-int v3, v10

    int-to-long v10, v3

    mul-long v10, v10, v4

    sub-long/2addr v10, v6

    cmp-long v4, v10, v8

    if-eqz v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 477
    :cond_0
    invoke-virtual {p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getIgnoreCase$kotlin_stdlib()Z

    move-result p3

    .line 479
    new-array v4, v3, [B

    .line 1186
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    goto :goto_1

    .line 1187
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    .line 1188
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int v9, p1, v7

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v8, v9, p3}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1189
    const-string v8, "byte prefix"

    invoke-static {p0, p1, p2, v0, v8}, Lkotlin/text/HexExtensionsKt;->throwNotContainedAt(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1192
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr p1, v5

    .line 483
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, -0x1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_7

    .line 485
    invoke-static {p0, p1}, Lkotlin/text/HexExtensionsKt;->parseByteAt(Ljava/lang/String;I)B

    move-result v5

    aput-byte v5, v4, v2

    add-int/lit8 p1, p1, 0x2

    .line 1186
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    .line 1187
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_6

    .line 1188
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int v9, p1, v7

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v8, v9, p3}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1189
    const-string v8, "byte suffix + byte separator + byte prefix"

    invoke-static {p0, p1, p2, v0, v8}, Lkotlin/text/HexExtensionsKt;->throwNotContainedAt(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1192
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr p1, v5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 488
    :cond_7
    invoke-static {p0, p1}, Lkotlin/text/HexExtensionsKt;->parseByteAt(Ljava/lang/String;I)B

    move-result v0

    aput-byte v0, v4, v3

    add-int/lit8 p1, p1, 0x2

    .line 1186
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    return-object v4

    .line 1187
    :cond_8
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_5
    if-ge v6, v0, :cond_a

    .line 1188
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p1, v6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p3}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1189
    const-string v2, "byte suffix"

    invoke-static {p0, p1, p2, v1, v2}, Lkotlin/text/HexExtensionsKt;->throwNotContainedAt(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    return-object v4
.end method

.method private static final hexToByteArrayShortByteSeparatorNoPrefixAndSuffix(Ljava/lang/String;IILkotlin/text/HexFormat$BytesHexFormat;)[B
    .locals 11

    .line 426
    invoke-virtual {p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getByteSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_9

    sub-int p1, p2, p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_2

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_0

    return-object v2

    :cond_0
    shr-int/2addr p1, v1

    .line 435
    new-array p2, p1, [B

    const/4 p3, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    .line 437
    invoke-static {p0, p3}, Lkotlin/text/HexExtensionsKt;->parseByteAt(Ljava/lang/String;I)B

    move-result v0

    aput-byte v0, p2, v4

    add-int/2addr p3, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    .line 442
    :cond_2
    rem-int/lit8 v0, p1, 0x3

    if-eq v0, v3, :cond_3

    return-object v2

    .line 443
    :cond_3
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v1

    .line 444
    new-array v0, p1, [B

    .line 445
    invoke-virtual {p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getByteSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 446
    invoke-static {p0, v4}, Lkotlin/text/HexExtensionsKt;->parseByteAt(Ljava/lang/String;I)B

    move-result v5

    aput-byte v5, v0, v4

    :goto_1
    if-ge v1, p1, :cond_8

    .line 449
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v2, :cond_7

    .line 450
    invoke-virtual {p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getByteSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getIgnoreCase$kotlin_stdlib()Z

    move-result v6

    .line 1186
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 1187
    :cond_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_6

    .line 1188
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int v10, v3, v8

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v9, v10, v6}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1189
    const-string v9, "byte separator"

    invoke-static {p0, v3, p2, v5, v9}, Lkotlin/text/HexExtensionsKt;->throwNotContainedAt(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1192
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    :cond_7
    :goto_3
    add-int/lit8 v5, v3, 0x1

    .line 452
    invoke-static {p0, v5}, Lkotlin/text/HexExtensionsKt;->parseByteAt(Ljava/lang/String;I)B

    move-result v5

    aput-byte v5, v0, v1

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-object v0

    .line 427
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final hexToByteArraySlowPath(Ljava/lang/String;IILkotlin/text/HexFormat$BytesHexFormat;)[B
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 499
    invoke-virtual/range {p3 .. p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getBytesPerLine()I

    move-result v3

    .line 500
    invoke-virtual/range {p3 .. p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getBytesPerGroup()I

    move-result v4

    .line 501
    invoke-virtual/range {p3 .. p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getBytePrefix()Ljava/lang/String;

    move-result-object v9

    .line 502
    invoke-virtual/range {p3 .. p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getByteSuffix()Ljava/lang/String;

    move-result-object v10

    .line 503
    invoke-virtual/range {p3 .. p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getByteSeparator()Ljava/lang/String;

    move-result-object v11

    .line 504
    invoke-virtual/range {p3 .. p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getGroupSeparator()Ljava/lang/String;

    move-result-object v12

    .line 505
    invoke-virtual/range {p3 .. p3}, Lkotlin/text/HexFormat$BytesHexFormat;->getIgnoreCase$kotlin_stdlib()Z

    move-result v13

    sub-int v2, v1, p1

    .line 511
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    .line 512
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .line 513
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    .line 514
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    .line 507
    invoke-static/range {v2 .. v8}, Lkotlin/text/HexExtensionsKt;->parsedByteArrayMaxSize(IIIIIII)I

    move-result v2

    .line 516
    new-array v5, v2, [B

    move/from16 v7, p1

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v7, v1, :cond_10

    if-ne v14, v3, :cond_0

    .line 525
    invoke-static {v0, v7, v1}, Lkotlin/text/HexExtensionsKt;->checkNewLineAt(Ljava/lang/String;II)I

    move-result v7

    move/from16 v16, v3

    move/from16 v17, v4

    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_0
    if-ne v15, v4, :cond_4

    .line 1186
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_1

    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_1

    .line 1187
    :cond_1
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v15, :cond_3

    move/from16 v16, v3

    .line 1188
    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v17, v4

    add-int v4, v7, v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4, v13}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1189
    const-string v3, "group separator"

    invoke-static {v0, v7, v1, v12, v3}, Lkotlin/text/HexExtensionsKt;->throwNotContainedAt(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_2

    :cond_3
    move/from16 v16, v3

    move/from16 v17, v4

    .line 1192
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v7, v3

    goto :goto_1

    :cond_4
    move/from16 v16, v3

    move/from16 v17, v4

    if-eqz v15, :cond_8

    .line 1186
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    .line 1187
    :cond_5
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_7

    .line 1188
    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 p1, v3

    add-int v3, v7, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v6, v3, v13}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1189
    const-string v3, "byte separator"

    invoke-static {v0, v7, v1, v11, v3}, Lkotlin/text/HexExtensionsKt;->throwNotContainedAt(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, p1

    goto :goto_3

    .line 1192
    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v7, v3

    :cond_8
    :goto_4
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    .line 1186
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_6

    .line 1187
    :cond_9
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_b

    .line 1188
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 p1, v3

    add-int v3, v7, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v6, v3, v13}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1189
    const-string v3, "byte prefix"

    invoke-static {v0, v7, v1, v9, v3}, Lkotlin/text/HexExtensionsKt;->throwNotContainedAt(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, p1

    goto :goto_5

    .line 1192
    :cond_b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v7, v3

    :goto_6
    add-int/lit8 v3, v1, -0x2

    if-ge v3, v7, :cond_c

    .line 539
    const-string v3, "exactly"

    const/4 v4, 0x2

    invoke-static {v0, v7, v1, v3, v4}, Lkotlin/text/HexExtensionsKt;->throwInvalidNumberOfDigits(Ljava/lang/String;IILjava/lang/String;I)V

    :cond_c
    add-int/lit8 v3, v8, 0x1

    .line 541
    invoke-static {v0, v7}, Lkotlin/text/HexExtensionsKt;->parseByteAt(Ljava/lang/String;I)B

    move-result v4

    aput-byte v4, v5, v8

    add-int/lit8 v7, v7, 0x2

    .line 1186
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_d

    move/from16 p1, v3

    goto :goto_8

    .line 1187
    :cond_d
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_f

    .line 1188
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 p1, v3

    add-int v3, v7, v6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v8, v3, v13}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1189
    const-string v3, "byte suffix"

    invoke-static {v0, v7, v1, v10, v3}, Lkotlin/text/HexExtensionsKt;->throwNotContainedAt(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, p1

    goto :goto_7

    :cond_f
    move/from16 p1, v3

    .line 1192
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v7, v3

    :goto_8
    move/from16 v8, p1

    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_0

    :cond_10
    if-ne v8, v2, :cond_11

    return-object v5

    .line 545
    :cond_11
    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final parseByteAt(Ljava/lang/String;I)B
    .locals 4

    .line 1197
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    ushr-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    .line 1198
    sget-object v1, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_DECIMAL:[I

    aget v0, v1, v0

    if-ltz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 1197
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    ushr-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_0

    .line 1198
    aget v1, v1, v2

    if-ltz v1, :cond_0

    shl-int/lit8 p0, v0, 0x4

    or-int/2addr p0, v1

    int-to-byte p0, p0

    return p0

    .line 1201
    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/HexExtensionsKt;->throwInvalidDigitAt(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 1201
    :cond_1
    invoke-static {p0, p1}, Lkotlin/text/HexExtensionsKt;->throwInvalidDigitAt(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final parsedByteArrayMaxSize(IIIIIII)I
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-lez v0, :cond_3

    move/from16 v5, p5

    int-to-long v5, v5

    const-wide/16 v7, 0x2

    add-long/2addr v5, v7

    move/from16 v7, p6

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 574
    invoke-static {v5, v6, v2, v4}, Lkotlin/text/HexExtensionsKt;->charsPerSet(JII)J

    move-result-wide v7

    if-gt v1, v2, :cond_0

    .line 577
    invoke-static {v5, v6, v1, v4}, Lkotlin/text/HexExtensionsKt;->charsPerSet(JII)J

    move-result-wide v9

    goto :goto_0

    .line 579
    :cond_0
    div-int v9, v1, v2

    .line 580
    invoke-static {v7, v8, v9, v3}, Lkotlin/text/HexExtensionsKt;->charsPerSet(JII)J

    move-result-wide v9

    .line 581
    rem-int v11, v1, v2

    if-eqz v11, :cond_1

    int-to-long v12, v3

    add-long/2addr v9, v12

    .line 584
    invoke-static {v5, v6, v11, v4}, Lkotlin/text/HexExtensionsKt;->charsPerSet(JII)J

    move-result-wide v11

    add-long/2addr v9, v11

    :cond_1
    :goto_0
    int-to-long v11, v0

    const/4 v0, 0x1

    .line 592
    invoke-static {v11, v12, v9, v10, v0}, Lkotlin/text/HexExtensionsKt;->wholeElementsPerSet(JJI)J

    move-result-wide v13

    const-wide/16 v15, 0x1

    add-long/2addr v9, v15

    mul-long v9, v9, v13

    sub-long/2addr v11, v9

    .line 595
    invoke-static {v11, v12, v7, v8, v3}, Lkotlin/text/HexExtensionsKt;->wholeElementsPerSet(JJI)J

    move-result-wide v9

    int-to-long v0, v3

    add-long/2addr v7, v0

    mul-long v7, v7, v9

    sub-long/2addr v11, v7

    .line 598
    invoke-static {v11, v12, v5, v6, v4}, Lkotlin/text/HexExtensionsKt;->wholeElementsPerSet(JJI)J

    move-result-wide v0

    int-to-long v3, v4

    add-long/2addr v5, v3

    mul-long v5, v5, v0

    sub-long/2addr v11, v5

    const-wide/16 v3, 0x0

    cmp-long v5, v11, v3

    if-lez v5, :cond_2

    const/4 v3, 0x1

    :goto_1
    move/from16 v4, p1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    int-to-long v4, v4

    mul-long v13, v13, v4

    int-to-long v4, v2

    mul-long v9, v9, v4

    add-long/2addr v13, v9

    add-long/2addr v13, v0

    int-to-long v0, v3

    add-long/2addr v13, v0

    long-to-int v0, v13

    return v0

    .line 564
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final throwInvalidDigitAt(Ljava/lang/String;I)Ljava/lang/Void;
    .locals 3

    .line 1235
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a hexadecimal digit at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final throwInvalidNumberOfDigits(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 3

    .line 1214
    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " hexadecimal digits at index "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", but was \""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" of length "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, p1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1215
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final throwNotContainedAt(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1221
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p2

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p2, "substring(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    new-instance p2, Ljava/lang/NumberFormatException;

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " \""

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" at index "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1222
    invoke-direct {p2, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static final wholeElementsPerSet(JJI)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p4

    add-long/2addr p0, v0

    add-long/2addr p2, v0

    .line 619
    div-long/2addr p0, p2

    return-wide p0

    :cond_1
    :goto_0
    return-wide v0
.end method
