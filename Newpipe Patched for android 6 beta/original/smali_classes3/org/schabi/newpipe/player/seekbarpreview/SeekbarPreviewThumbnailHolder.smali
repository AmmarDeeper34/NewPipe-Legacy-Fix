.class public Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;
.super Ljava/lang/Object;
.source "SeekbarPreviewThumbnailHolder.java"


# instance fields
.field private currentUpdateRequestIdentifier:Ljava/util/UUID;

.field private final seekbarPreviewData:Landroidx/collection/SparseArrayCompat;


# direct methods
.method public static synthetic $r8$lambda$7SqeYiqW-Ta9r2wnxyW-gMXDfLY(Landroid/graphics/Bitmap;[ILorg/schabi/newpipe/extractor/stream/Frameset;)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p0, :cond_4

    .line 167
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    aget v2, p1, v1

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 176
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    move-result v2

    sub-int/2addr v0, v2

    aput v0, p1, v1

    .line 179
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v2, 0x2

    aget v3, p1, v2

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_2

    .line 180
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    move-result v3

    sub-int/2addr v0, v3

    aput v0, p1, v2

    .line 184
    :cond_2
    aget v0, p1, v1

    aget p1, p1, v2

    .line 185
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    move-result v2

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    move-result p2

    .line 184
    invoke-static {p0, v0, p1, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-ne p1, p0, :cond_3

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WMGm6pFGvNCSMVezHffph-ntykQ()Landroid/graphics/Bitmap;
    .locals 1

    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic $r8$lambda$dM8M2lDdpmKZ5rQ1nTaXoV1WQdU(Lorg/schabi/newpipe/extractor/stream/Frameset;)I
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method public static synthetic $r8$lambda$pG2w6_RPmK55gqzKZ6UJHafqe_w(Lorg/schabi/newpipe/extractor/stream/Frameset;)I
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method public static synthetic $r8$lambda$xf3rqPDbIjHtkWGEXdNgyEUgybw(Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;ILjava/util/List;Ljava/util/UUID;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->lambda$resetFrom$0(ILjava/util/List;Ljava/util/UUID;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->seekbarPreviewData:Landroidx/collection/SparseArrayCompat;

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->currentUpdateRequestIdentifier:Ljava/util/UUID;

    return-void
.end method

.method private createBitmapSupplier(Landroid/graphics/Bitmap;[ILorg/schabi/newpipe/extractor/stream/Frameset;)Ljava/util/function/Supplier;
    .locals 1

    .line 162
    new-instance v0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Bitmap;[ILorg/schabi/newpipe/extractor/stream/Frameset;)V

    return-object v0
.end method

.method private generateDataFrom(Lorg/schabi/newpipe/extractor/stream/Frameset;Ljava/util/UUID;)V
    .locals 11

    .line 108
    const-string v0, "SeekbarPrevThumbHolder"

    const-string v1, "Starting generation of seekbarPreviewData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "SeekbarPrevThumbHolder"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFramesPerPageX()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFramesPerPageY()I

    move-result v2

    mul-int v1, v1, v2

    .line 117
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getUrls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 119
    invoke-direct {p0, v6}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->getBitMapFrom(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 123
    new-instance v7, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v7, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v1, :cond_2

    .line 129
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getTotalCount()I

    move-result v9

    if-le v4, v9, :cond_1

    goto :goto_3

    :cond_1
    int-to-long v9, v5

    .line 134
    invoke-virtual {p1, v9, v10}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameBoundsAt(J)[I

    move-result-object v9

    .line 136
    invoke-direct {p0, v6, v9, p1}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->createBitmapSupplier(Landroid/graphics/Bitmap;[ILorg/schabi/newpipe/extractor/stream/Frameset;)Ljava/util/function/Supplier;

    move-result-object v9

    .line 135
    invoke-virtual {v7, v5, v9}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 138
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getDurationPerFrame()I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 144
    :cond_2
    :goto_3
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->isRequestIdentifierCurrent(Ljava/util/UUID;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 145
    iget-object v6, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->seekbarPreviewData:Landroidx/collection/SparseArrayCompat;

    monitor-enter v6

    .line 146
    :try_start_0
    iget-object v8, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->seekbarPreviewData:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v8, v7}, Landroidx/collection/SparseArrayCompat;->putAll(Landroidx/collection/SparseArrayCompat;)V

    .line 147
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 149
    :cond_3
    const-string p1, "SeekbarPrevThumbHolder"

    const-string p2, "Aborted of generation of seekbarPreviewData"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v0, :cond_5

    .line 155
    const-string p1, "SeekbarPrevThumbHolder"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generation of seekbarPreviewData took "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private getBitMapFrom(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    .line 200
    const-string v1, "SeekbarPrevThumbHolder"

    if-nez p1, :cond_0

    .line 201
    const-string p1, "url is null; This should never happen"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v2, 0x3

    .line 205
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 207
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading bitmap for seekbarPreview from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {p1}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadSeekbarThumbnailPreview(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download of bitmap for seekbarPreview from \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    return-object v3

    .line 220
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get bitmap for seekbarPreview from url=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in time"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private getFrameSetForType(Ljava/util/List;I)Lorg/schabi/newpipe/extractor/stream/Frameset;
    .locals 2

    const/4 v0, 0x0

    .line 94
    const-string v1, "SeekbarPrevThumbHolder"

    if-nez p2, :cond_0

    .line 95
    const-string p2, "Strategy for seekbarPreviewData: high quality"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda3;-><init>()V

    .line 97
    invoke-static {p2}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Frameset;

    return-object p1

    .line 100
    :cond_0
    const-string p2, "Strategy for seekbarPreviewData: low quality"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda4;-><init>()V

    .line 102
    invoke-static {p2}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->min(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object p1

    .line 103
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Frameset;

    return-object p1
.end method

.method private isRequestIdentifierCurrent(Ljava/util/UUID;)Z
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->currentUpdateRequestIdentifier:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$resetFrom$0(ILjava/util/List;Ljava/util/UUID;)V
    .locals 0

    .line 52
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->resetFromAsync(ILjava/util/List;Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 54
    const-string p2, "SeekbarPrevThumbHolder"

    const-string p3, "Failed to execute async"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private resetFromAsync(ILjava/util/List;Ljava/util/UUID;)V
    .locals 2

    .line 64
    const-string v0, "SeekbarPrevThumbHolder"

    const-string v1, "Clearing seekbarPreviewData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->seekbarPreviewData:Landroidx/collection/SparseArrayCompat;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->seekbarPreviewData:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 70
    const-string p1, "SeekbarPrevThumbHolder"

    const-string p2, "Not processing seekbarPreviewData due to settings"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 74
    :cond_0
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->getFrameSetForType(Ljava/util/List;I)Lorg/schabi/newpipe/extractor/stream/Frameset;

    move-result-object p1

    if-nez p1, :cond_1

    .line 76
    const-string p1, "SeekbarPrevThumbHolder"

    const-string p2, "No frameset was found to fill seekbarPreviewData"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_1
    const-string p2, "SeekbarPrevThumbHolder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frameset quality info: [width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0, p3}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->isRequestIdentifierCurrent(Ljava/util/UUID;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 89
    :cond_2
    invoke-direct {p0, p1, p3}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->generateDataFrom(Lorg/schabi/newpipe/extractor/stream/Frameset;Ljava/util/UUID;)V

    return-void

    :catchall_0
    move-exception p1

    .line 67
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public getBitmapAt(I)Lj$/util/Optional;
    .locals 5

    .line 232
    new-instance v0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda0;-><init>()V

    .line 233
    iget-object v1, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->seekbarPreviewData:Landroidx/collection/SparseArrayCompat;

    monitor-enter v1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    .line 235
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->seekbarPreviewData:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 236
    iget-object v4, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->seekbarPreviewData:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v4

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v2, :cond_0

    .line 238
    iget-object v0, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->seekbarPreviewData:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    move v2, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    return-object p1

    .line 242
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetFrom(Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    .line 44
    invoke-static {p1}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHelper;->getSeekbarPreviewThumbnailType(Landroid/content/Context;)I

    move-result p1

    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->currentUpdateRequestIdentifier:Ljava/util/UUID;

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 50
    new-instance v2, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;ILjava/util/List;Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 59
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
