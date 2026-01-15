.class public final Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;
.super Ljava/lang/Object;
.source "AudioProcessingPipeline.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final activeAudioProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final audioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList;"
        }
    .end annotation
.end field

.field private inputEnded:Z

.field private outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    const/4 p1, 0x0

    .line 104
    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 105
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 106
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 107
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    return-void
.end method

.method private getFinalOutputBufferIndex()I
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private processData(Ljava/nio/ByteBuffer;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 310
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v4

    if-gt v3, v4, :cond_7

    .line 311
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 318
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isEnded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 320
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueEndOfStream()V

    goto :goto_5

    :cond_1
    if-lez v3, :cond_2

    .line 327
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    goto :goto_2

    .line 328
    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, p1

    goto :goto_2

    :cond_3
    sget-object v5, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 329
    :goto_2
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    .line 330
    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 331
    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v8, v3

    .line 333
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v8, v6, v4

    if-gtz v8, :cond_5

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x1

    :goto_4
    or-int/2addr v2, v4

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v1, v2

    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 3

    .line 128
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 136
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->configure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    move-result-object v2

    .line 137
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    move-object p1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    return-object p1

    .line 129
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 285
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 288
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;

    .line 289
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iget-object v3, p1, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    .line 292
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 293
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public flush()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    const/4 v1, 0x0

    .line 159
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 161
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 162
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 168
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 220
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->processData(Ljava/nio/ByteBuffer;)V

    :cond_1
    return-object v0
.end method

.method public getOutputAudioFormat()Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnded()Z
    .locals 2

    .line 253
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    .line 254
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 255
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOperational()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public queueEndOfStream()V
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueEndOfStream()V

    :cond_1
    :goto_0
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->processData(Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 263
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 265
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 266
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_0
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 269
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 270
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    .line 271
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessingPipeline;->inputEnded:Z

    return-void
.end method
