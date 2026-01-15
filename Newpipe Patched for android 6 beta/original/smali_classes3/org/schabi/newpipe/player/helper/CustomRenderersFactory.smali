.class public final Lorg/schabi/newpipe/player/helper/CustomRenderersFactory;
.super Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.source "CustomRenderersFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected buildVideoRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .locals 10

    .line 39
    new-instance v0, Lorg/schabi/newpipe/player/helper/CustomMediaCodecVideoRenderer;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->getCodecAdapterFactory()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v2

    const/16 v9, 0x32

    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/player/helper/CustomMediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    move-object/from16 p1, p9

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
