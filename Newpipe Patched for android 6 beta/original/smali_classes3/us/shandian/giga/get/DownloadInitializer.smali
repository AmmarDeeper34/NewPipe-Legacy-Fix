.class public Lus/shandian/giga/get/DownloadInitializer;
.super Ljava/lang/Thread;
.source "DownloadInitializer.java"


# instance fields
.field private mConn:Ljava/net/HttpURLConnection;

.field private final mMission:Lus/shandian/giga/get/DownloadMission;


# direct methods
.method constructor <init>(Lus/shandian/giga/get/DownloadMission;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    iput-object p1, p0, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private dispose()V
    .locals 1

    .line 36
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 205
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 206
    iget-object v0, p0, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lus/shandian/giga/get/DownloadInitializer;->dispose()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 22

    move-object/from16 v1, p0

    .line 44
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v2, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v0, v4, v3, v2}, Lus/shandian/giga/get/DownloadMission;->resetState(ZZI)V

    :cond_0
    const/16 v2, 0xcc

    const/16 v5, 0xcc

    const/4 v6, 0x0

    .line 51
    :goto_0
    :try_start_0
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v7, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    const-wide/16 v13, 0x0

    if-nez v0, :cond_8

    iget v0, v7, Lus/shandian/giga/get/DownloadMission;->current:I

    if-nez v0, :cond_8

    const-wide v7, 0x7fffffffffffffffL

    move-wide v9, v13

    const/4 v0, 0x0

    .line 56
    :goto_1
    iget-object v11, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v12, v11, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v12, v12

    if-ge v0, v12, :cond_5

    iget-boolean v11, v11, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v11, :cond_5

    .line 57
    iget-object v15, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v11, v15, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    aget-object v16, v11, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v21}, Lus/shandian/giga/get/DownloadMission;->openConnection(Ljava/lang/String;ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v11

    iput-object v11, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 58
    iget-object v12, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v12, v4, v11}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 59
    invoke-direct {v1}, Lus/shandian/giga/get/DownloadInitializer;->dispose()V

    .line 61
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_c

    .line 62
    :cond_1
    iget-object v11, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-static {v11}, Lus/shandian/giga/util/Utility;->getTotalContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v11

    if-nez v0, :cond_2

    .line 65
    iget-object v15, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 66
    iget-object v15, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-wide v11, v15, Lus/shandian/giga/get/Mission;->length:J

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_2
    :goto_2
    cmp-long v15, v11, v13

    if-lez v15, :cond_3

    add-long/2addr v9, v11

    :cond_3
    cmp-long v15, v11, v7

    if-gez v15, :cond_4

    move-wide v7, v11

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_5
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-wide v9, v0, Lus/shandian/giga/get/DownloadMission;->nearLength:J

    .line 76
    iget-object v9, v0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    if-eqz v9, :cond_a

    iget-boolean v9, v9, Lus/shandian/giga/postprocessing/Postprocessing;->reserveSpace:Z

    if-eqz v9, :cond_a

    const-wide/16 v9, 0x1

    cmp-long v11, v7, v9

    if-gez v11, :cond_6

    .line 79
    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    const-wide/32 v7, 0x500000

    aput-wide v7, v0, v4

    goto :goto_4

    .line 82
    :cond_6
    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    const-wide/32 v9, 0x9600000

    cmp-long v11, v7, v9

    if-gez v11, :cond_7

    goto :goto_3

    :cond_7
    move-wide v7, v9

    :goto_3
    aput-wide v7, v0, v4

    goto :goto_4

    :cond_8
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v8, 0x1

    .line 87
    invoke-virtual/range {v7 .. v12}, Lus/shandian/giga/get/DownloadMission;->openConnection(ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 88
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v7, v4, v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 89
    invoke-direct {v1}, Lus/shandian/giga/get/DownloadInitializer;->dispose()V

    .line 91
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_c

    .line 93
    :cond_9
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 94
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-static {v7}, Lus/shandian/giga/util/Utility;->getTotalContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v7

    iput-wide v7, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 97
    :cond_a
    :goto_4
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-wide v7, v0, Lus/shandian/giga/get/Mission;->length:J

    const/4 v9, 0x0

    cmp-long v10, v7, v13

    if-eqz v10, :cond_17

    if-ne v5, v2, :cond_b

    goto/16 :goto_a

    :cond_b
    const-wide/16 v10, -0x1

    cmp-long v0, v7, v10

    if-nez v0, :cond_c

    .line 103
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_c

    .line 104
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    new-array v7, v4, [I

    iput-object v7, v0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 105
    iput-wide v13, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 106
    iput-boolean v3, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    goto/16 :goto_6

    .line 113
    :cond_c
    iget-object v10, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-wide v14, v10, Lus/shandian/giga/get/Mission;->length:J

    const-wide/16 v7, 0xa

    sub-long v12, v14, v7

    const/4 v11, 0x1

    invoke-virtual/range {v10 .. v15}, Lus/shandian/giga/get/DownloadMission;->openConnection(ZJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 114
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v7, v4, v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 115
    invoke-direct {v1}, Lus/shandian/giga/get/DownloadInitializer;->dispose()V

    .line 117
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_c

    .line 119
    :cond_d
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v7, v0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :try_start_1
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v8, 0xce

    if-ne v0, v8, :cond_10

    .line 122
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v8, v0, Lus/shandian/giga/get/DownloadMission;->threadCount:I

    if-le v8, v3, :cond_f

    .line 123
    iget-wide v10, v0, Lus/shandian/giga/get/Mission;->length:J

    const-wide/32 v12, 0x80000

    div-long v12, v10, v12

    long-to-int v8, v12

    const/high16 v12, 0x80000

    mul-int v12, v12, v8

    int-to-long v12, v12

    cmp-long v14, v12, v10

    if-gez v14, :cond_e

    add-int/lit8 v8, v8, 0x1

    .line 126
    :cond_e
    new-array v8, v8, [I

    iput-object v8, v0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 129
    :cond_f
    new-array v8, v4, [I

    iput-object v8, v0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 130
    iput-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    goto :goto_5

    .line 138
    :cond_10
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    new-array v8, v4, [I

    iput-object v8, v0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 139
    iput-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 145
    :goto_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_c

    .line 150
    :cond_11
    :goto_6
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object v7
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 151
    :try_start_3
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v8, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v10, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-wide v10, v8, v10

    iget-wide v12, v0, Lus/shandian/giga/get/Mission;->length:J

    add-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V

    .line 152
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v8, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-wide v10, v8, v0

    invoke-virtual {v7, v10, v11}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    :try_start_4
    invoke-virtual {v7}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 155
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_c

    .line 157
    :cond_12
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v7, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    if-nez v7, :cond_15

    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    if-eqz v0, :cond_15

    .line 158
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    const-string v7, "ETAG"

    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    const-string v8, "Last-Modified"

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    iget-object v8, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-object v10, v8, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    iget v8, v8, Lus/shandian/giga/get/DownloadMission;->current:I

    aget-object v8, v10, v8

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 163
    invoke-virtual {v8, v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->setValidateCondition(Ljava/lang/String;)V

    goto :goto_7

    .line 164
    :cond_13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 165
    invoke-virtual {v8, v7}, Lus/shandian/giga/get/MissionRecoveryInfo;->setValidateCondition(Ljava/lang/String;)V

    goto :goto_7

    .line 167
    :cond_14
    invoke-virtual {v8, v9}, Lus/shandian/giga/get/MissionRecoveryInfo;->setValidateCondition(Ljava/lang/String;)V

    .line 171
    :cond_15
    :goto_7
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iput-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->running:Z
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 200
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->start()V

    return-void

    :catchall_1
    move-exception v0

    move-object v8, v0

    if-eqz v7, :cond_16

    .line 150
    :try_start_5
    invoke-virtual {v7}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_8
    throw v8
    :try_end_6
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 145
    :goto_9
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 98
    :cond_17
    :goto_a
    invoke-virtual {v0, v2, v9}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V
    :try_end_8
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_c

    .line 176
    :goto_b
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget-boolean v7, v7, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v7, :cond_1c

    invoke-super {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_c

    .line 178
    :cond_18
    instance-of v7, v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    if-eqz v7, :cond_19

    move-object v7, v0

    check-cast v7, Lus/shandian/giga/get/DownloadMission$HttpError;

    iget v7, v7, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    const/16 v8, 0x193

    if-ne v7, v8, :cond_19

    .line 180
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadInitializer;->interrupt()V

    .line 181
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v0, v8}, Lus/shandian/giga/get/DownloadMission;->doRecover(I)V

    return-void

    .line 185
    :cond_19
    instance-of v7, v0, Ljava/io/IOException;

    if-eqz v7, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Permission denied"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 186
    iget-object v2, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void

    :cond_1a
    add-int/lit8 v7, v6, 0x1

    .line 190
    iget-object v8, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    iget v8, v8, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    if-le v6, v8, :cond_1b

    .line 191
    const-string v2, "DownloadInitializer"

    const-string v3, "initializer failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    iget-object v2, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {v2, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    return-void

    .line 196
    :cond_1b
    const-string v6, "DownloadInitializer"

    const-string v8, "initializer failed, retrying"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    goto/16 :goto_0

    :catch_1
    :cond_1c
    :goto_c
    return-void
.end method
