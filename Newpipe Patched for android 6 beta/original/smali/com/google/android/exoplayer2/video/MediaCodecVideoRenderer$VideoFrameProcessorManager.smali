.class final Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoFrameProcessorManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;
    }
.end annotation


# static fields
.field private static final EARLY_THRESHOLD_US:J = 0xc350L


# instance fields
.field private canEnableFrameProcessing:Z

.field private currentFrameFormat:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private currentSurfaceAndSize:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Lcom/google/android/exoplayer2/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

.field private handler:Landroid/os/Handler;

.field private initialStreamOffsetUs:J

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private lastCodecBufferPresentationTimestampUs:J

.field private final pendingFrameFormats:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/Format;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingOutputSizeChange:Z

.field private pendingOutputSizeChangeNotificationTimeUs:J

.field private processedFrameSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field private final processedFramesTimestampsUs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private processedLastFrame:Z

.field private registeredLastFrame:Z

.field private releasedLastFrame:Z

.field private final renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

.field private videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/util/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

.field private videoFrameProcessorMaxPendingFrameCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)V
    .locals 1

    .line 1919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1920
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 1921
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 1922
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    .line 1923
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    const/4 p1, -0x1

    .line 1924
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    const/4 p1, 0x1

    .line 1925
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1926
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->lastCodecBufferPresentationTimestampUs:J

    .line 1927
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFrameSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1928
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J

    .line 1929
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .locals 0

    .line 1868
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 1868
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->inputFormat:Lcom/google/android/exoplayer2/Format;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Lcom/google/android/exoplayer2/video/VideoSize;)Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 0

    .line 1868
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFrameSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Z
    .locals 0

    .line 1868
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChange:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Z)Z
    .locals 0

    .line 1868
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChange:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Z
    .locals 0

    .line 1868
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)J
    .locals 2

    .line 1868
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->lastCodecBufferPresentationTimestampUs:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;)Ljava/util/ArrayDeque;
    .locals 0

    .line 1868
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Z)Z
    .locals 0

    .line 1868
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;J)J
    .locals 0

    .line 1868
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J

    return-wide p1
.end method

.method private releaseProcessedFrameInternal(JZ)V
    .locals 5

    .line 2311
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->renderOutputFrame(J)V

    .line 2313
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 2314
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1902(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;J)J

    const-wide/16 v0, -0x2

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 2316
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 2319
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public amendMediaFormatKeys(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 2

    .line 2173
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 2174
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    .line 2175
    const-string v0, "allow-frame-drop"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-object p1
.end method

.method public clearOutputSurfaceInfo()V
    .locals 2

    .line 2145
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->setOutputSurfaceInfo(Lcom/google/android/exoplayer2/util/SurfaceInfo;)V

    .line 2146
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    return-void
.end method

.method public flush()V
    .locals 2

    .line 1966
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->flush()V

    .line 1968
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 1969
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1971
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1972
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    .line 1973
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z

    .line 1974
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    :cond_0
    return-void
.end method

.method public getCorrectedFramePresentationTimeUs(JJ)J
    .locals 5

    .line 2102
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    add-long/2addr p1, p3

    .line 2103
    iget-wide p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    sub-long/2addr p1, p3

    return-wide p1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 2114
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1944
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 1949
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/util/Size;

    sget-object v1, Lcom/google/android/exoplayer2/util/Size;->UNKNOWN:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public maybeEnable(Lcom/google/android/exoplayer2/Format;J)Z
    .locals 11

    .line 1991
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1992
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1995
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    .line 1996
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    return v2

    .line 2001
    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    .line 2003
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 2004
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->experimentalGetVideoFrameProcessorColorConfiguration(Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;

    move-result-object v0

    .line 2007
    :try_start_0
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$000()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    if-eqz v3, :cond_2

    .line 2009
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    int-to-float v3, v3

    .line 2011
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->createRotationEffect(F)Lcom/google/android/exoplayer2/util/Effect;

    move-result-object v3

    .line 2009
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 2015
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->getFrameProcessorFactory()Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Factory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 2017
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2018
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lcom/google/android/exoplayer2/util/DebugViewProvider;->NONE:Lcom/google/android/exoplayer2/util/DebugViewProvider;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    .line 2023
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    new-instance v10, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;

    invoke-direct {v10, p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Lcom/google/android/exoplayer2/Format;)V

    const/4 v8, 0x0

    .line 2016
    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Factory;->create(Landroid/content/Context;Ljava/util/List;Lcom/google/android/exoplayer2/util/DebugViewProvider;Lcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/video/ColorInfo;ZLjava/util/concurrent/Executor;Lcom/google/android/exoplayer2/util/VideoFrameProcessor$Listener;)Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    .line 2074
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->registerInputStream(I)V

    .line 2075
    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2081
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz p2, :cond_3

    .line 2082
    iget-object p3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/exoplayer2/util/Size;

    .line 2083
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    new-instance v2, Lcom/google/android/exoplayer2/util/SurfaceInfo;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/view/Surface;

    .line 2086
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/Size;->getWidth()I

    move-result v3

    .line 2087
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/Size;->getHeight()I

    move-result p3

    invoke-direct {v2, p2, v3, p3}, Lcom/google/android/exoplayer2/util/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    .line 2083
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->setOutputSurfaceInfo(Lcom/google/android/exoplayer2/util/SurfaceInfo;)V

    .line 2090
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->setInputFormat(Lcom/google/android/exoplayer2/Format;)V

    return v1

    .line 2077
    :goto_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    const/16 v0, 0x1b58

    invoke-static {p3, p2, p1, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1300(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public maybeRegisterFrame(Lcom/google/android/exoplayer2/Format;JZ)Z
    .locals 4

    .line 2203
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2206
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->getPendingInputFrameCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    if-ge v0, v1, :cond_4

    .line 2208
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->registerInputFrame()V

    .line 2210
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    if-nez v0, :cond_1

    .line 2211
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    goto :goto_1

    .line 2212
    :cond_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2214
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 2218
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    .line 2219
    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->lastCodecBufferPresentationTimestampUs:J

    :cond_3
    return v3

    :cond_4
    return v2
.end method

.method public onCodecInitialized(Ljava/lang/String;)V
    .locals 2

    .line 2186
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 2188
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 2187
    invoke-static {v0, p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getMaxPendingFramesCountForMediaCodecDecoders(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessorMaxPendingFrameCount:I

    return-void
.end method

.method public releaseProcessedFrames(JJ)V
    .locals 25

    move-object/from16 v0, p0

    .line 2233
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2235
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/BaseRenderer;->getState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v1, v2, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 2236
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 2237
    iget-wide v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->initialStreamOffsetUs:J

    add-long v8, v13, v1

    .line 2238
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 2242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v15, 0x3e8

    mul-long v6, v2, v15

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 2239
    invoke-static/range {v1 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1400(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;JJJJZ)J

    move-result-wide v6

    move-wide/from16 v23, v8

    move-wide v8, v2

    move-wide/from16 v1, v23

    .line 2246
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    if-ne v3, v12, :cond_1

    const/4 v11, 0x1

    .line 2247
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-static {v3, v8, v9, v6, v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1500(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v1, -0x1

    .line 2249
    invoke-direct {v0, v1, v2, v11}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releaseProcessedFrameInternal(JZ)V

    return-void

    :cond_2
    if-eqz v10, :cond_8

    .line 2252
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-static {v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1600(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)J

    move-result-wide v3

    cmp-long v5, v8, v3

    if-nez v5, :cond_3

    goto/16 :goto_2

    :cond_3
    const-wide/32 v3, 0xc350

    cmp-long v5, v6, v3

    if-lez v5, :cond_4

    goto/16 :goto_2

    .line 2262
    :cond_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    .line 2263
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    mul-long v6, v6, v15

    add-long/2addr v3, v6

    .line 2264
    iget-object v5, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 2265
    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->adjustReleaseTime(J)J

    move-result-wide v5

    .line 2266
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v5, v3

    div-long v18, v3, v15

    .line 2270
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    move-wide/from16 v20, p3

    move-object/from16 v17, v3

    move/from16 v22, v11

    invoke-virtual/range {v17 .. v22}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJZ)Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/16 v1, -0x2

    .line 2271
    invoke-direct {v0, v1, v2, v11}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releaseProcessedFrameInternal(JZ)V

    goto/16 :goto_0

    .line 2275
    :cond_5
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    .line 2276
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-lez v7, :cond_6

    .line 2277
    iget-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingFrameFormats:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iput-object v3, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    :cond_6
    move-wide v3, v1

    .line 2279
    iget-object v2, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentFrameFormat:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/google/android/exoplayer2/Format;

    move-wide/from16 v23, v13

    move-wide v13, v3

    move-wide/from16 v3, v23

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1700(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;JJLcom/google/android/exoplayer2/Format;)V

    .line 2281
    iget-wide v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J

    cmp-long v3, v1, v13

    if-ltz v3, :cond_7

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2282
    iput-wide v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->pendingOutputSizeChangeNotificationTimeUs:J

    .line 2283
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFrameSize:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->access$1800(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 2285
    :cond_7
    invoke-direct {v0, v5, v6, v11}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releaseProcessedFrameInternal(JZ)V

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public releasedLastFrame()Z
    .locals 1

    .line 1956
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .line 2296
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->release()V

    const/4 v0, 0x0

    .line 2297
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    .line 2298
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2299
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2301
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 2302
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 2304
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedFramesTimestampsUs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x1

    .line 2305
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    return-void
.end method

.method public setInputFormat(Lcom/google/android/exoplayer2/Format;)V
    .locals 4

    .line 2156
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    new-instance v1, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;-><init>(II)V

    iget v2, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 2159
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/util/FrameInfo$Builder;

    move-result-object v1

    .line 2160
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->build()Lcom/google/android/exoplayer2/util/FrameInfo;

    move-result-object v1

    .line 2157
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->setInputFrameInfo(Lcom/google/android/exoplayer2/util/FrameInfo;)V

    .line 2161
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 2163
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2164
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->registeredLastFrame:Z

    .line 2165
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->processedLastFrame:Z

    .line 2166
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame:Z

    :cond_0
    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Lcom/google/android/exoplayer2/util/Size;)V
    .locals 3

    .line 2124
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    .line 2125
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/util/Size;

    .line 2126
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2129
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 2130
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2131
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoFrameProcessor:Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;

    new-instance v1, Lcom/google/android/exoplayer2/util/SurfaceInfo;

    .line 2134
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/Size;->getHeight()I

    move-result p2

    invoke-direct {v1, p1, v2, p2}, Lcom/google/android/exoplayer2/util/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    .line 2132
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessor;->setOutputSurfaceInfo(Lcom/google/android/exoplayer2/util/SurfaceInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/Effect;",
            ">;)V"
        }
    .end annotation

    .line 1934
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 1935
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void

    .line 1938
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1939
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
