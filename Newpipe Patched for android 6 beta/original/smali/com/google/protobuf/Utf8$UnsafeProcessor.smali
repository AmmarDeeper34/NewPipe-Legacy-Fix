.class final Lcom/google/protobuf/Utf8$UnsafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1144
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static isAvailable()Z
    .locals 1

    .line 1147
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method encodeUtf8(Ljava/lang/String;[BII)I
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1445
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    .line 1446
    const-string v9, "Not enough space in output buffer to encode UTF-8 string"

    if-gt v8, v3, :cond_c

    array-length v10, v1

    sub-int/2addr v10, v3

    if-lt v10, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v10, 0x1

    const/16 v3, 0x80

    if-ge v2, v8, :cond_0

    .line 1455
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ge v12, v3, :cond_0

    add-long/2addr v10, v4

    int-to-byte v3, v12

    .line 1456
    invoke-static {v1, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v10

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    .line 1464
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ge v12, v3, :cond_2

    cmp-long v13, v4, v6

    if-gez v13, :cond_2

    add-long v13, v4, v10

    int-to-byte v12, v12

    .line 1466
    invoke-static {v1, v4, v5, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 p3, v10

    move-wide v4, v13

    goto/16 :goto_2

    :cond_2
    const/16 v13, 0x800

    const-wide/16 v14, 0x2

    if-ge v12, v13, :cond_3

    sub-long v16, v6, v14

    cmp-long v13, v4, v16

    if-gtz v13, :cond_3

    move-wide/from16 p3, v10

    add-long v10, v4, p3

    ushr-int/lit8 v13, v12, 0x6

    or-int/lit16 v13, v13, 0x3c0

    int-to-byte v13, v13

    .line 1468
    invoke-static {v1, v4, v5, v13}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long/2addr v4, v14

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v3

    int-to-byte v12, v12

    .line 1469
    invoke-static {v1, v10, v11, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    goto/16 :goto_2

    :cond_3
    move-wide/from16 p3, v10

    const v10, 0xdfff

    const v11, 0xd800

    const-wide/16 v16, 0x3

    if-lt v12, v11, :cond_4

    if-ge v10, v12, :cond_5

    :cond_4
    sub-long v18, v6, v16

    cmp-long v13, v4, v18

    if-gtz v13, :cond_5

    add-long v10, v4, p3

    ushr-int/lit8 v13, v12, 0xc

    or-int/lit16 v13, v13, 0x1e0

    int-to-byte v13, v13

    .line 1472
    invoke-static {v1, v4, v5, v13}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long/2addr v14, v4

    ushr-int/lit8 v13, v12, 0x6

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v3

    int-to-byte v13, v13

    .line 1473
    invoke-static {v1, v10, v11, v13}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v4, v4, v16

    and-int/lit8 v10, v12, 0x3f

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 1474
    invoke-static {v1, v14, v15, v10}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    goto :goto_2

    :cond_5
    const-wide/16 v18, 0x4

    sub-long v20, v6, v18

    cmp-long v13, v4, v20

    if-gtz v13, :cond_8

    add-int/lit8 v10, v2, 0x1

    if-eq v10, v8, :cond_7

    .line 1479
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1482
    invoke-static {v12, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v11, v4, p3

    ushr-int/lit8 v13, v2, 0x12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    .line 1483
    invoke-static {v1, v4, v5, v13}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long/2addr v14, v4

    ushr-int/lit8 v13, v2, 0xc

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v3

    int-to-byte v13, v13

    .line 1484
    invoke-static {v1, v11, v12, v13}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v11, v4, v16

    ushr-int/lit8 v13, v2, 0x6

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v3

    int-to-byte v13, v13

    .line 1485
    invoke-static {v1, v14, v15, v13}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v4, v4, v18

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 1486
    invoke-static {v1, v11, v12, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move v2, v10

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v10, p3

    goto/16 :goto_1

    :cond_6
    move v2, v10

    .line 1480
    :cond_7
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_8
    if-gt v11, v12, :cond_a

    if-gt v12, v10, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    .line 1489
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1491
    :cond_9
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1494
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v9}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    long-to-int v0, v4

    return v0

    .line 1448
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v9}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
