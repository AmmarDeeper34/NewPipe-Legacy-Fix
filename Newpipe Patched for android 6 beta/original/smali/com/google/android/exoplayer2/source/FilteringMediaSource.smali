.class public Lcom/google/android/exoplayer2/source/FilteringMediaSource;
.super Lcom/google/android/exoplayer2/source/WrappingMediaSource;
.source "FilteringMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final trackTypes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V
    .locals 0

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/FilteringMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 68
    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/FilteringMediaSource;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Lcom/google/common/collect/ImmutableSet;)V

    return-object p2
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 79
    check-cast p1, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/FilteringMediaSource$FilteringMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 80
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method
