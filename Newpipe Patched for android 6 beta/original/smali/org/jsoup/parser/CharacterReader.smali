.class public final Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/CharacterReader$CharPredicate;
    }
.end annotation


# static fields
.field private static final BufferPool:Lorg/jsoup/internal/SoftPool;

.field private static final StringPool:Lorg/jsoup/internal/SoftPool;


# instance fields
.field private bufLength:I

.field private bufMark:I

.field private bufPos:I

.field private charBuf:[C

.field private consumed:I

.field private fillPoint:I

.field private lastIcIndex:I

.field private lastIcSeq:Ljava/lang/String;

.field private lineNumberOffset:I

.field private newlinePositions:Ljava/util/ArrayList;

.field private readFully:Z

.field private reader:Ljava/io/Reader;

.field private stringCache:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2H6ehIgGGN1OvNxN-4CAx9SkOyw(C)Z
    .locals 1

    .line 465
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$2xRriKPibwQUOS-yB_lPO2wC17o(ZC)Z
    .locals 1

    .line 453
    if-eqz p1, :cond_1

    const/16 v0, 0x26

    if-eq p1, v0, :cond_1

    if-eqz p0, :cond_0

    const/16 p0, 0x27

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_0
    const/16 p0, 0x22

    if-eq p1, p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$DdpguiobGwUf4H718mLrrm5u5tk(C)Z
    .locals 1

    .line 510
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

.method public static synthetic $r8$lambda$EG5biHlJ1TotB5WE4Iz05e49MZo([CC)Z
    .locals 4

    .line 436
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    if-ne p1, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$NBJGVe8zBuVn3h0CoVN4Wc5bgO4()[C
    .locals 1

    const/16 v0, 0x800

    .line 42
    new-array v0, v0, [C

    return-object v0
.end method

.method public static synthetic $r8$lambda$aLFpVfvevhUDWco_URS3Njpixbk(C)Z
    .locals 1

    .line 448
    const/16 v0, 0x26

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$bm2rGVserZNrKBy4qzqpsEuZLQg(C)Z
    .locals 1

    .line 458
    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ceJ5Jzi-_3p0j6XuyoWk7d5e-vQ([CC)Z
    .locals 0

    .line 443
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$dnb971bMfF8Xoubl4imy1VkWRQw()[Ljava/lang/String;
    .locals 1

    const/16 v0, 0x200

    .line 27
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lorg/jsoup/internal/SoftPool;

    new-instance v1, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/internal/SoftPool;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/jsoup/parser/CharacterReader;->StringPool:Lorg/jsoup/internal/SoftPool;

    .line 42
    new-instance v0, Lorg/jsoup/internal/SoftPool;

    new-instance v1, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/internal/SoftPool;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/jsoup/parser/CharacterReader;->BufferPool:Lorg/jsoup/internal/SoftPool;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->fillPoint:I

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    .line 52
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 54
    sget-object p1, Lorg/jsoup/parser/CharacterReader;->BufferPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {p1}, Lorg/jsoup/internal/SoftPool;->borrow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 55
    sget-object p1, Lorg/jsoup/parser/CharacterReader;->StringPool:Lorg/jsoup/internal/SoftPool;

    invoke-virtual {p1}, Lorg/jsoup/internal/SoftPool;->borrow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 60
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method private bufferUp()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->fillPoint:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->doBufferUp()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static cacheString([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    const/16 v0, 0xc

    if-le p3, v0, :cond_0

    .line 645
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    .line 647
    const-string p0, ""

    return-object p0

    :cond_1
    add-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 653
    aget-char v3, p0, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v1, 0x1ff

    .line 658
    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    .line 660
    invoke-static {p0, p2, p3, v1}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 663
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 664
    aput-object v1, p1, v0

    return-object v1
.end method

.method private doBufferUp()V
    .locals 4

    .line 99
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->consumed:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->consumed:I

    .line 100
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 102
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    :cond_0
    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 104
    :goto_0
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    const/16 v1, 0x800

    if-ge v0, v1, :cond_3

    .line 106
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 114
    :cond_2
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :goto_1
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 119
    :cond_3
    :goto_2
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->fillPoint:I

    .line 121
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->scanBufferForNewlines()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    return-void
.end method

.method private isEmptyNoBufferUp()Z
    .locals 2

    .line 278
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private lineNumIndex(I)I
    .locals 1

    .line 239
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ge p1, v0, :cond_1

    .line 241
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :cond_1
    return p1
.end method

.method static rangeEquals([CIILjava/lang/String;)Z
    .locals 4

    .line 674
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 678
    aget-char p1, p0, p1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    move p1, p2

    move p2, v2

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private scanBufferForNewlines()V
    .locals 3

    .line 249
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 254
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->consumed:I

    invoke-direct {p0, v0}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 256
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 257
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    .line 258
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_2
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v1, :cond_4

    .line 263
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 264
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->consumed:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 1

    .line 315
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-void
.end method

.method public close()V
    .locals 4

    .line 65
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    :try_start_0
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iput-object v2, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 72
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 73
    sget-object v0, Lorg/jsoup/parser/CharacterReader;->BufferPool:Lorg/jsoup/internal/SoftPool;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-virtual {v0, v1}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 74
    iput-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 75
    sget-object v0, Lorg/jsoup/parser/CharacterReader;->StringPool:Lorg/jsoup/internal/SoftPool;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 76
    :goto_0
    iput-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v0

    .line 71
    iput-object v2, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 72
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 73
    sget-object v1, Lorg/jsoup/parser/CharacterReader;->BufferPool:Lorg/jsoup/internal/SoftPool;

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-virtual {v1, v3}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 74
    iput-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 75
    sget-object v1, Lorg/jsoup/parser/CharacterReader;->StringPool:Lorg/jsoup/internal/SoftPool;

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 76
    iput-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 77
    throw v0

    .line 71
    :catch_0
    iput-object v2, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 72
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 73
    sget-object v0, Lorg/jsoup/parser/CharacterReader;->BufferPool:Lorg/jsoup/internal/SoftPool;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-virtual {v0, v1}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 74
    iput-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 75
    sget-object v0, Lorg/jsoup/parser/CharacterReader;->StringPool:Lorg/jsoup/internal/SoftPool;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public columnNumber()I
    .locals 1

    .line 214
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v0

    return v0
.end method

.method columnNumber(I)I
    .locals 2

    .line 218
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 221
    :cond_0
    invoke-direct {p0, p1}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 224
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public consume()C
    .locals 2

    .line 295
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 296
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    .line 297
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return v0
.end method

.method consumeAttributeQuoted(Z)Ljava/lang/String;
    .locals 1

    .line 453
    new-instance v0, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method consumeData()Ljava/lang/String;
    .locals 1

    .line 448
    new-instance v0, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 1

    .line 510
    new-instance v0, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 1

    .line 506
    new-instance v0, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 1

    .line 487
    new-instance v0, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 4

    .line 491
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 492
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 493
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_0

    .line 494
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v2, v1

    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->isAsciiLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_0

    .line 497
    :cond_0
    :goto_1
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v1, v1, v2

    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_1

    .line 502
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 405
    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;I)Ljava/lang/String;
    .locals 5

    .line 415
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 416
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 418
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 419
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_1

    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    sub-int v4, v3, v0

    if-ge v4, p2, :cond_1

    .line 421
    :cond_0
    aget-char v4, v2, v3

    invoke-interface {p1, v4}, Lorg/jsoup/parser/CharacterReader$CharPredicate;->test(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    :cond_1
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-le v3, v0, :cond_2

    .line 426
    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object p2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, p2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method consumeRawData()Ljava/lang/String;
    .locals 1

    .line 458
    new-instance v0, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeTagName()Ljava/lang/String;
    .locals 1

    .line 464
    new-instance v0, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public consumeTo(C)Ljava/lang/String;
    .locals 3

    .line 364
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v0, v1, v2, p1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 367
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-object v0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 382
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 384
    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {p1, v1, v2, v0}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 385
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-object p1

    .line 387
    :cond_0
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 389
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 393
    :cond_1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 394
    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v3, v0, v2

    invoke-static {p1, v1, v2, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 395
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-object p1
.end method

.method public varargs consumeToAny([C)Ljava/lang/String;
    .locals 1

    .line 435
    new-instance v0, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda2;-><init>([C)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .locals 1

    .line 443
    new-instance v0, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader$$ExternalSyntheticLambda4;-><init>([C)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 4

    .line 480
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 481
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 482
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 5

    .line 611
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 612
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    if-ne v0, v3, :cond_0

    return v1

    .line 613
    :cond_0
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-lt v0, v4, :cond_1

    return v2

    .line 615
    :cond_1
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    .line 617
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 618
    invoke-virtual {p0, v4}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v4

    if-le v4, v3, :cond_2

    .line 620
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr p1, v4

    iput p1, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    return v2

    .line 623
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 624
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p1, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 626
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int v3, v0, p1

    :cond_4
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    return v1
.end method

.method public current()C
    .locals 2

    .line 286
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 287
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 273
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 274
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTrackNewlines()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lineNumber()I
    .locals 1

    .line 192
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v0

    return v0
.end method

.method lineNumber(I)I
    .locals 2

    .line 198
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 201
    :cond_0
    invoke-direct {p0, p1}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 203
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    return p1

    .line 204
    :cond_1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    return p1
.end method

.method mark()V
    .locals 2

    .line 127
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->fillPoint:I

    .line 130
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 131
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 1

    .line 585
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 586
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 595
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method matches(C)Z
    .locals 2

    .line 514
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method matches(Ljava/lang/String;)Z
    .locals 6

    .line 518
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 520
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 524
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method varargs matchesAny([C)Z
    .locals 5

    .line 553
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 556
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 557
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    .line 558
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p1, v3

    if-ne v4, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method matchesAnySorted([C)Z
    .locals 2

    .line 566
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 567
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method matchesAsciiAlpha()Z
    .locals 2

    .line 575
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 576
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isAsciiLetter(C)Z

    move-result v0

    return v0
.end method

.method matchesDigit()Z
    .locals 2

    .line 580
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 581
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 6

    .line 530
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 532
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 536
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 537
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 540
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 541
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method nextIndexOf(C)I
    .locals 2

    .line 325
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 326
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v1, :cond_1

    .line 327
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 328
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .locals 8

    .line 340
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    const/4 v0, 0x0

    .line 342
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 343
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_3

    .line 345
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    :goto_1
    add-int/2addr v1, v3

    .line 346
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 348
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 349
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v5, :cond_2

    if-gt v4, v5, :cond_2

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_1

    .line 350
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-ne v5, v4, :cond_2

    .line 352
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, p1

    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public pos()I
    .locals 2

    .line 151
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->consumed:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method posLineCol()Ljava/lang/String;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->columnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readFully()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    return v0
.end method

.method rewindToMark()V
    .locals 3

    .line 139
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 142
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 143
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->unmark()V

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/io/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 632
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v2, v0, v1

    if-gez v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 633
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public trackNewlines(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x19

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 170
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->scanBufferForNewlines()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method unconsume()V
    .locals 3

    .line 305
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 308
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-void

    .line 306
    :cond_0
    new-instance v0, Ljava/io/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "WTF: No buffer left to unconsume."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method unmark()V
    .locals 1

    const/4 v0, -0x1

    .line 135
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    return-void
.end method
