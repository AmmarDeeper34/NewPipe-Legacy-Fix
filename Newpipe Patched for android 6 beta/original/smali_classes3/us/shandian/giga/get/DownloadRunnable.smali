.class public Lus/shandian/giga/get/DownloadRunnable;
.super Ljava/lang/Thread;
.source "DownloadRunnable.java"


# instance fields
.field private mConn:Ljava/net/HttpURLConnection;

.field private final mId:I

.field private final mMission:Lus/shandian/giga/get/DownloadMission;


# direct methods
.method constructor <init>(Lus/shandian/giga/get/DownloadMission;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 33
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 34
    iput p2, p0, Lus/shandian/giga/get/DownloadRunnable;->mId:I

    return-void
.end method

.method private releaseBlock(Lus/shandian/giga/get/DownloadMission$Block;J)V
    .locals 5

    .line 39
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v1, p1, Lus/shandian/giga/get/DownloadMission$Block;->position:I

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    :goto_0
    invoke-virtual {v0, v1, p1}, Lus/shandian/giga/get/DownloadMission;->releaseBlock(II)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 175
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 178
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public run()V
    .locals 20

    move-object/from16 v1, p0

    .line 50
    :try_start_0
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 56
    :goto_0
    iget-object v6, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v6, v6, Lus/shandian/giga/get/DownloadMission;->running:Z

    const/4 v7, -0x1

    if-eqz v6, :cond_f

    iget-object v6, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v8, v6, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v8, v7, :cond_f

    if-nez v4, :cond_0

    .line 58
    invoke-virtual {v6}, Lus/shandian/giga/get/DownloadMission;->acquireBlock()Lus/shandian/giga/get/DownloadMission$Block;

    move-result-object v0

    :cond_0
    move-object v6, v0

    if-nez v6, :cond_1

    goto/16 :goto_9

    .line 73
    :cond_1
    iget v0, v6, Lus/shandian/giga/get/DownloadMission$Block;->position:I

    int-to-long v8, v0

    const-wide/32 v10, 0x80000

    mul-long v8, v8, v10

    const-wide/32 v10, 0x7ffff

    add-long/2addr v10, v8

    .line 76
    iget v0, v6, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    int-to-long v12, v0

    add-long v16, v8, v12

    .line 78
    iget-object v14, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-wide v8, v14, Lus/shandian/giga/get/Mission;->length:J

    cmp-long v0, v10, v8

    if-ltz v0, :cond_2

    const-wide/16 v10, 0x1

    sub-long v10, v8, v10

    :cond_2
    move-wide/from16 v18, v10

    const/4 v15, 0x0

    const/4 v8, 0x1

    .line 83
    :try_start_1
    invoke-virtual/range {v14 .. v19}, Lus/shandian/giga/get/DownloadMission;->openConnection(ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    .line 84
    iget-object v9, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v10, v1, Lus/shandian/giga/get/DownloadRunnable;->mId:I

    invoke-virtual {v9, v10, v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 87
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v9, 0x1a0

    if-ne v0, v9, :cond_4

    .line 88
    iget v0, v6, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    if-lez v0, :cond_3

    .line 90
    iget-object v9, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    neg-int v0, v0

    int-to-long v10, v0

    invoke-virtual {v9, v10, v11}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V

    .line 91
    iput v3, v6, Lus/shandian/giga/get/DownloadMission$Block;->done:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    :try_start_2
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v6

    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v3, 0x1

    goto/16 :goto_8

    :catch_0
    move-exception v0

    const/4 v4, 0x1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move v3, v4

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_5

    .line 97
    :cond_3
    :try_start_3
    new-instance v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    invoke-direct {v0, v9}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    :cond_4
    :try_start_4
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0xce

    if-eq v0, v4, :cond_5

    .line 107
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    new-instance v4, Lus/shandian/giga/get/DownloadMission$HttpError;

    iget-object v9, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-direct {v4, v9}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    invoke-virtual {v0, v4}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    sub-long v3, v18, v16

    .line 151
    invoke-direct {v1, v6, v3, v4}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Lus/shandian/giga/get/DownloadMission$Block;J)V

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    goto :goto_5

    .line 111
    :cond_5
    :try_start_5
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v4, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-wide v9, v4, v0

    add-long v9, v9, v16

    invoke-virtual {v2, v9, v10}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 113
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/high16 v0, 0x10000

    .line 114
    :try_start_6
    new-array v9, v0, [B

    :goto_2
    cmp-long v10, v16, v18

    if-gtz v10, :cond_6

    .line 119
    iget-object v10, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v10, v10, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v10, :cond_6

    invoke-virtual {v4, v9, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v10, v7, :cond_6

    .line 120
    invoke-virtual {v2, v9, v3, v10}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    int-to-long v11, v10

    add-long v16, v16, v11

    .line 122
    iget v13, v6, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    add-int/2addr v13, v10

    iput v13, v6, Lus/shandian/giga/get/DownloadMission$Block;->done:I

    .line 123
    iget-object v10, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v10, v11, v12}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v9, v0

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    .line 125
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_7
    sub-long v7, v18, v16

    .line 151
    invoke-direct {v1, v6, v7, v8}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Lus/shandian/giga/get/DownloadMission$Block;J)V

    const/4 v4, 0x0

    goto :goto_6

    :goto_3
    if-eqz v4, :cond_8

    .line 113
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 131
    :goto_5
    :try_start_a
    iget-object v9, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v9, v9, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v9, :cond_d

    instance-of v9, v0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v9, :cond_9

    goto :goto_7

    .line 133
    :cond_9
    instance-of v9, v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    if-eqz v9, :cond_b

    move-object v9, v0

    check-cast v9, Lus/shandian/giga/get/DownloadMission$HttpError;

    iget v9, v9, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    const/16 v10, 0x193

    if-ne v9, v10, :cond_b

    .line 135
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 137
    iget v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mId:I

    if-ne v0, v8, :cond_a

    .line 139
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0, v10}, Lus/shandian/giga/get/DownloadMission;->doRecover(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_a
    if-nez v4, :cond_10

    sub-long v2, v18, v16

    .line 151
    invoke-direct {v1, v6, v2, v3}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Lus/shandian/giga/get/DownloadMission$Block;J)V

    goto :goto_a

    :cond_b
    add-int/lit8 v9, v5, 0x1

    .line 144
    :try_start_b
    iget-object v10, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v11, v10, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    if-lt v5, v11, :cond_c

    .line 145
    invoke-virtual {v10, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v4, :cond_f

    goto/16 :goto_1

    :cond_c
    move v5, v9

    const/4 v4, 0x1

    :goto_6
    move-object v0, v6

    goto/16 :goto_0

    :cond_d
    :goto_7
    if-nez v4, :cond_f

    goto/16 :goto_1

    :goto_8
    if-nez v3, :cond_e

    sub-long v2, v18, v16

    .line 151
    invoke-direct {v1, v6, v2, v3}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Lus/shandian/giga/get/DownloadMission$Block;J)V

    .line 152
    :cond_e
    throw v0

    .line 155
    :cond_f
    :goto_9
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 161
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v2, v0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    if-ne v2, v7, :cond_10

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_10

    .line 165
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    :cond_10
    :goto_a
    return-void

    :catch_3
    move-exception v0

    .line 52
    iget-object v2, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v2, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    return-void
.end method
