.class public abstract Lus/shandian/giga/postprocessing/Postprocessing;
.super Ljava/lang/Object;
.source "Postprocessing.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private args:[Ljava/lang/String;

.field private transient mission:Lus/shandian/giga/get/DownloadMission;

.field private final name:Ljava/lang/String;

.field public reserveSpace:Z

.field protected streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field private transient tempFile:Ljava/io/File;

.field public worksOnSameFile:Z


# direct methods
.method public static synthetic $r8$lambda$55Zo1yewVaYjy1UlNow5Jh9oLNI(Lus/shandian/giga/postprocessing/Postprocessing;Ljava/lang/Exception;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/postprocessing/Postprocessing;->lambda$run$3(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XZiJnaWrXX2_s-BT9K_hMHUVclU(Lus/shandian/giga/postprocessing/Postprocessing;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lus/shandian/giga/postprocessing/Postprocessing;->lambda$run$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$XoRSF29ha-EEeLUxJzX8A0KUWLw(Lus/shandian/giga/postprocessing/Postprocessing;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lus/shandian/giga/postprocessing/Postprocessing;->lambda$run$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$onH5GcSy7xxGAfAoV5Lc04wMcqc([Lus/shandian/giga/io/ChunkFileInputStream;)J
    .locals 8

    .line 141
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 146
    invoke-virtual {v2}, Lus/shandian/giga/io/ChunkFileInputStream;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lus/shandian/giga/io/ChunkFileInputStream;->available()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    invoke-virtual {v2}, Lus/shandian/giga/io/ChunkFileInputStream;->getFilePointer()J

    move-result-wide v0

    sub-long/2addr v0, v5

    return-wide v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method constructor <init>(ZZLjava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean p1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->reserveSpace:Z

    .line 90
    iput-boolean p2, p0, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    .line 91
    iput-object p3, p0, Lus/shandian/giga/postprocessing/Postprocessing;->name:Ljava/lang/String;

    return-void
.end method

.method public static getAlgorithm(Ljava/lang/String;[Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lus/shandian/giga/postprocessing/Postprocessing;
    .locals 2

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "ttml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "mp4D-mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "mp4D-m4a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "webm-ogg-d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 57
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unimplemented post-processing algorithm: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :pswitch_0
    new-instance p0, Lus/shandian/giga/postprocessing/WebMMuxer;

    invoke-direct {p0}, Lus/shandian/giga/postprocessing/WebMMuxer;-><init>()V

    goto :goto_1

    .line 40
    :pswitch_1
    new-instance p0, Lus/shandian/giga/postprocessing/TtmlConverter;

    invoke-direct {p0}, Lus/shandian/giga/postprocessing/TtmlConverter;-><init>()V

    goto :goto_1

    .line 46
    :pswitch_2
    new-instance p0, Lus/shandian/giga/postprocessing/Mp4FromDashMuxer;

    invoke-direct {p0}, Lus/shandian/giga/postprocessing/Mp4FromDashMuxer;-><init>()V

    goto :goto_1

    .line 49
    :pswitch_3
    new-instance p0, Lus/shandian/giga/postprocessing/M4aNoDash;

    invoke-direct {p0}, Lus/shandian/giga/postprocessing/M4aNoDash;-><init>()V

    goto :goto_1

    .line 52
    :pswitch_4
    new-instance p0, Lus/shandian/giga/postprocessing/OggFromWebmDemuxer;

    invoke-direct {p0}, Lus/shandian/giga/postprocessing/OggFromWebmDemuxer;-><init>()V

    .line 60
    :goto_1
    iput-object p1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lus/shandian/giga/postprocessing/Postprocessing;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x558b978e -> :sswitch_4
        -0x43d5a580 -> :sswitch_3
        -0x43d59e69 -> :sswitch_2
        0x367c1f -> :sswitch_1
        0x379f99 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$run$0(J)V
    .locals 4

    .line 123
    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v1, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    sub-long/2addr p1, v2

    .line 124
    iget-wide v0, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iput-wide p1, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    :cond_0
    return-void
.end method

.method private synthetic lambda$run$2(J)V
    .locals 1

    .line 158
    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iput-wide p1, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    return-void
.end method

.method private synthetic lambda$run$3(Ljava/lang/Exception;)Z
    .locals 3

    .line 161
    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    const/4 v1, 0x3

    iput v1, v0, Lus/shandian/giga/get/DownloadMission;->psState:I

    .line 162
    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    const/16 v2, 0x3f1

    invoke-virtual {v0, v2, p1}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    .line 165
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    :try_start_1
    iget-object p1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget p1, p1, Lus/shandian/giga/get/DownloadMission;->psState:I

    if-ne p1, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 168
    :cond_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "got InterruptedException"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_2
    iget-object p1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget p1, p1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    :goto_3
    return p1
.end method


# virtual methods
.method public cleanupTemporalDir()V
    .locals 1

    .line 100
    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method getArgumentAt(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 237
    iget-object v0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method varargs abstract process(Lorg/schabi/newpipe/streams/io/SharpStream;[Lorg/schabi/newpipe/streams/io/SharpStream;)I
.end method

.method public run(Lus/shandian/giga/get/DownloadMission;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 112
    iput-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    const-wide/16 v2, 0x0

    .line 117
    iput-wide v2, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    .line 119
    iget-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->length()J

    move-result-wide v2

    iget-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v4, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    sub-long/2addr v2, v6

    .line 120
    iget-wide v6, v0, Lus/shandian/giga/get/DownloadMission;->nearLength:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 122
    new-instance v12, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/postprocessing/Postprocessing;)V

    .line 127
    iget-boolean v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-wide/16 v13, -0x1

    if-eqz v0, :cond_a

    .line 128
    iget-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v4, v0

    new-array v15, v4, [Lus/shandian/giga/io/ChunkFileInputStream;

    const/4 v0, 0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 131
    :try_start_0
    iget-object v7, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v7, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v7}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object v7

    if-ge v0, v4, :cond_0

    .line 132
    iget-object v8, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v8, v8, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    aget-wide v9, v8, v0

    :goto_1
    move v8, v6

    move-wide v10, v9

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v7}, Lorg/schabi/newpipe/streams/io/SharpStream;->length()J

    move-result-wide v9

    goto :goto_1

    .line 134
    :goto_2
    new-instance v6, Lus/shandian/giga/io/ChunkFileInputStream;

    iget-object v9, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v9, v9, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    aget-wide v16, v9, v8

    move-wide/from16 v18, v16

    move/from16 v16, v8

    move-wide/from16 v8, v18

    invoke-direct/range {v6 .. v12}, Lus/shandian/giga/io/ChunkFileInputStream;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;JJLus/shandian/giga/io/ProgressReport;)V

    aput-object v6, v15, v16

    add-int/lit8 v6, v16, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v1, v15}, Lus/shandian/giga/postprocessing/Postprocessing;->test([Lorg/schabi/newpipe/streams/io/SharpStream;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_2

    .line 138
    aget-object v6, v15, v0

    invoke-virtual {v6}, Lorg/schabi/newpipe/streams/io/SharpStream;->rewind()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 140
    :cond_2
    new-instance v0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda1;

    invoke-direct {v0, v15}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda1;-><init>([Lus/shandian/giga/io/ChunkFileInputStream;)V

    .line 156
    new-instance v6, Lus/shandian/giga/io/CircularFileWriter;

    iget-object v7, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v7, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 157
    invoke-virtual {v7}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object v7

    iget-object v8, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    invoke-direct {v6, v7, v8, v0}, Lus/shandian/giga/io/CircularFileWriter;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;Ljava/io/File;Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    new-instance v0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda2;-><init>(Lus/shandian/giga/postprocessing/Postprocessing;)V

    iput-object v0, v6, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/io/ProgressReport;

    .line 160
    new-instance v0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;-><init>(Lus/shandian/giga/postprocessing/Postprocessing;)V

    iput-object v0, v6, Lus/shandian/giga/io/CircularFileWriter;->onWriteError:Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;

    .line 177
    invoke-virtual {v1, v6, v15}, Lus/shandian/giga/postprocessing/Postprocessing;->process(Lorg/schabi/newpipe/streams/io/SharpStream;[Lorg/schabi/newpipe/streams/io/SharpStream;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 180
    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter;->finalizeFile()J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_5

    :cond_3
    move-wide v7, v13

    .line 181
    :goto_4
    :try_start_2
    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 156
    :goto_5
    :try_start_3
    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    move-wide v7, v13

    const/4 v0, -0x1

    :goto_7
    if-ge v5, v4, :cond_6

    .line 186
    aget-object v6, v15, v5

    if-eqz v6, :cond_5

    .line 187
    invoke-virtual {v6}, Lorg/schabi/newpipe/streams/io/SharpStream;->isClosed()Z

    move-result v9

    if-nez v9, :cond_5

    .line 188
    invoke-virtual {v6}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 191
    :cond_6
    iget-object v4, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    if-eqz v4, :cond_c

    .line 193
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 194
    iput-object v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    goto :goto_a

    :goto_8
    if-ge v5, v4, :cond_8

    .line 186
    aget-object v3, v15, v5

    if-eqz v3, :cond_7

    .line 187
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/SharpStream;->isClosed()Z

    move-result v6

    if-nez v6, :cond_7

    .line 188
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 191
    :cond_8
    iget-object v3, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    if-eqz v3, :cond_9

    .line 193
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 194
    iput-object v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    .line 196
    :cond_9
    throw v0

    .line 198
    :cond_a
    new-array v0, v5, [Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v1, v0}, Lus/shandian/giga/postprocessing/Postprocessing;->test([Lorg/schabi/newpipe/streams/io/SharpStream;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-array v0, v5, [Lorg/schabi/newpipe/streams/io/SharpStream;

    invoke-virtual {v1, v2, v0}, Lus/shandian/giga/postprocessing/Postprocessing;->process(Lorg/schabi/newpipe/streams/io/SharpStream;[Lorg/schabi/newpipe/streams/io/SharpStream;)I

    move-result v0

    goto :goto_9

    :cond_b
    const/4 v0, -0x1

    :goto_9
    move-wide v7, v13

    :cond_c
    :goto_a
    if-ne v0, v3, :cond_d

    cmp-long v4, v7, v13

    if-eqz v4, :cond_e

    .line 203
    iget-object v4, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iput-wide v7, v4, Lus/shandian/giga/get/Mission;->length:J

    goto :goto_b

    .line 206
    :cond_d
    iget-object v4, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    const/16 v5, 0x3ef

    iput v5, v4, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 207
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "post-processing algorithm returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    :cond_e
    :goto_b
    if-eq v0, v3, :cond_f

    .line 210
    iget-boolean v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->delete()Z

    .line 212
    :cond_f
    iput-object v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    return-void
.end method

.method public setTemporalDir(Ljava/io/File;)V
    .locals 4

    .line 95
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    .line 96
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".tmp"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    return-void
.end method

.method varargs test([Lorg/schabi/newpipe/streams/io/SharpStream;)Z
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    const-string v1, "{ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 252
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 253
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 256
    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 259
    :cond_1
    const-string v1, "] }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
