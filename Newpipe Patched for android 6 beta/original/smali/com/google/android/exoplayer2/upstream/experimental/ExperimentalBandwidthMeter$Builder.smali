.class public final Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;
.super Ljava/lang/Object;
.source "ExperimentalBandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

.field private final context:Landroid/content/Context;

.field private initialBitrateEstimates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private resetOnNetworkTypeChange:Z

.field private timeToFirstByteEstimator:Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->context:Landroid/content/Context;

    .line 139
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    .line 140
    new-instance p1, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;

    const/16 v0, 0x14

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/experimental/PercentileTimeToFirstByteEstimator;-><init>(IF)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->timeToFirstByteEstimator:Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;

    .line 144
    new-instance p1, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->build()Lcom/google/android/exoplayer2/upstream/experimental/SplitParallelSampleBandwidthEstimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    return-void
.end method

.method private static getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->access$100(Ljava/lang/String;)[I

    move-result-object p0

    .line 248
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/32 v3, 0xf4240

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;

    aget v5, p0, v1

    .line 252
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 250
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:Lcom/google/common/collect/ImmutableList;

    const/4 v7, 0x1

    aget v7, p0, v7

    .line 255
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 253
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x4

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:Lcom/google/common/collect/ImmutableList;

    aget v2, p0, v2

    .line 258
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 256
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 260
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:Lcom/google/common/collect/ImmutableList;

    aget v3, p0, v3

    .line 261
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 259
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xa

    .line 263
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v6, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA:Lcom/google/common/collect/ImmutableList;

    aget v5, p0, v5

    .line 264
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 262
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x9

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA:Lcom/google/common/collect/ImmutableList;

    aget v2, p0, v2

    .line 267
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 265
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    .line 270
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget p0, p0, v1

    .line 271
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 269
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;
    .locals 7

    .line 238
    new-instance v0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->timeToFirstByteEstimator:Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;ZLcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$1;)V

    return-object v0
.end method

.method public setBandwidthEstimator(Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;)Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->bandwidthEstimator:Lcom/google/android/exoplayer2/upstream/experimental/BandwidthEstimator;

    return-object p0
.end method

.method public setInitialBitrateEstimate(IJ)Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setInitialBitrateEstimate(J)Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->setInitialBitrateEstimate(IJ)Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setInitialBitrateEstimate(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 0

    .line 189
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    return-object p0
.end method

.method public setResetOnNetworkTypeChange(Z)Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    return-object p0
.end method

.method public setTimeToFirstByteEstimator(Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;)Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/experimental/ExperimentalBandwidthMeter$Builder;->timeToFirstByteEstimator:Lcom/google/android/exoplayer2/upstream/TimeToFirstByteEstimator;

    return-object p0
.end method
