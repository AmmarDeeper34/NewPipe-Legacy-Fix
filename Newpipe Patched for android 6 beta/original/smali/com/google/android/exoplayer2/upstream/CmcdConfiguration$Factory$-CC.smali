.class public abstract synthetic Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory$-CC;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;->DEFAULT:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
    .locals 3

    .line 130
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 131
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    const-string p0, ""

    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory$1;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory$1;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;)V

    return-object v0
.end method
