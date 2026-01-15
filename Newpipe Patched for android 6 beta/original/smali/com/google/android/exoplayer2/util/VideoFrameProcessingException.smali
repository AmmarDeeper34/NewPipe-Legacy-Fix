.class public final Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;
.super Ljava/lang/Exception;
.source "VideoFrameProcessingException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final presentationTimeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 65
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 76
    iput-wide p2, p0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;->presentationTimeUs:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 86
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;J)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    iput-wide p3, p0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;->presentationTimeUs:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 107
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;J)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 118
    iput-wide p2, p0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;->presentationTimeUs:J

    return-void
.end method

.method public static from(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;->from(Ljava/lang/Exception;J)Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/Exception;J)Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;
    .locals 1

    .line 46
    instance-of v0, p0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;

    if-eqz v0, :cond_0

    .line 47
    check-cast p0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;J)V

    return-object v0
.end method
