.class public Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;
.super Ljava/lang/Object;
.source "SplitParallelSampleBandwidthEstimator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bandwidthEstimate:J

.field private final bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

.field private lastReportedBandwidthEstimate:J

.field private final minBytesTransferred:J

.field private final minSamples:I

.field private sampleBytesTransferred:J

.field private sampleStartTimeMs:J

.field private streamCount:I

.field private totalBytesTransferred:J

.field private totalSamplesAdded:I


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->access$100(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    .line 131
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->access$200(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->minSamples:I

    .line 132
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->access$300(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->minBytesTransferred:J

    .line 133
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->access$400(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)Lcom/google/android/exoplayer2/util/Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 134
    new-instance p1, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    const-wide/high16 v0, -0x8000000000000000L

    .line 135
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    .line 136
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;-><init>(Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)V

    return-void
.end method

.method private maybeNotifyBandwidthSample(IJJ)V
    .locals 9

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p4, v0

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 205
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iput-wide p4, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->lastReportedBandwidthEstimate:J

    .line 212
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->bandwidthSample(IJJ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->addListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method

.method public getBandwidthEstimate()J
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    return-wide v0
.end method

.method public onBytesTransferred(Lcom/google/android/exoplayer2/upstream/DataSource;I)V
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    .line 163
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    return-void
.end method

.method public onNetworkTypeChange(J)V
    .locals 10

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 193
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    sub-long v4, v0, v4

    long-to-int v2, v4

    move v5, v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 194
    :goto_0
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    move-object v4, p0

    move-wide v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->maybeNotifyBandwidthSample(IJJ)V

    .line 195
    iget-object p1, v4, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;->reset()V

    const-wide/high16 p1, -0x8000000000000000L

    .line 196
    iput-wide p1, v4, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    .line 197
    iput-wide v0, v4, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    const-wide/16 p1, 0x0

    .line 198
    iput-wide p1, v4, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    .line 199
    iput v3, v4, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    .line 200
    iput-wide p1, v4, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    return-void
.end method

.method public onTransferEnd(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 13

    .line 168
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    const/4 v6, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 169
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 170
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    sub-long v1, v7, v1

    long-to-int v2, v1

    int-to-long v1, v2

    const-wide/16 v9, 0x0

    cmp-long v3, v1, v9

    if-lez v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    const-wide/16 v11, 0x3e8

    mul-long v11, v11, v1

    invoke-interface {v3, v4, v5, v11, v12}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;->addSample(JJ)V

    .line 173
    iget v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalSamplesAdded:I

    .line 174
    iget v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->minSamples:I

    if-le v3, v4, :cond_1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->totalBytesTransferred:J

    iget-wide v11, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->minBytesTransferred:J

    cmp-long v5, v3, v11

    if-lez v5, :cond_1

    .line 175
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthStatistic:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;->getBandwidthEstimate()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    :cond_1
    long-to-int v1, v1

    .line 177
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->bandwidthEstimate:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->maybeNotifyBandwidthSample(IJJ)V

    .line 179
    iput-wide v7, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    .line 180
    iput-wide v9, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleBytesTransferred:J

    .line 182
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    sub-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    return-void
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 2

    .line 154
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->sampleStartTimeMs:J

    .line 157
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->streamCount:I

    return-void
.end method

.method public removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;->eventDispatcher:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener$EventDispatcher;->removeListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method
