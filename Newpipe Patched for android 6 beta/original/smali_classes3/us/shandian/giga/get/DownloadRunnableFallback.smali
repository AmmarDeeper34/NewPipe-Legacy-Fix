.class public Lus/shandian/giga/get/DownloadRunnableFallback;
.super Ljava/lang/Thread;
.source "DownloadRunnableFallback.java"


# instance fields
.field private mConn:Ljava/net/HttpURLConnection;

.field private mF:Lorg/schabi/newpipe/streams/io/SharpStream;

.field private mIs:Ljava/io/InputStream;

.field private final mMission:Lus/shandian/giga/get/DownloadMission;

.field private mRetryCount:I


# direct methods
.method constructor <init>(Lus/shandian/giga/get/DownloadMission;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    .line 34
    iput-object p1, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    return-void
.end method

.method private dispose()V
    .locals 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 43
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    :goto_2
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mF:Lorg/schabi/newpipe/streams/io/SharpStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 145
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 147
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public run()V
    .locals 13

    .line 54
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-wide v1, v0, Lus/shandian/giga/get/DownloadMission;->fallbackResumeOffset:J

    .line 61
    :try_start_0
    iget-object v3, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v3, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    const-wide/16 v9, -0x1

    if-nez v0, :cond_1

    const-wide/16 v4, 0x1

    cmp-long v0, v1, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v5, v1

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v5, v9

    :goto_1
    const/4 v4, 0x0

    const-wide/16 v7, -0x1

    .line 64
    invoke-virtual/range {v3 .. v8}, Lus/shandian/giga/get/DownloadMission;->openConnection(ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    .line 66
    iget v3, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    if-nez v3, :cond_2

    cmp-long v3, v5, v9

    if-nez v3, :cond_2

    .line 68
    const-string v3, "Range"

    const-string v4, "bytes=0-"

    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 71
    :cond_2
    :goto_2
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v3, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 74
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0x1a0

    const-wide/16 v5, 0x0

    if-ne v0, v3, :cond_4

    cmp-long v0, v1, v5

    if-gtz v0, :cond_3

    goto :goto_3

    .line 75
    :cond_3
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    neg-long v7, v1

    invoke-virtual {v0, v7, v8}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    iget v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    .line 78
    new-instance v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    invoke-direct {v0, v3}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    move-wide v1, v5

    goto/16 :goto_6

    .line 82
    :cond_4
    :goto_3
    :try_start_2
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v3, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    const/4 v7, 0x0

    if-nez v3, :cond_6

    .line 83
    iget-object v3, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-static {v3}, Lus/shandian/giga/util/Utility;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v11

    cmp-long v3, v11, v9

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 85
    :cond_6
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_8

    .line 87
    :cond_7
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v3, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v4, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-wide v8, v3, v4

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    move-wide v1, v5

    .line 91
    :cond_8
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mF:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 92
    iget-object v3, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v4, v3, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v3, v3, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-wide v3, v4, v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 94
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    const/high16 v0, 0x10000

    .line 96
    new-array v3, v0, [B

    const/4 v4, 0x0

    .line 99
    :goto_5
    iget-object v5, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v5, v5, Lus/shandian/giga/get/DownloadMission;->running:Z

    const/4 v6, -0x1

    if-eqz v5, :cond_9

    iget-object v4, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    invoke-virtual {v4, v3, v7, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v6, :cond_9

    .line 100
    iget-object v5, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mF:Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v5, v3, v7, v4}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 102
    iget-object v8, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v8, v5, v6}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V

    goto :goto_5

    .line 105
    :cond_9
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v4, v6, :cond_a

    .line 137
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    return-void

    .line 139
    :cond_a
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-wide v1, v0, Lus/shandian/giga/get/DownloadMission;->fallbackResumeOffset:J

    return-void

    .line 110
    :goto_6
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->dispose()V

    .line 112
    iget-object v3, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-wide v1, v3, Lus/shandian/giga/get/DownloadMission;->fallbackResumeOffset:J

    .line 114
    iget-object v1, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v1, :cond_e

    instance-of v1, v0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v1, :cond_b

    goto :goto_7

    .line 116
    :cond_b
    instance-of v1, v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Lus/shandian/giga/get/DownloadMission$HttpError;

    iget v1, v1, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_c

    .line 118
    invoke-direct {p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->dispose()V

    .line 119
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0, v2}, Lus/shandian/giga/get/DownloadMission;->doRecover(I)V

    return-void

    .line 123
    :cond_c
    iget v1, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    iget-object v2, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v3, v2, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    if-lt v1, v3, :cond_d

    .line 124
    invoke-virtual {v2, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    return-void

    .line 132
    :cond_d
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->run()V

    :cond_e
    :goto_7
    return-void
.end method
