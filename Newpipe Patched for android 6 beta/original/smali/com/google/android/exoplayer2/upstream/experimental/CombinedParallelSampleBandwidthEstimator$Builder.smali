.class public Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
.super Ljava/lang/Object;
.source "CombinedParallelSampleBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

.field private clock:Lcom/google/android/exoplayer2/util/Clock;

.field private minBytesTransferred:J

.field private minSamples:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    .line 51
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->minSamples:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->minBytesTransferred:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;)Lcom/google/android/exoplayer2/util/Clock;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;
    .locals 2

    .line 111
    new-instance v0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator;-><init>(Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$1;)V

    return-object v0
.end method

.method public setBandwidthStatistic(Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;)Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    return-object p0
.end method

.method setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method

.method public setMinBytesTransferred(J)Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 92
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->minBytesTransferred:J

    return-object p0
.end method

.method public setMinSamples(I)Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 78
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/CombinedParallelSampleBandwidthEstimator$Builder;->minSamples:I

    return-object p0
.end method
