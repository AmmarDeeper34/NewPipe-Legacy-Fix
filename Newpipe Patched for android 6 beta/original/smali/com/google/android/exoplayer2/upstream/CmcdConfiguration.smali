.class public final Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;,
        Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$Factory;,
        Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$CmcdKey;,
        Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$HeaderKey;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final KEY_BITRATE:Ljava/lang/String; = "br"

.field public static final KEY_BUFFER_LENGTH:Ljava/lang/String; = "bl"

.field public static final KEY_CMCD_OBJECT:Ljava/lang/String; = "CMCD-Object"

.field public static final KEY_CMCD_REQUEST:Ljava/lang/String; = "CMCD-Request"

.field public static final KEY_CMCD_SESSION:Ljava/lang/String; = "CMCD-Session"

.field public static final KEY_CMCD_STATUS:Ljava/lang/String; = "CMCD-Status"

.field public static final KEY_CONTENT_ID:Ljava/lang/String; = "cid"

.field public static final KEY_MAXIMUM_REQUESTED_BITRATE:Ljava/lang/String; = "rtp"

.field public static final KEY_MEASURED_THROUGHPUT:Ljava/lang/String; = "mtp"

.field public static final KEY_OBJECT_DURATION:Ljava/lang/String; = "d"

.field public static final KEY_OBJECT_TYPE:Ljava/lang/String; = "ot"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "sid"

.field public static final KEY_STREAMING_FORMAT:Ljava/lang/String; = "sf"

.field public static final KEY_STREAM_TYPE:Ljava/lang/String; = "st"

.field public static final KEY_TOP_BITRATE:Ljava/lang/String; = "tb"

.field public static final KEY_VERSION:Ljava/lang/String; = "v"

.field public static final MAX_ID_LENGTH:I = 0x40


# instance fields
.field public final contentId:Ljava/lang/String;

.field public final requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

.field public final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;)V
    .locals 4

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    if-eqz p2, :cond_3

    .line 214
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 215
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->sessionId:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->contentId:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    return-void
.end method


# virtual methods
.method public isBitrateLoggingAllowed()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "br"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBufferLengthLoggingAllowed()Z
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "bl"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentIdLoggingAllowed()Z
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "cid"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMaximumRequestThroughputLoggingAllowed()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "rtp"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMeasuredThroughputLoggingAllowed()Z
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "mtp"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isObjectDurationLoggingAllowed()Z
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "d"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isObjectTypeLoggingAllowed()Z
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "ot"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSessionIdLoggingAllowed()Z
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "sid"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStreamTypeLoggingAllowed()Z
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "st"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStreamingFormatLoggingAllowed()Z
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "sf"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTopBitrateLoggingAllowed()Z
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    const-string v1, "tb"

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->isKeyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
