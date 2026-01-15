.class final Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;
.super Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegularSetBuilderImpl"
.end annotation


# instance fields
.field private expandTableThreshold:I

.field private hashCode:I

.field private hashTable:[Ljava/lang/Object;

.field private maxRunBeforeFallback:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 735
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;-><init>(I)V

    const/4 p1, 0x0

    .line 736
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 737
    iput p1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    .line 738
    iput p1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;)V
    .locals 1

    .line 742
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    .line 743
    iget-object v0, p1, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 744
    iget v0, p1, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    iput v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    .line 745
    iget v0, p1, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    iput v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    .line 746
    iget p1, p1, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    iput p1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    return-void
.end method

.method static hashFloodingDetected([Ljava/lang/Object;)Z
    .locals 9

    .line 896
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback(I)I

    move-result v0

    .line 897
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 907
    :goto_0
    array-length v6, p0

    if-ge v4, v6, :cond_4

    if-ne v4, v5, :cond_1

    .line 908
    aget-object v6, p0, v4

    if-nez v6, :cond_1

    add-int v5, v4, v0

    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v1

    .line 909
    aget-object v6, p0, v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_1
    add-int/2addr v4, v0

    add-int/lit8 v6, v4, -0x1

    :goto_2
    if-lt v6, v5, :cond_3

    and-int v7, v6, v1

    .line 921
    aget-object v7, p0, v7

    if-nez v7, :cond_2

    add-int/lit8 v5, v6, 0x1

    move v8, v5

    move v5, v4

    move v4, v8

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_3
    return v2

    :cond_4
    return v3
.end method

.method private insertInHashTable(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 6

    .line 767
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 769
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 770
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move v3, v1

    :goto_0
    sub-int v4, v3, v1

    .line 771
    iget v5, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    if-ge v4, v5, :cond_2

    and-int v4, v3, v2

    .line 773
    iget-object v5, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    aget-object v5, v5, v4

    if-nez v5, :cond_0

    .line 775
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->addDedupedElement(Ljava/lang/Object;)V

    .line 776
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 777
    iget p1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    .line 778
    iget p1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->ensureTableCapacity(I)V

    return-object p0

    .line 780
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 785
    :cond_2
    new-instance v0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method static maxRunBeforeFallback(I)I
    .locals 1

    .line 939
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result p0

    mul-int/lit8 p0, p0, 0xd

    return p0
.end method

.method static rebuildHashTable(I[Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 6

    .line 835
    new-array v0, p0, [Ljava/lang/Object;

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 839
    aget-object v2, p1, v1

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v3

    :goto_1
    and-int v4, v3, p0

    .line 843
    aget-object v5, v0, v4

    if-nez v5, :cond_0

    .line 844
    aput-object v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 2

    .line 751
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 753
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    if-nez v0, :cond_0

    .line 754
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->addDedupedElement(Ljava/lang/Object;)V

    return-object p0

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->ensureTableCapacity(I)V

    .line 758
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 759
    iget v1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    .line 760
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->insertInHashTable(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object p1

    return-object p1

    .line 763
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->insertInHashTable(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method build()Lcom/google/common/collect/ImmutableSet;
    .locals 6

    .line 809
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 825
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    array-length v3, v2

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 827
    :cond_0
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 828
    :goto_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSet;

    iget v3, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 829
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v5, v5

    sub-int/2addr v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    return-object v0

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 811
    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method copy()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 1

    .line 790
    new-instance v0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;)V

    return-object v0
.end method

.method ensureTableCapacity(I)V
    .locals 4

    .line 854
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 855
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result p1

    .line 856
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    goto :goto_0

    .line 857
    :cond_0
    iget v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    if-le p1, v1, :cond_1

    array-length p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ge p1, v1, :cond_1

    .line 858
    array-length p1, v0

    mul-int/lit8 p1, p1, 0x2

    .line 859
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->rebuildHashTable(I[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 863
    :goto_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    const-wide v0, 0x3fe6666666666666L    # 0.7

    int-to-double v2, p1

    mul-double v2, v2, v0

    double-to-int p1, v2

    .line 864
    iput p1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    :cond_1
    return-void
.end method

.method review()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 5

    .line 795
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 798
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 799
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 800
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->rebuildHashTable(I[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 801
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    const-wide v1, 0x3fe6666666666666L    # 0.7

    int-to-double v3, v0

    mul-double v3, v3, v1

    double-to-int v0, v3

    .line 802
    iput v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashFloodingDetected([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method
