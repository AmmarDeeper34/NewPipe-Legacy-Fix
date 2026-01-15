.class public final Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$ObjectType;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$StreamType;,
        Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$StreamingFormat;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final OBJECT_TYPE_AUDIO_ONLY:Ljava/lang/String; = "a"

.field public static final OBJECT_TYPE_INIT_SEGMENT:Ljava/lang/String; = "i"

.field public static final OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO:Ljava/lang/String; = "av"

.field public static final OBJECT_TYPE_VIDEO_ONLY:Ljava/lang/String; = "v"

.field public static final STREAMING_FORMAT_DASH:Ljava/lang/String; = "d"

.field public static final STREAMING_FORMAT_HLS:Ljava/lang/String; = "h"

.field public static final STREAMING_FORMAT_SS:Ljava/lang/String; = "s"

.field public static final STREAM_TYPE_LIVE:Ljava/lang/String; = "l"

.field public static final STREAM_TYPE_VOD:Ljava/lang/String; = "v"


# instance fields
.field private final bufferedDurationUs:J

.field private chunkDurationUs:J

.field private final cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

.field private final isLive:Z

.field private objectType:Ljava/lang/String;

.field private final streamingFormat:Ljava/lang/String;

.field private final trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;JLjava/lang/String;Z)V
    .locals 3

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 162
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    .line 163
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 164
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->bufferedDurationUs:J

    .line 165
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->streamingFormat:Ljava/lang/String;

    .line 166
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->isLive:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 167
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    return-void
.end method

.method private getIsInitSegment()Z
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getObjectType(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 64
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 66
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 68
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    :cond_1
    if-ne v1, v0, :cond_2

    .line 72
    const-string p0, "a"

    return-object p0

    :cond_2
    const/4 p0, 0x2

    if-ne v1, p0, :cond_3

    .line 74
    const-string p0, "v"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public createHttpRequestHeaders()Lcom/google/common/collect/ImmutableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    .line 198
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->getCustomData()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    .line 201
    new-instance v3, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;-><init>()V

    const-string v4, "CMCD-Object"

    .line 202
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    move-result-object v3

    .line 203
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->getIsInitSegment()Z

    move-result v4

    const-wide/16 v5, 0x3e8

    if-nez v4, :cond_3

    .line 204
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isBitrateLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setBitrateKbps(I)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 207
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isTopBitrateLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 209
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v8, 0x0

    .line 210
    :goto_0
    iget v9, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v8, v9, :cond_1

    .line 211
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    iget v9, v9, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setTopBitrateKbps(I)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isObjectDurationLoggingAllowed()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v7, v9

    if-eqz v2, :cond_3

    .line 216
    div-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setObjectDurationMs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isObjectTypeLoggingAllowed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 224
    :cond_4
    new-instance v2, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;-><init>()V

    const-string v4, "CMCD-Request"

    .line 225
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    move-result-object v2

    .line 226
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->getIsInitSegment()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isBufferLengthLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 227
    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->bufferedDurationUs:J

    div-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setBufferLengthMs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 229
    :cond_5
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isMeasuredThroughputLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 230
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getLatestBitrateEstimate()J

    move-result-wide v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v4, v7, v9

    if-eqz v4, :cond_6

    .line 231
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 232
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getLatestBitrateEstimate()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(JJ)J

    move-result-wide v4

    .line 231
    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setMeasuredThroughputInKbps(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 235
    :cond_6
    new-instance v4, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;-><init>()V

    const-string v5, "CMCD-Session"

    .line 236
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    move-result-object v4

    .line 237
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isContentIdLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 238
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    iget-object v5, v5, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->contentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setContentId(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 240
    :cond_7
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isSessionIdLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 241
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    iget-object v5, v5, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 243
    :cond_8
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isStreamingFormatLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 244
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->streamingFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setStreamingFormat(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 246
    :cond_9
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isStreamTypeLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 247
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->isLive:Z

    if-eqz v5, :cond_a

    const-string v5, "l"

    goto :goto_1

    :cond_a
    const-string v5, "v"

    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setStreamType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 250
    :cond_b
    new-instance v5, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;-><init>()V

    const-string v6, "CMCD-Status"

    .line 251
    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    move-result-object v0

    .line 252
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->isMaximumRequestThroughputLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 253
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->cmcdConfiguration:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;

    iget-object v5, v5, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration;->requestConfig:Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;

    .line 254
    invoke-interface {v5, v1}, Lcom/google/android/exoplayer2/upstream/CmcdConfiguration$RequestConfig;->getRequestedMaximumThroughputKbps(I)I

    move-result v1

    .line 253
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->setMaximumRequestedThroughputKbps(I)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 257
    :cond_c
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 258
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdObject;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 259
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdRequest;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 260
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdSession;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 261
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->build()Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory$CmcdStatus;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 262
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public setChunkDurationUs(J)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 179
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    return-object p0
.end method

.method public setObjectType(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    return-object p0
.end method
