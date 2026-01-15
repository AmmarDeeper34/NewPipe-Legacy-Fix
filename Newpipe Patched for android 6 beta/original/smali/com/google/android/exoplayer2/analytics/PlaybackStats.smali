.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStats;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;,
        Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;,
        Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

.field public static final PLAYBACK_STATE_ABANDONED:I = 0xf

.field public static final PLAYBACK_STATE_BUFFERING:I = 0x6

.field static final PLAYBACK_STATE_COUNT:I = 0x10

.field public static final PLAYBACK_STATE_ENDED:I = 0xb

.field public static final PLAYBACK_STATE_FAILED:I = 0xd

.field public static final PLAYBACK_STATE_INTERRUPTED_BY_AD:I = 0xe

.field public static final PLAYBACK_STATE_JOINING_BACKGROUND:I = 0x1

.field public static final PLAYBACK_STATE_JOINING_FOREGROUND:I = 0x2

.field public static final PLAYBACK_STATE_NOT_STARTED:I = 0x0

.field public static final PLAYBACK_STATE_PAUSED:I = 0x4

.field public static final PLAYBACK_STATE_PAUSED_BUFFERING:I = 0x7

.field public static final PLAYBACK_STATE_PLAYING:I = 0x3

.field public static final PLAYBACK_STATE_SEEKING:I = 0x5

.field public static final PLAYBACK_STATE_STOPPED:I = 0xc

.field public static final PLAYBACK_STATE_SUPPRESSED:I = 0x9

.field public static final PLAYBACK_STATE_SUPPRESSED_BUFFERING:I = 0xa


# instance fields
.field public final abandonedBeforeReadyCount:I

.field public final adPlaybackCount:I

.field public final audioFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field

.field public final backgroundJoiningCount:I

.field public final endedCount:I

.field public final fatalErrorCount:I

.field public final fatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field public final fatalErrorPlaybackCount:I

.field public final firstReportedTimeMs:J

.field public final foregroundPlaybackCount:I

.field public final initialAudioFormatBitrateCount:I

.field public final initialVideoFormatBitrateCount:I

.field public final initialVideoFormatHeightCount:I

.field public final maxRebufferTimeMs:J

.field public final mediaTimeHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field public final nonFatalErrorCount:I

.field public final nonFatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field public final playbackCount:I

.field private final playbackStateDurationsMs:[J

.field public final playbackStateHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field public final totalAudioFormatBitrateTimeProduct:J

.field public final totalAudioFormatTimeMs:J

.field public final totalAudioUnderruns:J

.field public final totalBandwidthBytes:J

.field public final totalBandwidthTimeMs:J

.field public final totalDroppedFrames:J

.field public final totalInitialAudioFormatBitrate:J

.field public final totalInitialVideoFormatBitrate:J

.field public final totalInitialVideoFormatHeight:I

.field public final totalPauseBufferCount:I

.field public final totalPauseCount:I

.field public final totalRebufferCount:I

.field public final totalSeekCount:I

.field public final totalValidJoinTimeMs:J

.field public final totalVideoFormatBitrateTimeMs:J

.field public final totalVideoFormatBitrateTimeProduct:J

.field public final totalVideoFormatHeightTimeMs:J

.field public final totalVideoFormatHeightTimeProduct:J

.field public final validJoinTimeCount:I

.field public final videoFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 236
    new-array v0, v0, [Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->merge([Lcom/google/android/exoplayer2/analytics/PlaybackStats;)Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->EMPTY:Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    return-void
.end method

.method constructor <init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;",
            ">;",
            "Ljava/util/List<",
            "[J>;JIIIIJIIIIIJI",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;JJJJJJIIIJIJJJJJIII",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndException;",
            ">;)V"
        }
    .end annotation

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    .line 590
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    .line 591
    invoke-static {p3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateHistory:Ljava/util/List;

    .line 592
    invoke-static {p4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 593
    iput-wide p5, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->firstReportedTimeMs:J

    .line 594
    iput p7, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    .line 595
    iput p8, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    .line 596
    iput p9, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->endedCount:I

    .line 597
    iput p10, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->backgroundJoiningCount:I

    .line 598
    iput-wide p11, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    .line 599
    iput p13, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->validJoinTimeCount:I

    .line 600
    iput p14, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseCount:I

    .line 601
    iput p15, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseBufferCount:I

    move/from16 p1, p16

    .line 602
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    move/from16 p1, p17

    .line 603
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    move-wide/from16 p1, p18

    .line 604
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->maxRebufferTimeMs:J

    move/from16 p1, p20

    .line 605
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->adPlaybackCount:I

    .line 606
    invoke-static/range {p21 .. p21}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->videoFormatHistory:Ljava/util/List;

    .line 607
    invoke-static/range {p22 .. p22}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->audioFormatHistory:Ljava/util/List;

    move-wide/from16 p1, p23

    .line 608
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    move-wide/from16 p1, p25

    .line 609
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    move-wide/from16 p1, p27

    .line 610
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    move-wide/from16 p1, p29

    .line 611
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    move-wide/from16 p1, p31

    .line 612
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    move-wide/from16 p1, p33

    .line 613
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    move/from16 p1, p35

    .line 614
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    move/from16 p1, p36

    .line 615
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    move/from16 p1, p37

    .line 616
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    move-wide/from16 p1, p38

    .line 617
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    move/from16 p1, p40

    .line 618
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    move-wide/from16 p1, p41

    .line 619
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    move-wide/from16 p1, p43

    .line 620
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    move-wide/from16 p1, p45

    .line 621
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthBytes:J

    move-wide/from16 p1, p47

    .line 622
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalDroppedFrames:J

    move-wide/from16 p1, p49

    .line 623
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioUnderruns:J

    move/from16 p1, p51

    .line 624
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    move/from16 p1, p52

    .line 625
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorCount:I

    move/from16 p1, p53

    .line 626
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    .line 627
    invoke-static/range {p54 .. p54}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorHistory:Ljava/util/List;

    .line 628
    invoke-static/range {p55 .. p55}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorHistory:Ljava/util/List;

    return-void
.end method

.method public static varargs merge([Lcom/google/android/exoplayer2/analytics/PlaybackStats;)Lcom/google/android/exoplayer2/analytics/PlaybackStats;
    .locals 63

    move-object/from16 v0, p0

    const/16 v1, 0x10

    .line 249
    new-array v4, v1, [J

    .line 282
    array-length v2, v0

    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v10, -0x1

    move-wide/from16 v25, v7

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move-wide/from16 v45, v35

    move-wide/from16 v47, v45

    move-wide/from16 v49, v47

    move-wide/from16 v51, v49

    move-wide/from16 v40, v10

    move-wide/from16 v43, v40

    move-wide/from16 v56, v43

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v42, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v58, -0x1

    :goto_0
    if-ge v7, v2, :cond_d

    aget-object v9, v0, v7

    .line 283
    iget v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    add-int/2addr v3, v1

    const/4 v1, 0x0

    :goto_1
    const/16 v0, 0x10

    if-ge v1, v0, :cond_0

    .line 285
    aget-wide v59, v4, v1

    iget-object v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    aget-wide v61, v0, v1

    add-long v59, v59, v61

    aput-wide v59, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    cmp-long v0, v12, v22

    if-nez v0, :cond_1

    .line 288
    iget-wide v12, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->firstReportedTimeMs:J

    goto :goto_2

    .line 289
    :cond_1
    iget-wide v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->firstReportedTimeMs:J

    cmp-long v59, v0, v22

    if-eqz v59, :cond_2

    .line 290
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 292
    :cond_2
    :goto_2
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    add-int/2addr v8, v0

    .line 293
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    add-int/2addr v10, v0

    .line 294
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->endedCount:I

    add-int/2addr v11, v0

    .line 295
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->backgroundJoiningCount:I

    add-int/2addr v14, v0

    cmp-long v0, v15, v22

    if-nez v0, :cond_3

    .line 297
    iget-wide v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    move-wide v15, v0

    goto :goto_3

    .line 298
    :cond_3
    iget-wide v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    cmp-long v59, v0, v22

    if-eqz v59, :cond_4

    add-long/2addr v15, v0

    .line 301
    :cond_4
    :goto_3
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->validJoinTimeCount:I

    add-int v17, v17, v0

    .line 302
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseCount:I

    add-int v18, v18, v0

    .line 303
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseBufferCount:I

    add-int v19, v19, v0

    .line 304
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    add-int v20, v20, v0

    .line 305
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    add-int v21, v21, v0

    cmp-long v0, v5, v22

    if-nez v0, :cond_5

    .line 307
    iget-wide v5, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->maxRebufferTimeMs:J

    goto :goto_4

    .line 308
    :cond_5
    iget-wide v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->maxRebufferTimeMs:J

    cmp-long v59, v0, v22

    if-eqz v59, :cond_6

    .line 309
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 311
    :cond_6
    :goto_4
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->adPlaybackCount:I

    add-int v24, v24, v0

    .line 312
    iget-wide v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    add-long v25, v25, v0

    .line 313
    iget-wide v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    add-long v27, v27, v0

    .line 314
    iget-wide v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    add-long v29, v29, v0

    .line 315
    iget-wide v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    add-long v31, v31, v0

    .line 316
    iget-wide v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    add-long v33, v33, v0

    .line 317
    iget-wide v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    add-long v35, v35, v0

    .line 318
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    add-int v37, v37, v0

    .line 319
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    add-int v38, v38, v0

    move/from16 v0, v58

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 321
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    move/from16 v58, v0

    goto :goto_5

    :cond_7
    move/from16 v58, v0

    .line 322
    iget v0, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    if-eq v0, v1, :cond_8

    add-int v58, v58, v0

    :cond_8
    :goto_5
    cmp-long v0, v40, v56

    if-nez v0, :cond_9

    move v0, v2

    .line 326
    iget-wide v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    move-wide/from16 v40, v1

    goto :goto_6

    :cond_9
    move v0, v2

    .line 327
    iget-wide v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    cmp-long v59, v1, v56

    if-eqz v59, :cond_a

    add-long v40, v40, v1

    .line 330
    :cond_a
    :goto_6
    iget v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    add-int v42, v42, v1

    cmp-long v1, v43, v56

    if-nez v1, :cond_b

    .line 332
    iget-wide v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    move-wide/from16 v43, v1

    goto :goto_7

    .line 333
    :cond_b
    iget-wide v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    cmp-long v59, v1, v56

    if-eqz v59, :cond_c

    add-long v43, v43, v1

    .line 336
    :cond_c
    :goto_7
    iget-wide v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    add-long v45, v45, v1

    .line 337
    iget-wide v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthBytes:J

    add-long v47, v47, v1

    .line 338
    iget-wide v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalDroppedFrames:J

    add-long v49, v49, v1

    .line 339
    iget-wide v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioUnderruns:J

    add-long v51, v51, v1

    .line 340
    iget v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    add-int v53, v53, v1

    .line 341
    iget v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorCount:I

    add-int v54, v54, v1

    .line 342
    iget v1, v9, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    add-int v55, v55, v1

    add-int/lit8 v7, v7, 0x1

    move v2, v0

    const/16 v1, 0x10

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 344
    :cond_d
    new-instance v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats;

    move v9, v8

    move-wide v7, v12

    move v12, v14

    move-wide v13, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move-wide/from16 v20, v5

    .line 347
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v6, v5

    move-object/from16 v23, v5

    move/from16 v22, v24

    move-object/from16 v24, v5

    move-object/from16 v56, v5

    move-object/from16 v57, v5

    move/from16 v39, v58

    .line 384
    invoke-direct/range {v2 .. v57}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;-><init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public getAbandonedBeforeReadyRatio()F
    .locals 3

    .line 860
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getAudioUnderrunRate()F
    .locals 5

    .line 1055
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1056
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioUnderruns:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method public getDroppedFramesRate()F
    .locals 5

    .line 1046
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1047
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalDroppedFrames:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method public getEndedRatio()F
    .locals 2

    .line 872
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->endedCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public getFatalErrorRate()F
    .locals 5

    .line 1074
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1075
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorCount:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method public getFatalErrorRatio()F
    .locals 2

    .line 1064
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1066
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public getJoinTimeRatio()F
    .locals 5

    .line 927
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalJoinTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method public getMeanAudioFormatBitrate()I
    .locals 5

    .line 1026
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1028
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public getMeanBandwidth()I
    .locals 6

    .line 1036
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1038
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalBandwidthBytes:J

    const-wide/16 v4, 0x1f40

    mul-long v2, v2, v4

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public getMeanElapsedTimeMs()J
    .locals 4

    .line 852
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalElapsedTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMeanInitialAudioFormatBitrate()I
    .locals 5

    .line 993
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 995
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method public getMeanInitialVideoFormatBitrate()I
    .locals 5

    .line 983
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 985
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method public getMeanInitialVideoFormatHeight()I
    .locals 2

    .line 973
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 975
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    div-int/2addr v1, v0

    return v1
.end method

.method public getMeanJoinTimeMs()J
    .locals 5

    .line 700
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->validJoinTimeCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public getMeanNonFatalErrorCount()F
    .locals 2

    .line 1091
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public getMeanPauseBufferCount()F
    .locals 2

    .line 888
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 890
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseBufferCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public getMeanPauseCount()F
    .locals 2

    .line 880
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalPauseCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public getMeanPausedTimeMs()J
    .locals 4

    .line 738
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPausedTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMeanPlayAndWaitTimeMs()J
    .locals 4

    .line 833
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMeanPlayTimeMs()J
    .locals 4

    .line 722
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMeanRebufferCount()F
    .locals 2

    .line 907
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public getMeanRebufferTimeMs()J
    .locals 4

    .line 757
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalRebufferTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMeanSeekCount()F
    .locals 2

    .line 899
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public getMeanSeekTimeMs()J
    .locals 4

    .line 787
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMeanSingleRebufferTimeMs()J
    .locals 4

    .line 767
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x6

    .line 769
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    const/4 v2, 0x7

    .line 770
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMeanSingleSeekTimeMs()J
    .locals 4

    .line 797
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalSeekCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMeanTimeBetweenFatalErrors()F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1083
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getFatalErrorRate()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getMeanTimeBetweenNonFatalErrors()F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1108
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getNonFatalErrorRate()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getMeanTimeBetweenRebuffers()F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 965
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getRebufferRate()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getMeanVideoFormatBitrate()I
    .locals 5

    .line 1015
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1017
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public getMeanVideoFormatHeight()I
    .locals 5

    .line 1004
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1006
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public getMeanWaitTimeMs()J
    .locals 4

    .line 818
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMediaTimeMsAtRealtimeMs(J)J
    .locals 11

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 672
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 673
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    aget-wide v3, v2, v0

    cmp-long v2, v3, p1

    if-gtz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 677
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    aget-wide v0, p1, v2

    return-wide v0

    .line 679
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 680
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    aget-wide v0, p1, v2

    return-wide v0

    .line 682
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v5, v3, v0

    .line 683
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v7, v3, v2

    .line 684
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v9, v3, v0

    .line 685
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v1, v0, v2

    sub-long/2addr v9, v5

    const-wide/16 v3, 0x0

    cmp-long v0, v9, v3

    if-nez v0, :cond_4

    return-wide v7

    :cond_4
    sub-long/2addr p1, v5

    long-to-float p1, p1

    long-to-float p2, v9

    div-float/2addr p1, p2

    sub-long/2addr v1, v7

    long-to-float p2, v1

    mul-float p2, p2, p1

    float-to-long p1, p2

    add-long/2addr v7, p1

    return-wide v7
.end method

.method public getNonFatalErrorRate()F
    .locals 5

    .line 1099
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1100
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->nonFatalErrorCount:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method public getPlaybackStateAtTime(J)I
    .locals 6

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;

    .line 651
    iget-object v3, v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_0

    goto :goto_1

    .line 654
    :cond_0
    iget v1, v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndPlaybackState;->playbackState:I

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public getPlaybackStateDurationMs(I)J
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getRebufferRate()F
    .locals 5

    .line 956
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 957
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method public getRebufferTimeRatio()F
    .locals 5

    .line 937
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 938
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalRebufferTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method public getSeekTimeRatio()F
    .locals 5

    .line 947
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 948
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method public getTotalElapsedTimeMs()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 842
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    aget-wide v4, v3, v2

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getTotalJoinTimeMs()J
    .locals 2

    const/4 v0, 0x2

    .line 709
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalPausedTimeMs()J
    .locals 4

    const/4 v0, 0x4

    .line 729
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    const/4 v2, 0x7

    .line 730
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalPlayAndWaitTimeMs()J
    .locals 4

    .line 825
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalPlayTimeMs()J
    .locals 2

    const/4 v0, 0x3

    .line 714
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRebufferTimeMs()J
    .locals 2

    const/4 v0, 0x6

    .line 748
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSeekTimeMs()J
    .locals 2

    const/4 v0, 0x5

    .line 779
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalWaitTimeMs()J
    .locals 4

    const/4 v0, 0x2

    .line 806
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    const/4 v2, 0x6

    .line 807
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 v2, 0x5

    .line 808
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getWaitTimeRatio()F
    .locals 5

    .line 917
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 918
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method
