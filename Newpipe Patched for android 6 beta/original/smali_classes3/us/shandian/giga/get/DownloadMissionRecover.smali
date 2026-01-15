.class public Lus/shandian/giga/get/DownloadMissionRecover;
.super Ljava/lang/Thread;
.source "DownloadMissionRecover.java"


# instance fields
.field private mConn:Ljava/net/HttpURLConnection;

.field private final mErrCode:I

.field private mExtractor:Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

.field private final mMission:Lus/shandian/giga/get/DownloadMission;

.field private final mNotInitialized:Z

.field private mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;


# direct methods
.method constructor <init>(Lus/shandian/giga/get/DownloadMission;I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    iput-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 39
    iget-object v0, p1, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    if-nez v0, :cond_0

    iget p1, p1, Lus/shandian/giga/get/DownloadMission;->current:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mNotInitialized:Z

    .line 40
    iput p2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mErrCode:I

    return-void
.end method

.method private disconnect()V
    .locals 3

    const/4 v0, 0x0

    .line 305
    :try_start_0
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 307
    :try_start_1
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 307
    :try_start_2
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 308
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    :goto_0
    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 313
    throw v1

    .line 312
    :catch_0
    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private parseContentRange(Ljava/lang/String;)[J
    .locals 8

    const/4 v0, 0x3

    .line 247
    new-array v0, v0, [J

    if-nez p1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 257
    const-string v1, "bytes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    .line 261
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x2d

    .line 262
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2f

    .line 263
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 266
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v1, 0x0

    aput-wide v6, v0, v1

    .line 269
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/2addr v5, v2

    .line 272
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 273
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    const-wide/16 v3, -0x1

    .line 274
    aput-wide v3, v0, v2

    return-object v0

    .line 276
    :cond_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private recover(Ljava/lang/String;Z)V
    .locals 4

    .line 220
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 221
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string v0, "recover()  name=%s  isStale=%s  url=%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v1, "DownloadMissionRecover"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v1, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v2, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aput-object p1, v1, v2

    if-nez p1, :cond_0

    .line 227
    new-array p1, v3, [Ljava/lang/String;

    iput-object p1, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    const/16 p1, 0x3f5

    const/4 p2, 0x0

    .line 228
    invoke-virtual {v0, p1, p2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void

    .line 232
    :cond_0
    iget-boolean p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mNotInitialized:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, -0x1

    .line 235
    invoke-virtual {v0, v3, v3, p1}, Lus/shandian/giga/get/DownloadMission;->resetState(ZZI)V

    .line 238
    :cond_2
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    .line 240
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean p1, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz p1, :cond_4

    invoke-super {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 242
    :cond_3
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-boolean v3, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 243
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->start()V

    :cond_4
    :goto_0
    return-void
.end method

.method private resolve(Ljava/lang/String;)V
    .locals 9

    .line 179
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->getValidateCondition()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    const-string v0, "DownloadMissionRecover"

    const-string v1, "validation condition not defined, the resource can be stale"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->getValidateCondition()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move-object v3, p1

    goto/16 :goto_2

    .line 192
    :cond_2
    :try_start_0
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-wide v7, v2, Lus/shandian/giga/get/Mission;->length:J

    const-wide/16 v3, 0xa

    sub-long v5, v7, v3

    const/4 v4, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lus/shandian/giga/get/DownloadMission;->openConnection(Ljava/lang/String;ZJJ)Ljava/net/HttpURLConnection;

    move-result-object p1

    iput-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 193
    const-string v0, "If-Range"

    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v2}, Lus/shandian/giga/get/MissionRecoveryInfo;->getValidateCondition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    const/4 v2, -0x3

    invoke-virtual {p1, v2, v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 196
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v0, 0xc8

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0xce

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19d

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 213
    :cond_3
    new-instance v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    invoke-direct {v0, p1}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 206
    :cond_4
    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    const-string v0, "Content-Range"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lus/shandian/giga/get/DownloadMissionRecover;->parseContentRange(Ljava/lang/String;)[J

    move-result-object p1

    const/4 v0, 0x2

    .line 207
    aget-wide v4, p1, v0

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_5

    iget-object p1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-wide v6, p1, Lus/shandian/giga/get/Mission;->length:J

    cmp-long p1, v4, v6

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    .line 209
    :cond_5
    invoke-direct {p0, v3, v1}, Lus/shandian/giga/get/DownloadMissionRecover;->recover(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    return-void

    .line 202
    :cond_6
    :goto_0
    :try_start_1
    invoke-direct {p0, v3, v2}, Lus/shandian/giga/get/DownloadMissionRecover;->recover(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    return-void

    :goto_1
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    .line 216
    throw p1

    .line 184
    :goto_2
    invoke-direct {p0, v3, v1}, Lus/shandian/giga/get/DownloadMissionRecover;->recover(Ljava/lang/String;Z)V

    return-void
.end method

.method private resolveStream()V
    .locals 5

    .line 133
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->getKind()C

    move-result v0

    const/16 v1, 0x61

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    const/16 v1, 0x76

    if-ne v0, v1, :cond_2

    .line 146
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    .line 150
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 151
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->getDesired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 153
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v3

    sget-object v4, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-ne v3, v4, :cond_1

    .line 154
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 172
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown stream type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_3
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 161
    invoke-virtual {v1}, Lus/shandian/giga/get/MissionRecoveryInfo;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSubtitles(Lorg/schabi/newpipe/extractor/MediaFormat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 162
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    move-result-object v3

    .line 163
    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->getDesired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    move-result v3

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2()Z

    move-result v4

    if-ne v3, v4, :cond_4

    .line 165
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v3

    sget-object v4, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-ne v3, v4, :cond_4

    .line 166
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 135
    :cond_5
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 136
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v3

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->getDesiredBitrate()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 137
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    iget-object v4, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v4

    if-ne v3, v4, :cond_6

    .line 138
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v3

    sget-object v4, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-ne v3, v4, :cond_6

    .line 139
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_7
    :goto_1
    invoke-direct {p0, v2}, Lus/shandian/giga/get/DownloadMissionRecover;->resolve(Ljava/lang/String;)V

    return-void
.end method

.method private test()Z
    .locals 8

    .line 286
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v1, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v2, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-object v1, v1, v2

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return v7

    :cond_0
    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const/4 v2, 0x1

    .line 289
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lus/shandian/giga/get/DownloadMission;->openConnection(Ljava/lang/String;ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    .line 290
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    const/4 v2, -0x3

    invoke-virtual {v1, v2, v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 292
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 296
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_1
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    .line 297
    throw v0

    :goto_0
    return v7
.end method

.method private tryRecover()V
    .locals 4

    .line 70
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/NewPipe;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v2, v2, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    .line 74
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Extractor;->fetchPage()V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    iput-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mExtractor:Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    .line 77
    throw v0

    .line 82
    :cond_0
    :goto_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 84
    :cond_1
    iget-boolean v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mNotInitialized:Z

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v2, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v3, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aput-object v1, v2, v3

    .line 90
    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    aget-object v0, v0, v3

    iput-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 91
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->resolveStream()V

    return-void

    .line 95
    :cond_2
    const-string v0, "DownloadMissionRecover"

    const-string v1, "mission is not fully initialized, this will take a while"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    .line 98
    :try_start_1
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v2, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    iget-object v3, v1, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 99
    iget-object v1, v1, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    aget-object v1, v1, v2

    iput-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mRecovery:Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 101
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->test()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 102
    :cond_3
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    .line 113
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput v0, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    return-void

    .line 104
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->resolveStream()V

    .line 105
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_5

    .line 113
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput v0, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    return-void

    .line 108
    :cond_5
    :try_start_3
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v2, v1, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v1, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-object v1, v2, v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 98
    :cond_6
    :goto_2
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v2, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lus/shandian/giga/get/DownloadMission;->current:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    .line 113
    :cond_7
    :goto_3
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput v0, v1, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 116
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->writeThisToFile()V

    .line 118
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v1, :cond_9

    invoke-super {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    .line 120
    :cond_8
    iget-object v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-boolean v0, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 121
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->start()V

    return-void

    .line 113
    :goto_4
    iget-object v2, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput v0, v2, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 114
    throw v1

    :cond_9
    :goto_5
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 318
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 319
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->disconnect()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 45
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v1, v0, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 46
    iget v1, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mErrCode:I

    invoke-virtual {v0, v1, v2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 53
    iget-object v3, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v4, v3, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    if-ge v0, v4, :cond_3

    .line 55
    :try_start_0
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadMissionRecover;->tryRecover()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 60
    iget-object v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_2

    invoke-super {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_1
    :cond_2
    :goto_1
    return-void

    .line 66
    :cond_3
    iget v0, p0, Lus/shandian/giga/get/DownloadMissionRecover;->mErrCode:I

    invoke-virtual {v3, v0, v2}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void
.end method
