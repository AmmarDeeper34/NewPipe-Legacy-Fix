.class public final Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$StreamInfoLoadException;
.super Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$FailedMediaSourceException;
.source "FailedMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamInfoLoadException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$FailedMediaSourceException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
