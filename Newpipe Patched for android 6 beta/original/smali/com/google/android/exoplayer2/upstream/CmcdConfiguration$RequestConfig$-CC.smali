.class public abstract synthetic Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig$-CC;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# direct methods
.method public static $default$getCustomData(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 178
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public static $default$getRequestedMaximumThroughputKbps(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;I)I
    .locals 0

    .line 189
    const p0, -0x7fffffff

    return p0
.end method

.method public static $default$isKeyAllowed(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;Ljava/lang/String;)Z
    .locals 0

    .line 153
    const/4 p0, 0x1

    return p0
.end method
