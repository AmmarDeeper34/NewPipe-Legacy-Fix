.class Lorg/mozilla/javascript/CodeGenerator;
.super Lorg/mozilla/javascript/Icode;
.source "CodeGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;
    }
.end annotation


# static fields
.field private static final ECF_TAIL:I = 0x1

.field private static final MIN_FIXUP_TABLE_SIZE:I = 0x28

.field private static final MIN_LABEL_TABLE_SIZE:I = 0x20


# instance fields
.field private final bigInts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/math/BigInteger;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private doubleTableTop:I

.field private exceptionTableTop:I

.field private fixupTable:[J

.field private fixupTableTop:I

.field private iCodeTop:I

.field private itsData:Lorg/mozilla/javascript/InterpreterData;

.field private itsInFunctionFlag:Z

.field private itsInTryFlag:Z

.field private labelTable:[I

.field private labelTableTop:I

.field private lineNumber:I

.field private final literalIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private localTop:I

.field private scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

.field private stackDepth:I

.field private final strings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$d9K4ChDQyxZbUqyMX8UQyYp-DG4(Ljava/lang/Object;)Z
    .locals 0

    .line 1419
    instance-of p0, p0, Lorg/mozilla/javascript/Node;

    return p0
.end method

.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    return-void
.end method

.method private addBackwardGoto(II)V
    .locals 1

    .line 1584
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    if-le v0, p2, :cond_0

    .line 1587
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 1588
    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    return-void

    .line 1586
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addBigInt(Ljava/math/BigInteger;)V
    .locals 3

    .line 1750
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1752
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1753
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x4

    if-ge v0, p1, :cond_1

    rsub-int/lit8 p1, v0, -0x4a

    .line 1756
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    if-gt v0, p1, :cond_2

    const/16 p1, -0x4e

    .line 1758
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1759
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_0

    :cond_2
    const p1, 0xffff

    if-gt v0, p1, :cond_3

    const/16 p1, -0x4f

    .line 1761
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1762
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_0

    :cond_3
    const/16 p1, -0x50

    .line 1764
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1765
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    :goto_0
    const/16 p1, 0x59

    .line 1767
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    return-void
.end method

.method private addExceptionHandler(IIIZII)V
    .locals 4

    .line 1793
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    .line 1794
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 1796
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    const/16 v1, 0xc

    .line 1797
    new-array v1, v1, [I

    .line 1798
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v2, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    goto :goto_0

    .line 1799
    :cond_1
    array-length v2, v1

    if-ne v2, v0, :cond_2

    .line 1800
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 1801
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1802
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    move-object v1, v2

    .line 1804
    :cond_2
    :goto_0
    aput p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    .line 1805
    aput p2, v1, p1

    add-int/lit8 p1, v0, 0x2

    .line 1806
    aput p3, v1, p1

    add-int/lit8 p1, v0, 0x3

    .line 1807
    aput p4, v1, p1

    add-int/lit8 p1, v0, 0x4

    .line 1808
    aput p5, v1, p1

    add-int/lit8 p1, v0, 0x5

    .line 1809
    aput p6, v1, p1

    add-int/lit8 v0, v0, 0x6

    .line 1811
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    return-void
.end method

.method private addGoto(Lorg/mozilla/javascript/Node;I)V
    .locals 6

    .line 1544
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result p1

    .line 1545
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    if-lt p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1546
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1549
    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addBackwardGoto(II)V

    return-void

    .line 1551
    :cond_1
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1552
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 1553
    iget p2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    .line 1554
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    if-eqz v1, :cond_2

    array-length v2, v1

    if-ne p2, v2, :cond_4

    :cond_2
    if-nez v1, :cond_3

    const/16 v1, 0x28

    .line 1556
    new-array v1, v1, [J

    iput-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    goto :goto_0

    .line 1558
    :cond_3
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 1559
    invoke-static {v1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1560
    iput-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    :cond_4
    :goto_0
    add-int/lit8 v1, p2, 0x1

    .line 1563
    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    .line 1564
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long v4, v0

    or-long/2addr v2, v4

    aput-wide v2, v1, p2

    return-void
.end method

.method private addGotoOp(I)V
    .locals 5

    .line 1676
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1677
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x3

    .line 1678
    array-length v3, v0

    const/4 v4, 0x3

    if-le v2, v3, :cond_0

    .line 1679
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    int-to-byte p1, p1

    .line 1681
    aput-byte p1, v0, v1

    add-int/2addr v1, v4

    .line 1683
    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void
.end method

.method private addIcode(I)V
    .locals 1

    .line 1620
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0xff

    .line 1622
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    .line 1620
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addIndexOp(II)V
    .locals 0

    .line 1721
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexPrefix(I)V

    .line 1722
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1723
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    return-void

    .line 1725
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    return-void
.end method

.method private addIndexPrefix(I)V
    .locals 1

    if-gez p1, :cond_0

    .line 1771
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    rsub-int/lit8 p1, p1, -0x27

    .line 1773
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    return-void

    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    const/16 v0, -0x2d

    .line 1775
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1776
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_2
    const v0, 0xffff

    if-gt p1, v0, :cond_3

    const/16 v0, -0x2e

    .line 1778
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1779
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    return-void

    :cond_3
    const/16 v0, -0x2f

    .line 1781
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1782
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    return-void
.end method

.method private addInt(I)V
    .locals 5

    .line 1649
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1650
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x4

    .line 1651
    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x4

    .line 1652
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    .line 1654
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 1655
    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 1656
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x3

    int-to-byte p1, p1

    .line 1657
    aput-byte p1, v0, v1

    .line 1658
    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void
.end method

.method private addStringOp(ILjava/lang/String;)V
    .locals 0

    .line 1712
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addStringPrefix(Ljava/lang/String;)V

    .line 1713
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1714
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    return-void

    .line 1716
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    return-void
.end method

.method private addStringPrefix(Ljava/lang/String;)V
    .locals 3

    .line 1730
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1732
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1733
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x4

    if-ge v0, p1, :cond_1

    rsub-int/lit8 p1, v0, -0x30

    .line 1736
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    return-void

    :cond_1
    const/16 p1, 0xff

    if-gt v0, p1, :cond_2

    const/16 p1, -0x34

    .line 1738
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1739
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_2
    const p1, 0xffff

    if-gt v0, p1, :cond_3

    const/16 p1, -0x35

    .line 1741
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1742
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    return-void

    :cond_3
    const/16 p1, -0x36

    .line 1744
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1745
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    return-void
.end method

.method private addToken(I)V
    .locals 1

    .line 1615
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validTokenCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1616
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    .line 1615
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addUint16(I)V
    .locals 4

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 1638
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1639
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x2

    .line 1640
    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x2

    .line 1641
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 1643
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte p1, p1

    .line 1644
    aput-byte p1, v0, v1

    .line 1645
    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void

    .line 1637
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addUint8(I)V
    .locals 4

    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_1

    .line 1627
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1628
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1629
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 1630
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_0
    int-to-byte p1, p1

    .line 1632
    aput-byte p1, v0, v1

    add-int/2addr v1, v3

    .line 1633
    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void

    .line 1626
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addVarOp(II)V
    .locals 3

    const/4 v0, -0x7

    if-eq p1, v0, :cond_5

    const/16 v0, 0xaa

    const/16 v1, 0x80

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 1708
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    if-ge p2, v1, :cond_5

    if-ne p1, v0, :cond_2

    const/16 p1, -0x37

    goto :goto_1

    :cond_2
    const/16 p1, -0x38

    .line 1699
    :goto_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1700
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_3
    if-ge p2, v1, :cond_4

    const/16 p1, -0x44

    .line 1690
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1691
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_4
    const/16 p1, -0x43

    .line 1694
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    return-void

    .line 1705
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    return-void
.end method

.method private allocLocal()I
    .locals 4

    .line 1841
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    add-int/lit8 v1, v0, 0x1

    .line 1842
    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    .line 1843
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    if-le v1, v3, :cond_0

    .line 1844
    iput v1, v2, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    :cond_0
    return v0
.end method

.method private static badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;
    .locals 1

    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private completeOptionalCallJump()Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;
    .locals 3

    const/4 v0, -0x1

    .line 1252
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const/4 v1, 0x1

    .line 1253
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1254
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/16 v2, -0x54

    .line 1255
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 1256
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/4 v0, -0x4

    .line 1259
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1260
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const/16 v0, 0x2c

    .line 1261
    const-string v2, "undefined"

    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1262
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/4 v2, 0x5

    .line 1263
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 1265
    new-instance v2, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    invoke-direct {v2, v1, v0}, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;-><init>(II)V

    return-object v2
.end method

.method private finishGetElemGeneration(Lorg/mozilla/javascript/Node;)V
    .locals 1

    const/4 v0, 0x0

    .line 1180
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, 0x27

    .line 1181
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    const/4 p1, -0x1

    .line 1182
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void
.end method

.method private fixLabelGotos()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1569
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    if-ge v1, v2, :cond_1

    .line 1570
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    aget-wide v3, v2, v1

    const/16 v2, 0x20

    shr-long v5, v3, v2

    long-to-int v2, v5

    long-to-int v4, v3

    .line 1573
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v2, v3, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1578
    invoke-direct {p0, v4, v2}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1576
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1580
    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    return-void
.end method

.method private generateCallFunAndThis(Lorg/mozilla/javascript/Node;Z)Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;
    .locals 5

    .line 1188
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-eq v0, v3, :cond_3

    const/16 v4, 0x27

    if-eq v0, v4, :cond_3

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_1

    .line 1235
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    if-eqz p2, :cond_0

    const/16 p1, -0x16

    .line 1238
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1239
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1240
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->completeOptionalCallJump()Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, -0x12

    .line 1242
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1243
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 1192
    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p2, :cond_2

    const/16 p2, -0x13

    .line 1195
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1196
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1197
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->completeOptionalCallJump()Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p2, -0xf

    .line 1199
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1200
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 1207
    :cond_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1208
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1209
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-ne v0, v3, :cond_5

    .line 1211
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    const/16 p2, -0x14

    .line 1214
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1215
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1216
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->completeOptionalCallJump()Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    move-result-object p1

    return-object p1

    :cond_4
    const/16 p2, -0x10

    .line 1218
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1219
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 1222
    :cond_5
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    if-eqz p2, :cond_6

    const/16 p1, -0x15

    .line 1225
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1226
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->completeOptionalCallJump()Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 p1, -0x11

    .line 1228
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private generateFunctionICode()V
    .locals 4

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    .line 103
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v1, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 105
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    iput v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    .line 106
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v3

    iput-boolean v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    .line 107
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    .line 110
    :cond_0
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, -0x45

    .line 111
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 112
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getBaseLineno()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    .line 114
    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-boolean v0, v2, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    .line 117
    :cond_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->isES6Generator()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-boolean v0, v2, Lorg/mozilla/javascript/InterpreterData;->isES6Generator:Z

    .line 121
    :cond_3
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->generateICodeFromTree(Lorg/mozilla/javascript/Node;)V

    return-void
.end method

.method private generateICodeFromTree(Lorg/mozilla/javascript/Node;)V
    .locals 5

    .line 125
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateNestedFunctions()V

    .line 127
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateRegExpLiterals()V

    .line 129
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateTemplateLiterals()V

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 132
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->fixLabelGotos()V

    .line 134
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-nez p1, :cond_0

    const/16 p1, 0x46

    .line 135
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 138
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, p1

    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    if-eq v1, v2, :cond_1

    .line 141
    new-array v1, v2, [B

    .line 142
    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 145
    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 146
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    goto :goto_1

    .line 148
    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    .line 149
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 151
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 152
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 153
    :cond_3
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    aput-object v3, v4, v2

    goto :goto_0

    .line 156
    :cond_4
    :goto_1
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    if-nez p1, :cond_5

    .line 157
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto :goto_2

    .line 158
    :cond_5
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v3, v2

    if-eq v3, p1, :cond_6

    .line 159
    new-array v3, p1, [D

    .line 160
    invoke-static {v2, v0, v3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v3, p1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    .line 163
    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 164
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsBigIntTable:[Ljava/math/BigInteger;

    goto :goto_4

    .line 166
    :cond_7
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/math/BigInteger;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsBigIntTable:[Ljava/math/BigInteger;

    .line 167
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->bigInts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 169
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 170
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsBigIntTable:[Ljava/math/BigInteger;

    aget-object v3, v3, v1

    if-eqz v3, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 171
    :cond_8
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsBigIntTable:[Ljava/math/BigInteger;

    aput-object v2, v3, v1

    goto :goto_3

    .line 174
    :cond_9
    :goto_4
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    if-eqz p1, :cond_a

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    array-length v2, v1

    if-eq v2, p1, :cond_a

    .line 175
    new-array v2, p1, [I

    .line 176
    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    .line 180
    :cond_a
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v1

    iput v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    .line 183
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    add-int/2addr v1, v2

    iget v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    add-int/2addr v1, v2

    iput v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxFrameArray:I

    .line 185
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    .line 186
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v1

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->argIsConst:[Z

    .line 187
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v1

    iput v1, p1, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    .line 188
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->hasRestParameter()Z

    move-result v1

    iput-boolean v1, p1, Lorg/mozilla/javascript/InterpreterData;->argsHasRest:Z

    .line 189
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getDefaultParams()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    iput-boolean v0, p1, Lorg/mozilla/javascript/InterpreterData;->argsHasDefaults:Z

    .line 191
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getRawSourceStart()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->rawSourceStart:I

    .line 192
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getRawSourceEnd()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->rawSourceEnd:I

    .line 194
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_c

    .line 195
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private generateNestedFunctions()V
    .locals 7

    .line 202
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    new-array v1, v0, [Lorg/mozilla/javascript/InterpreterData;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_2

    .line 207
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v3

    .line 208
    new-instance v4, Lorg/mozilla/javascript/CodeGenerator;

    invoke-direct {v4}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    .line 209
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v5, v4, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 210
    iput-object v3, v4, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 211
    new-instance v5, Lorg/mozilla/javascript/InterpreterData;

    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-direct {v5, v6}, Lorg/mozilla/javascript/InterpreterData;-><init>(Lorg/mozilla/javascript/InterpreterData;)V

    iput-object v5, v4, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 212
    invoke-direct {v4}, Lorg/mozilla/javascript/CodeGenerator;->generateFunctionICode()V

    .line 213
    iget-object v5, v4, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    aput-object v5, v1, v2

    .line 215
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 216
    instance-of v5, v3, Lorg/mozilla/javascript/ast/AstRoot;

    if-nez v5, :cond_1

    instance-of v5, v3, Lorg/mozilla/javascript/ast/Scope;

    if-nez v5, :cond_1

    instance-of v3, v3, Lorg/mozilla/javascript/ast/Block;

    if-nez v3, :cond_1

    .line 219
    iget-object v3, v4, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/mozilla/javascript/InterpreterData;->declaredAsFunctionExpression:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    return-void
.end method

.method private generateRegExpLiterals()V
    .locals 7

    .line 226
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    .line 230
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v2

    .line 231
    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v0, :cond_1

    .line 233
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpString(I)Ljava/lang/String;

    move-result-object v5

    .line 234
    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpFlags(I)Ljava/lang/String;

    move-result-object v6

    .line 235
    invoke-interface {v2, v1, v5, v6}, Lorg/mozilla/javascript/RegExpProxy;->compileRegExp(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v3, v0, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    return-void
.end method

.method private generateTemplateLiterals()V
    .locals 10

    .line 241
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getTemplateLiteralCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v0, :cond_2

    .line 246
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getTemplateLiteralStrings(I)Ljava/util/List;

    move-result-object v4

    .line 248
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 249
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ast/TemplateCharacters;

    add-int/lit8 v8, v6, 0x1

    .line 250
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/TemplateCharacters;->getValue()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x2

    .line 251
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/TemplateCharacters;->getRawValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    goto :goto_1

    .line 253
    :cond_1
    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v0, Lorg/mozilla/javascript/InterpreterData;->itsTemplateLiterals:[Ljava/lang/Object;

    return-void
.end method

.method private getDoubleIndex(D)I
    .locals 4

    .line 1662
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    if-nez v0, :cond_0

    .line 1664
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/16 v2, 0x40

    new-array v2, v2, [D

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto :goto_0

    .line 1665
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v2, v1

    if-ne v2, v0, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 1666
    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 1667
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1668
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    .line 1670
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aput-wide p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    .line 1671
    iput p1, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    return v0
.end method

.method private static getLocalBlockRef(Lorg/mozilla/javascript/Node;)I
    .locals 1

    const/4 v0, 0x3

    .line 1508
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/Node;

    const/4 v0, 0x2

    .line 1509
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p0

    return p0
.end method

.method private getTargetLabel(Lorg/mozilla/javascript/Node;)I
    .locals 5

    .line 1513
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1517
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    .line 1518
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    if-eqz v2, :cond_1

    array-length v3, v2

    if-ne v0, v3, :cond_3

    :cond_1
    if-nez v2, :cond_2

    const/16 v2, 0x20

    .line 1520
    new-array v2, v2, [I

    iput-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    goto :goto_0

    .line 1522
    :cond_2
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 1523
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1524
    iput-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    :cond_3
    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 1527
    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    .line 1528
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aput v1, v2, v0

    .line 1530
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->labelId(I)V

    return v0
.end method

.method private increaseICodeCapacity(I)[B
    .locals 3

    .line 1815
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, v0

    .line 1816
    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/2addr p1, v2

    if-le p1, v1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1822
    :goto_0
    new-array p1, p1, [B

    const/4 v1, 0x0

    .line 1823
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1824
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object p1, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    return-object p1

    .line 1817
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private markTargetLabel(Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 1535
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result p1

    .line 1536
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1538
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1540
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    aput v1, v0, p1

    return-void
.end method

.method private releaseLocal(I)V
    .locals 1

    .line 1850
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    if-eq p1, v0, :cond_0

    .line 1851
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method private resolveForwardGoto(I)V
    .locals 2

    .line 1593
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v1, p1, 0x3

    if-lt v0, v1, :cond_0

    .line 1594
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    return-void

    .line 1593
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private resolveGoto(II)V
    .locals 4

    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-ltz v0, :cond_1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1600
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 v2, p1, 0x1

    int-to-short v3, v0

    if-eq v0, v3, :cond_3

    .line 1603
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 1604
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Ljava/util/Map;

    .line 1606
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1609
    :cond_3
    iget-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    .line 1610
    aput-byte v3, p2, v2

    add-int/2addr p1, v1

    int-to-byte v0, v0

    .line 1611
    aput-byte v0, p2, p1

    return-void
.end method

.method private stackChange(I)V
    .locals 2

    if-gtz p1, :cond_0

    .line 1830
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    return-void

    .line 1832
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    add-int/2addr v0, p1

    .line 1833
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    if-le v0, v1, :cond_1

    .line 1834
    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    .line 1836
    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    return-void
.end method

.method private updateLineNumber(Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 259
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result p1

    .line 260
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 261
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    if-gez v1, :cond_0

    .line 262
    iput p1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    .line 264
    :cond_0
    iput p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    const/16 v0, -0x1f

    .line 265
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 266
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    :cond_1
    return-void
.end method

.method private visitArrayComprehension(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 0

    .line 1503
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    const/4 p1, 0x0

    .line 1504
    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    return-void
.end method

.method private visitArrayLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, p2

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1453
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v1, -0x23

    .line 1456
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    const/4 v0, 0x2

    .line 1457
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_1
    if-eqz p2, :cond_1

    .line 1459
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitLiteralValue(Lorg/mozilla/javascript/Node;)V

    .line 1460
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/16 p2, 0xb

    .line 1462
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_2

    const/16 p1, 0x47

    .line 1464
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_2

    .line 1466
    :cond_2
    iget-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1467
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, -0x26

    .line 1468
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    :goto_2
    const/4 p1, -0x1

    .line 1470
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void
.end method

.method private visitExpression(Lorg/mozilla/javascript/Node;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 555
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    .line 556
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 557
    iget v4, v1, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    const/16 v5, 0xb3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v2, v5, :cond_2b

    const/16 v5, 0xb4

    if-eq v2, v5, :cond_2a

    .line 558
    const-string v10, "undefined"

    const/16 v11, 0x2c

    const/16 v12, -0x53

    const/4 v13, 0x5

    const/4 v15, -0x4

    const v16, 0xffff

    const/16 v7, 0x1e

    const/4 v6, -0x1

    packed-switch v2, :pswitch_data_0

    const/4 v14, 0x4

    const/4 v5, 0x2

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_1

    const/16 v14, 0x3c

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    packed-switch v2, :pswitch_data_7

    .line 1172
    invoke-static {v0}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1054
    :pswitch_0
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitArrayComprehension(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_11

    .line 1011
    :pswitch_1
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1012
    :cond_0
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 1013
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1014
    invoke-direct {v1, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0xaa

    .line 1015
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    goto/16 :goto_11

    .line 922
    :pswitch_2
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 924
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 925
    invoke-direct {v1, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x42

    .line 926
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 927
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 601
    :pswitch_3
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 936
    :pswitch_4
    iget-boolean v2, v1, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez v2, :cond_1

    .line 937
    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-ne v2, v6, :cond_2

    const/16 v2, -0xe

    .line 939
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 940
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 942
    :cond_2
    invoke-direct {v1, v14, v2}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    .line 943
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v0, 0x20

    .line 944
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_11

    .line 958
    :pswitch_5
    invoke-direct {v1, v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_11

    .line 668
    :pswitch_6
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 669
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 670
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 671
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/16 v5, 0x76

    if-ne v2, v5, :cond_3

    const/4 v5, 0x7

    goto :goto_1

    :cond_3
    const/4 v5, 0x6

    .line 673
    :goto_1
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 674
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 675
    invoke-direct {v1, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 676
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 677
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    and-int/lit8 v3, p2, 0x1

    .line 679
    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 680
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    .line 1036
    :pswitch_7
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getBigInt()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addBigInt(Ljava/math/BigInteger;)V

    .line 1037
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    :pswitch_8
    const/16 v5, 0x10

    .line 1087
    invoke-virtual {v0, v5, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    const/4 v5, 0x0

    .line 1091
    :cond_4
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    add-int/2addr v5, v8

    .line 1093
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1095
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    rsub-int/lit8 v0, v5, 0x1

    .line 1096
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 1116
    :pswitch_9
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1117
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_11

    .line 1058
    :pswitch_a
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1059
    invoke-virtual {v0, v7, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v3

    const/16 v5, 0x11

    if-ne v3, v8, :cond_5

    .line 1061
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1062
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1063
    iget v3, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1064
    invoke-direct {v1, v12}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 1065
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1068
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1069
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1070
    invoke-direct {v1, v13}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 1073
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    .line 1074
    invoke-direct {v1, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1075
    invoke-direct {v1, v11, v10}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1076
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    .line 1078
    :cond_5
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_11

    .line 826
    :pswitch_b
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 827
    invoke-virtual {v0, v7, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 829
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 830
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 833
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 834
    invoke-direct {v1, v12}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 835
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 838
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 840
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    .line 842
    :cond_6
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_11

    .line 1050
    :pswitch_c
    invoke-direct {v1, v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_11

    .line 1031
    :pswitch_d
    invoke-static {v0}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 1032
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 1001
    :pswitch_e
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1002
    :cond_7
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 1003
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1004
    invoke-direct {v1, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x3d

    .line 1005
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    goto/16 :goto_11

    .line 992
    :pswitch_f
    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v2, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 993
    :cond_8
    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 994
    invoke-direct {v1, v14, v0}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    .line 995
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 578
    :pswitch_10
    invoke-static {v0}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/16 v2, 0x3b

    .line 579
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 580
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 1042
    :pswitch_11
    invoke-virtual {v0, v14}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    const/16 v2, 0x35

    .line 1043
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 1044
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 1025
    :pswitch_12
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 1026
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 963
    :pswitch_13
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v5, v0

    cmpl-double v7, v5, v2

    if-nez v7, :cond_c

    if-nez v0, :cond_9

    const/16 v0, -0x3a

    .line 967
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v2

    const-wide/16 v2, 0x0

    cmpg-double v0, v5, v2

    if-gez v0, :cond_d

    const/16 v0, 0x1d

    .line 970
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_2

    :cond_9
    if-ne v0, v8, :cond_a

    const/16 v0, -0x3b

    .line 973
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_2

    :cond_a
    int-to-short v2, v0

    if-ne v2, v0, :cond_b

    const/16 v2, -0x20

    .line 975
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    and-int v0, v0, v16

    .line 977
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_2

    :cond_b
    const/16 v2, -0x21

    .line 979
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 980
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    goto :goto_2

    .line 983
    :cond_c
    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->getDoubleIndex(D)I

    move-result v0

    const/16 v2, 0x2d

    .line 984
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 986
    :cond_d
    :goto_2
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 952
    :pswitch_14
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 953
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 1154
    :sswitch_0
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1155
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1157
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1158
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1159
    iget v2, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/16 v3, -0x54

    .line 1160
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 1161
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1163
    invoke-direct {v1, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1164
    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1165
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1167
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    .line 1138
    :sswitch_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1139
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1140
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1141
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 1142
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1143
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/4 v0, 0x3

    .line 1144
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_11

    .line 1103
    :sswitch_2
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 1104
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, -0x3c

    .line 1105
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1106
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1107
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1108
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x3d

    .line 1109
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addBackwardGoto(II)V

    goto/16 :goto_11

    .line 894
    :pswitch_15
    :sswitch_3
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 895
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v3, 0x9c

    if-ne v2, v3, :cond_e

    .line 897
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 898
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x49

    .line 899
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 901
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 903
    :cond_e
    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x4a

    .line 904
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 905
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 561
    :sswitch_4
    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    .line 562
    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v2

    .line 564
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    if-eq v3, v5, :cond_10

    .line 565
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    if-ne v3, v14, :cond_f

    goto :goto_3

    .line 566
    :cond_f
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_10
    :goto_3
    const/16 v3, -0x17

    .line 568
    invoke-direct {v1, v3, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 569
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->isMethodDefinition()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, -0x25

    .line 570
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 572
    :cond_11
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 686
    :sswitch_5
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 688
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 689
    iget v3, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/4 v5, 0x7

    .line 690
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 691
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    and-int/lit8 v5, p2, 0x1

    .line 693
    invoke-direct {v1, v0, v5}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 694
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 695
    invoke-direct {v1, v13}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 696
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    .line 697
    iput v4, v1, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    .line 699
    invoke-direct {v1, v2, v5}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 700
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    .line 586
    :sswitch_6
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    :goto_4
    if-eq v3, v0, :cond_12

    .line 588
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 589
    invoke-direct {v1, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 590
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 591
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_4

    :cond_12
    and-int/lit8 v0, p2, 0x1

    .line 594
    invoke-direct {v1, v3, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    goto/16 :goto_11

    .line 872
    :pswitch_16
    :sswitch_7
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 873
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 874
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 875
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    const/16 v7, 0x9a

    const/4 v10, -0x2

    if-ne v2, v7, :cond_13

    .line 877
    invoke-direct {v1, v10}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 878
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x27

    .line 879
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 880
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 882
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 884
    :cond_13
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x1f

    .line 886
    invoke-virtual {v0, v2, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-ne v0, v8, :cond_14

    const/16 v0, 0x2a

    goto :goto_5

    :cond_14
    const/16 v0, 0x29

    .line 885
    :goto_5
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 889
    invoke-direct {v1, v10}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 752
    :sswitch_8
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 753
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 754
    invoke-virtual {v0, v7, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v3

    if-ne v3, v8, :cond_15

    .line 755
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 756
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 757
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 758
    invoke-direct {v1, v12}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 759
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 762
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->finishGetElemGeneration(Lorg/mozilla/javascript/Node;)V

    .line 763
    iget v2, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 764
    invoke-direct {v1, v13}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 767
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    .line 768
    invoke-direct {v1, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 769
    invoke-direct {v1, v11, v10}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 770
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    :cond_15
    const/16 v3, 0x1f

    .line 771
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-ne v0, v8, :cond_16

    .line 772
    invoke-direct {v1, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x28

    .line 773
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 774
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 776
    :cond_16
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->finishGetElemGeneration(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_11

    .line 849
    :pswitch_17
    :sswitch_9
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 850
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 851
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    .line 852
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    const/16 v7, 0x99

    if-ne v2, v7, :cond_17

    .line 854
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 855
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x21

    .line 856
    invoke-direct {v1, v2, v5}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 858
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 860
    :cond_17
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x1f

    .line 862
    invoke-virtual {v0, v2, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-ne v0, v8, :cond_18

    const/16 v0, 0x26

    goto :goto_6

    :cond_18
    const/16 v0, 0x25

    .line 861
    :goto_6
    invoke-direct {v1, v0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 866
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 706
    :pswitch_18
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 707
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 708
    invoke-virtual {v0, v7, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v5

    if-ne v5, v8, :cond_19

    .line 710
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 711
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 712
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 713
    invoke-direct {v1, v12}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 714
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 717
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 718
    iget v2, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 719
    invoke-direct {v1, v13}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 722
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    .line 723
    invoke-direct {v1, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 724
    invoke-direct {v1, v11, v10}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 725
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_11

    :cond_19
    const/16 v5, 0x1f

    .line 726
    invoke-virtual {v0, v5, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-ne v0, v8, :cond_1b

    const/16 v0, 0x21

    if-ne v2, v0, :cond_1a

    const/16 v0, 0x23

    goto :goto_7

    :cond_1a
    const/16 v0, 0x24

    .line 729
    :goto_7
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v2

    .line 727
    invoke-direct {v1, v0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_11

    .line 731
    :cond_1b
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_11

    .line 736
    :pswitch_19
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v5, 0x36

    if-ne v2, v5, :cond_1c

    const/4 v2, 0x1

    goto :goto_8

    :cond_1c
    const/4 v2, 0x0

    .line 737
    :goto_8
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 738
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 739
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v3, 0x1f

    .line 740
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-ne v0, v8, :cond_1d

    const/16 v0, -0x56

    .line 741
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_9

    :cond_1d
    if-eqz v2, :cond_1e

    .line 744
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_9

    .line 746
    :cond_1e
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 748
    :goto_9
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_11

    .line 609
    :pswitch_1a
    invoke-virtual {v0, v7, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v5

    if-ne v5, v8, :cond_1f

    const/4 v5, 0x1

    goto :goto_a

    :cond_1f
    const/4 v5, 0x0

    :goto_a
    if-ne v2, v7, :cond_20

    .line 612
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/4 v5, 0x0

    goto :goto_b

    .line 615
    :cond_20
    invoke-direct {v1, v3, v5}, Lorg/mozilla/javascript/CodeGenerator;->generateCallFunAndThis(Lorg/mozilla/javascript/Node;Z)Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 617
    invoke-static {v5}, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->-$$Nest$fgetputArgsAndDoCallLabel(Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;)I

    move-result v6

    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    :cond_21
    :goto_b
    const/4 v6, 0x0

    .line 621
    :goto_c
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 622
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_22
    const/16 v3, 0xa

    .line 625
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v3

    const/16 v10, 0x4c

    if-eq v2, v10, :cond_24

    if-eqz v3, :cond_24

    const/16 v0, -0x19

    .line 628
    invoke-direct {v1, v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 629
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    if-ne v2, v7, :cond_23

    const/4 v9, 0x1

    .line 630
    :cond_23
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 631
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int v0, v0, v16

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_d

    :cond_24
    const/16 v3, 0x1f

    .line 632
    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-ne v0, v8, :cond_25

    const/16 v0, -0x55

    .line 633
    invoke-direct {v1, v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_d

    :cond_25
    const/16 v0, 0x2b

    if-ne v2, v0, :cond_26

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_26

    .line 638
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 640
    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    if-nez v0, :cond_26

    const/16 v2, -0x3e

    .line 644
    :cond_26
    invoke-direct {v1, v2, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    :goto_d
    if-ne v2, v7, :cond_27

    neg-int v0, v6

    .line 649
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_e

    :cond_27
    rsub-int/lit8 v0, v6, -0x1

    .line 653
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 655
    :goto_e
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v2, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    if-le v6, v2, :cond_28

    .line 656
    iput v6, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    :cond_28
    if-eqz v5, :cond_2e

    .line 660
    invoke-static {v5}, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->-$$Nest$fgetafterLabel(Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;)I

    move-result v0

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto :goto_11

    .line 815
    :pswitch_1b
    :sswitch_a
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x8b

    if-ne v2, v0, :cond_29

    .line 817
    invoke-direct {v1, v15}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const/16 v0, -0x39

    .line 818
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_11

    .line 820
    :cond_29
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_11

    .line 802
    :pswitch_1c
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 803
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 804
    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 805
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 806
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_11

    .line 911
    :pswitch_1d
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    .line 912
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 913
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 914
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 915
    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 916
    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_11

    .line 1149
    :cond_2a
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->visitTemplateLiteral(Lorg/mozilla/javascript/Node;)V

    goto :goto_11

    :cond_2b
    const v16, 0xffff

    :pswitch_1e
    if-eqz v3, :cond_2c

    .line 1123
    :try_start_0
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v0

    throw v0

    :cond_2c
    const/16 v3, -0x39

    .line 1125
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1126
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_f
    const/16 v3, 0x4e

    if-ne v2, v3, :cond_2d

    .line 1129
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_10

    :cond_2d
    const/16 v2, -0x49

    .line 1131
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1133
    :goto_10
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v0

    and-int v0, v0, v16

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    :cond_2e
    :goto_11
    add-int/2addr v4, v8

    .line 1174
    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    if-eq v4, v0, :cond_2f

    .line 1175
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2f
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1b
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_9
        0x27 -> :sswitch_8
        0x29 -> :sswitch_7
        0x62 -> :sswitch_6
        0x73 -> :sswitch_5
        0x7a -> :sswitch_4
        0x8b -> :sswitch_a
        0x9c -> :sswitch_3
        0xa0 -> :sswitch_2
        0xad -> :sswitch_1
        0xb9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_1a
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_1c
        :pswitch_1c
        :pswitch_11
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_1c
        :pswitch_1c
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x43
        :pswitch_d
        :pswitch_d
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x47
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_15
        :pswitch_b
        :pswitch_1a
        :pswitch_a
        :pswitch_1e
        :pswitch_12
        :pswitch_1d
        :pswitch_1c
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x75
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x97
        :pswitch_4
        :pswitch_3
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xa9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private visitIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 5

    const/16 v0, 0xd

    .line 1269
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    .line 1270
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x1f

    const/4 v3, 0x0

    .line 1272
    invoke-virtual {p2, v2, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1273
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitSuperIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    return-void

    :cond_0
    const/16 v2, 0x21

    if-eq v1, v2, :cond_6

    const/16 v2, 0x27

    if-eq v1, v2, :cond_5

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x49

    if-ne v1, v2, :cond_1

    .line 1317
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1318
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0xb

    .line 1319
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1320
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    .line 1325
    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1280
    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1281
    :cond_3
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result p1

    const/4 p2, -0x7

    .line 1282
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    .line 1283
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 1284
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void

    .line 1289
    :cond_4
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x8

    .line 1290
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1291
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 1292
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void

    .line 1306
    :cond_5
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1307
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1308
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1309
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0xa

    .line 1310
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1311
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    const/4 p1, -0x1

    .line 1312
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void

    .line 1297
    :cond_6
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1298
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1299
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x9

    .line 1300
    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1301
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void
.end method

.method private visitLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 2

    .line 1404
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_0

    .line 1406
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitArrayLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-void

    :cond_0
    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    .line 1408
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitObjectLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-void

    .line 1410
    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private visitLiteralValue(Lorg/mozilla/javascript/Node;)V
    .locals 4

    .line 1474
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0xa5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1476
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x40

    .line 1477
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa6

    if-ne v0, v1, :cond_1

    .line 1479
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x41

    .line 1480
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xb1

    const/16 v3, -0x24

    if-ne v0, v1, :cond_2

    .line 1482
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1483
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    .line 1485
    :cond_2
    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1486
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    :goto_0
    const/4 p1, -0x1

    .line 1488
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void
.end method

.method private visitObjectLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 4

    const/16 v0, 0xc

    .line 1415
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1419
    invoke-static {p1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/mozilla/javascript/CodeGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/mozilla/javascript/CodeGenerator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1421
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1422
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, -0x22

    .line 1424
    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 1425
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    const/4 v1, 0x4

    .line 1426
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/4 v1, 0x0

    :goto_1
    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    .line 1431
    :cond_1
    aget-object v2, p1, v1

    .line 1432
    :goto_2
    instance-of v3, v2, Lorg/mozilla/javascript/Node;

    if-eqz v3, :cond_2

    .line 1434
    check-cast v2, Lorg/mozilla/javascript/Node;

    .line 1435
    iget-object v2, v2, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x52

    .line 1436
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const/4 v2, -0x1

    .line 1437
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1441
    :cond_2
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitLiteralValue(Lorg/mozilla/javascript/Node;)V

    .line 1442
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 p1, 0x48

    .line 1446
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    const/4 p1, -0x3

    .line 1448
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void
.end method

.method private visitStatement(Lorg/mozilla/javascript/Node;I)V
    .locals 12

    .line 275
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    .line 276
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v2, -0x45

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_1a

    const/16 v2, 0x5a

    const/16 v3, -0x3f

    const/4 v4, 0x1

    if-eq v0, v2, :cond_16

    const/16 v2, 0x7a

    const/4 v5, 0x3

    const/4 v6, -0x5

    const/4 v7, -0x1

    if-eq v0, v2, :cond_13

    const/16 v2, 0x7f

    const/4 v8, -0x4

    const/4 v9, 0x0

    if-eq v0, v2, :cond_10

    const/16 v2, 0x88

    if-eq v0, v2, :cond_f

    const/16 v2, 0x8a

    if-eq v0, v2, :cond_d

    const/16 v2, 0x8d

    if-eq v0, v2, :cond_f

    const/16 v2, 0x9b

    const/4 v10, 0x2

    if-eq v0, v2, :cond_b

    const/16 v2, 0xae

    if-eq v0, v2, :cond_a

    const/16 v2, 0x37

    const v3, 0xffff

    if-eq v0, v2, :cond_9

    const/16 v2, 0x38

    if-eq v0, v2, :cond_8

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 546
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 400
    :pswitch_0
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/16 v0, -0x1c

    .line 401
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    :cond_0
    :goto_0
    move-object v5, p0

    goto/16 :goto_b

    .line 422
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 423
    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, 0x93

    if-ne v0, p1, :cond_1

    const/4 v6, -0x4

    .line 424
    :cond_1
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 425
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 378
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->markTargetLabel(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 537
    :pswitch_3
    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 538
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 539
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 475
    :pswitch_4
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/16 v2, 0xe

    .line 476
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    .line 477
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 478
    :goto_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 479
    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 480
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringPrefix(Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexPrefix(I)V

    const/16 v0, 0x3e

    .line 482
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 483
    :goto_2
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 484
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 384
    :pswitch_5
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 385
    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 386
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    .line 387
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 393
    :pswitch_6
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 394
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    goto :goto_0

    .line 502
    :pswitch_7
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    const/16 v0, 0x14

    .line 503
    invoke-virtual {p1, v0, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v1, :cond_5

    .line 504
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 505
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_4

    goto :goto_3

    .line 511
    :cond_4
    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x48

    .line 512
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 513
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr p1, v3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    .line 514
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    :cond_5
    :goto_3
    const/16 p1, -0x46

    .line 508
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 509
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr p1, v3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto/16 :goto_0

    :cond_6
    if-nez v1, :cond_7

    const/16 p1, -0x1b

    .line 519
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto/16 :goto_0

    .line 521
    :cond_7
    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/4 p1, 0x4

    .line 522
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 523
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 330
    :pswitch_8
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_0

    .line 324
    :pswitch_9
    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 325
    invoke-direct {p0, v10}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 326
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 497
    :cond_8
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 498
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto/16 :goto_0

    .line 489
    :cond_9
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 490
    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 491
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 492
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr p1, v3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    .line 493
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    :cond_a
    const/16 p1, -0x47

    .line 348
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto/16 :goto_0

    .line 335
    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->allocLocal()I

    move-result v0

    .line 336
    invoke-virtual {p1, v10, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 337
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    :goto_4
    if-eqz v1, :cond_c

    .line 339
    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 340
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_4

    .line 342
    :cond_c
    invoke-direct {p0, v3, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 343
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->releaseLocal(I)V

    goto/16 :goto_0

    .line 408
    :cond_d
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 409
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result p1

    const/16 v0, -0x1d

    .line 410
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 411
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_5
    if-eqz v1, :cond_e

    .line 413
    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 414
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_5

    :cond_e
    const/16 v0, -0x1e

    .line 416
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto/16 :goto_0

    .line 314
    :cond_f
    :pswitch_a
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    :goto_6
    :pswitch_b
    if-eqz v1, :cond_0

    .line 318
    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 319
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_6

    .line 352
    :cond_10
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 356
    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 357
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    :goto_7
    if-eqz p1, :cond_12

    .line 360
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_11

    .line 361
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 362
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 363
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 364
    invoke-direct {p0, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x33

    .line 365
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 366
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 369
    iget-object v0, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/4 v1, -0x6

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    .line 370
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 359
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    goto :goto_7

    .line 360
    :cond_11
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 372
    :cond_12
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 373
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 280
    :cond_13
    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    .line 281
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v0

    if-ne v0, v5, :cond_14

    const/16 v0, -0x18

    .line 289
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_8

    :cond_14
    if-ne v0, v4, :cond_15

    .line 300
    :goto_8
    iget-boolean v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    if-nez v0, :cond_0

    const/16 v0, -0x17

    .line 301
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 302
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 303
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 304
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 292
    :cond_15
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 430
    :cond_16
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    .line 431
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v10

    .line 432
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->allocLocal()I

    move-result v11

    const/16 v0, -0xd

    .line 434
    invoke-direct {p0, v0, v11}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 436
    iget v6, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 437
    iget-boolean v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    .line 438
    iput-boolean v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    :goto_9
    if-eqz v1, :cond_17

    .line 440
    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 441
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_9

    .line 443
    :cond_17
    iput-boolean v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    .line 445
    iget-object v0, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_18

    .line 447
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v0

    aget v7, v1, v0

    const/4 v9, 0x0

    move v8, v7

    move-object v5, p0

    .line 448
    invoke-direct/range {v5 .. v11}, Lorg/mozilla/javascript/CodeGenerator;->addExceptionHandler(IIIZII)V

    goto :goto_a

    :cond_18
    move-object v5, p0

    .line 456
    :goto_a
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 458
    iget-object v0, v5, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result p1

    aget v7, v0, p1

    const/4 v9, 0x1

    move v8, v7

    .line 459
    invoke-direct/range {v5 .. v11}, Lorg/mozilla/javascript/CodeGenerator;->addExceptionHandler(IIIZII)V

    .line 468
    :cond_19
    invoke-direct {p0, v3, v11}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 469
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->releaseLocal(I)V

    goto :goto_b

    :cond_1a
    move-object v5, p0

    .line 529
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 530
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 549
    :goto_b
    iget p1, v5, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    if-ne p1, p2, :cond_1b

    return-void

    .line 550
    :cond_1b
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8f
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private visitSuperIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V
    .locals 6

    .line 1333
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    const/4 v0, 0x0

    .line 1336
    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v1, 0x27

    const/4 v2, -0x1

    const/16 v3, 0x21

    if-eq p3, v3, :cond_1

    if-ne p3, v1, :cond_0

    .line 1344
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 1345
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, 0x28

    .line 1346
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 1347
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 1352
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1339
    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x23

    invoke-direct {p0, v4, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    :goto_0
    and-int/lit8 p1, p4, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    .line 1358
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1359
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :cond_2
    const/16 v5, 0x4f

    .line 1363
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 1364
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/4 v5, -0x3

    .line 1365
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const/16 v5, -0x3b

    .line 1368
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1369
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    and-int/2addr p4, v4

    if-nez p4, :cond_3

    const/16 p4, 0x15

    .line 1371
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_1

    :cond_3
    const/16 p4, 0x16

    .line 1373
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 1375
    :goto_1
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    if-eq p3, v3, :cond_5

    if-eq p3, v1, :cond_4

    goto :goto_2

    .line 1387
    :cond_4
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    .line 1388
    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p2, 0x2a

    .line 1390
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    const/4 p2, -0x2

    .line 1391
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_2

    .line 1380
    :cond_5
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x26

    invoke-direct {p0, p3, p2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1382
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_2
    if-eqz p1, :cond_6

    const/4 p1, -0x4

    .line 1398
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1399
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :cond_6
    return-void
.end method

.method private visitTemplateLiteral(Lorg/mozilla/javascript/Node;)V
    .locals 1

    const/16 v0, 0x1b

    .line 1492
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    const/16 v0, -0x51

    .line 1493
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    const/4 p1, 0x1

    .line 1494
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void
.end method


# virtual methods
.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;
    .locals 2

    .line 64
    iput-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 71
    new-instance v0, Lorg/mozilla/javascript/NodeTransformer;

    invoke-direct {v0}, Lorg/mozilla/javascript/NodeTransformer;-><init>()V

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/CompilerEnvirons;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    goto :goto_0

    .line 81
    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 84
    :goto_0
    new-instance p2, Lorg/mozilla/javascript/InterpreterData;

    .line 86
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 87
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 89
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v1

    invoke-direct {p2, p1, v0, p3, v1}, Lorg/mozilla/javascript/InterpreterData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p2, Lorg/mozilla/javascript/InterpreterData;->topLevel:Z

    if-eqz p4, :cond_1

    .line 93
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateFunctionICode()V

    goto :goto_1

    .line 95
    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->generateICodeFromTree(Lorg/mozilla/javascript/Node;)V

    .line 97
    :goto_1
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    return-object p1
.end method
