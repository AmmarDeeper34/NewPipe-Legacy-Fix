.class public Lcom/google/common/collect/ImmutableSet$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field forceCopy:Z

.field private impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 488
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 491
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    if-lez p1, :cond_0

    .line 493
    new-instance v0, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;

    invoke-direct {v0, p1}, Lcom/google/common/collect/ImmutableSet$RegularSetBuilderImpl;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    return-void

    .line 495
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet$EmptySetBuilderImpl;->instance()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 478
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Builder;->copyIfNecessary()V

    .line 527
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 534
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 549
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public build()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 580
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    .line 581
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->review()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    .line 582
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method copy()V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;->copy()Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->impl:Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;

    return-void
.end method

.method final copyIfNecessary()V
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Builder;->copy()V

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    :cond_0
    return-void
.end method
