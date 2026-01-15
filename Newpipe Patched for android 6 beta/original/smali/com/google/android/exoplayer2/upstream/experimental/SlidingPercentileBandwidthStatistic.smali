.class public Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;
.super Ljava/lang/Object;
.source "SlidingPercentileBandwidthStatistic.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/experimental/BandwidthStatistic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_SAMPLES_COUNT:I = 0xa

.field public static final DEFAULT_PERCENTILE:D = 0.5


# instance fields
.field private bitrateEstimate:J

.field private final maxSampleCount:I

.field private final percentile:D

.field private final samples:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedSamples:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private weightSum:D


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 56
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p2, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 67
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->maxSampleCount:I

    .line 68
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->percentile:D

    .line 69
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    .line 70
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    const-wide/high16 p1, -0x8000000000000000L

    .line 71
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    return-void
.end method

.method private calculateBitrateEstimate()J
    .locals 19

    move-object/from16 v0, p0

    .line 105
    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1

    .line 108
    :cond_0
    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->percentile:D

    mul-double v1, v1, v3

    .line 112
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-wide v10, v4

    move-wide v8, v6

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    .line 115
    invoke-static {v12}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$000(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    add-double/2addr v6, v13

    cmpl-double v13, v6, v1

    if-ltz v13, :cond_2

    cmp-long v3, v10, v4

    if-nez v3, :cond_1

    .line 118
    invoke-static {v12}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$100(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)J

    move-result-wide v1

    return-wide v1

    .line 122
    :cond_1
    invoke-static {v12}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$100(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)J

    move-result-wide v3

    sub-long/2addr v3, v10

    long-to-double v3, v3

    sub-double/2addr v1, v8

    mul-double v3, v3, v1

    sub-double/2addr v6, v8

    div-double/2addr v3, v6

    double-to-long v1, v3

    add-long/2addr v10, v1

    return-wide v10

    .line 127
    :cond_2
    invoke-static {v12}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$100(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)J

    move-result-wide v10

    .line 129
    invoke-static {v12}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$000(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)D

    move-result-wide v8

    div-double/2addr v8, v15

    add-double/2addr v8, v6

    move-wide/from16 v17, v8

    move-wide v8, v6

    move-wide/from16 v6, v17

    goto :goto_0

    :cond_3
    return-wide v10
.end method


# virtual methods
.method public addSample(JJ)V
    .locals 5

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->maxSampleCount:I

    if-lt v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    .line 78
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->access$000(Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    goto :goto_0

    :cond_0
    long-to-double v0, p1

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/32 v2, 0x7a1200

    mul-long p1, p1, v2

    .line 83
    div-long/2addr p1, p3

    .line 84
    new-instance p3, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;-><init>(JD)V

    .line 85
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {p1, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    invoke-virtual {p1, p3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 87
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    add-double/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    .line 88
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->calculateBitrateEstimate()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    return-void
.end method

.method public getBandwidthEstimate()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->samples:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->sortedSamples:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    const-wide/16 v0, 0x0

    .line 100
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->weightSum:D

    const-wide/high16 v0, -0x8000000000000000L

    .line 101
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/SlidingPercentileBandwidthStatistic;->bitrateEstimate:J

    return-void
.end method
