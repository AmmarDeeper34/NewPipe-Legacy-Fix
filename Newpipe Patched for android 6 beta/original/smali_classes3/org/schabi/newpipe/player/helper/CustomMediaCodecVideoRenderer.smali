.class public final Lorg/schabi/newpipe/player/helper/CustomMediaCodecVideoRenderer;
.super Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.source "CustomMediaCodecVideoRenderer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method


# virtual methods
.method protected codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method
