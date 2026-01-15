.class public final Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;
.super Ljava/lang/Object;
.source "ExponentialWeightedAverageTimeToFirstByteEstimator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_SMOOTHING_FACTOR:D = 0.85

.field private static final MAX_DATA_SPECS:I = 0xa


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private estimateUs:J

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

.field private final smoothingFactor:D


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide v0, 0x3feb333333333333L    # 0.85

    .line 53
    sget-object v2, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;-><init>(DLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 62
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;-><init>(DLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method constructor <init>(DLcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->smoothingFactor:D

    .line 75
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 76
    new-instance p1, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator$FixedSizeLinkedHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    return-void
.end method


# virtual methods
.method public getTimeToFirstByteEstimateUs()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    return-wide v0
.end method

.method public onTransferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

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
    .locals 8

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->initializedDataSpecs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 105
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 106
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    return-void

    .line 108
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->smoothingFactor:D

    long-to-double v2, v2

    mul-double v2, v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v4

    long-to-double v0, v0

    mul-double v6, v6, v0

    add-double/2addr v2, v6

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 87
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExponentialWeightedAverageTimeToFirstByteEstimator;->estimateUs:J

    return-void
.end method
