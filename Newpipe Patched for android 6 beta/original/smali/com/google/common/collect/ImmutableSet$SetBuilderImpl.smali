.class abstract Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
.super Ljava/lang/Object;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SetBuilderImpl"
.end annotation


# instance fields
.field dedupedElements:[Ljava/lang/Object;

.field distinct:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 596
    iput p1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V
    .locals 2

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iget-object v0, p1, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    .line 602
    iget p1, p1, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    iput p1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 611
    array-length v0, v0

    .line 612
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result p1

    .line 613
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method abstract add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
.end method

.method final addDedupedElement(Ljava/lang/Object;)V
    .locals 3

    .line 619
    iget v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->ensureCapacity(I)V

    .line 620
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    aput-object p1, v0, v1

    return-void
.end method

.method abstract build()Lcom/google/common/collect/ImmutableSet;
.end method

.method abstract copy()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
.end method

.method review()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 0

    .line 0
    return-object p0
.end method
