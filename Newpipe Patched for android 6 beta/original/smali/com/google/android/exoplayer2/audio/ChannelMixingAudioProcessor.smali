.class public final Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "ChannelMixingAudioProcessor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final matrixByInputChannelCount:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->matrixByInputChannelCount:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected onConfigure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 3

    .line 59
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->matrixByInputChannelCount:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 64
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    return-object p1

    .line 72
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 74
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->getOutputChannelCount()I

    move-result v0

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    return-object v2

    .line 66
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    const-string v1, "No mixing matrix for input channel count"

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v0

    .line 60
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v0
.end method

.method public putChannelMixingMatrix(Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->getInputChannelCount()I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->matrixByInputChannelCount:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 12

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/ChannelMixingAudioProcessor;->matrixByInputChannelCount:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 81
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;

    .line 83
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int/2addr v1, v2

    .line 84
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int v1, v1, v2

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 86
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->getInputChannelCount()I

    move-result v2

    .line 87
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->getOutputChannelCount()I

    move-result v3

    .line 88
    new-array v4, v3, [F

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_1

    .line 95
    aget v9, v4, v8

    .line 96
    invoke-virtual {v0, v6, v8}, Lcom/google/android/exoplayer2/audio/ChannelMixingMatrix;->getMixingCoefficient(II)F

    move-result v10

    int-to-float v11, v7

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    aput v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v5, v3, :cond_0

    .line 103
    aget v6, v4, v5

    const/high16 v7, -0x39000000    # -32768.0f

    const v8, 0x46fffe00    # 32767.0f

    .line 105
    invoke-static {v6, v7, v8}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result v6

    float-to-int v6, v6

    int-to-short v6, v6

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    .line 107
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 108
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    .line 109
    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 112
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
