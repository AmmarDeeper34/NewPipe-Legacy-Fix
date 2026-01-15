.class public final Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;
.super Ljava/lang/Object;
.source "PercentileTimeToFirstByteEstimator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_SAMPLES_COUNT:I = 0xa

.field public static final DEFAULT_PERCENTILE:F = 0.5f

.field private static final MAX_DATA_SPECS:I = 0xa


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final initializedDataSpecs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isEmpty:Z

.field private final percentile:F

.field private final slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/high16 v1, 0x3f000000    # 0.5f

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 73
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;-><init>(IFLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method constructor <init>(IFLcom/google/android/exoplayer2/util/Clock;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 87
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->percentile:F

    .line 88
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 89
    new-instance p2, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;

    const/16 p3, 0xa

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator$FixedSizeLinkedHashMap;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    .line 90
    new-instance p2, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    .line 91
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    return-void
.end method


# virtual methods
.method public getTimeToFirstByteEstimateUs()J
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->percentile:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->getPercentile(F)F

    move-result v0

    float-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTransferStart(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 120
    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float p1, v1

    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->addSample(IF)V

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    return-void
.end method

.method public reset()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->slidingPercentile:Lcom/google/android/exoplayer2/upstream/SlidingPercentile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/SlidingPercentile;->reset()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;->isEmpty:Z

    return-void
.end method
