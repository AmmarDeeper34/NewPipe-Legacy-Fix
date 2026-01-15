.class public Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;
.super Ljava/lang/Object;
.source "StreamItemAdapter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/util/StreamItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamInfoWrapper"
.end annotation


# static fields
.field private static final EMPTY:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;


# instance fields
.field private final streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

.field private final streamSizes:[J

.field private final streamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownSize:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$KFQ3t7UqdVQV7GmJ2mbefzhTed0(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Ljava/lang/Boolean;
    .locals 11

    .line 261
    invoke-virtual {p0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 262
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(Lorg/schabi/newpipe/extractor/stream/Stream;)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    const/4 v8, 0x1

    cmp-long v9, v4, v6

    if-gtz v9, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 263
    :goto_1
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    goto :goto_0

    .line 267
    :cond_3
    invoke-static {}, Lorg/schabi/newpipe/DownloaderImpl;->getInstance()Lorg/schabi/newpipe/DownloaderImpl;

    move-result-object v6

    .line 268
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->head(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v6

    if-eqz v4, :cond_4

    .line 270
    const-string v4, "Content-Length"

    invoke-virtual {v6, v4}, Lorg/schabi/newpipe/extractor/downloader/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 272
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {p0, v3, v9, v10}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->setSize(Lorg/schabi/newpipe/extractor/stream/Stream;J)V

    const/4 v2, 0x1

    :cond_4
    if-eqz v5, :cond_0

    .line 277
    invoke-static {v3, p0, v6}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->retrieveMediaFormat(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Lorg/schabi/newpipe/extractor/downloader/Response;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :cond_6
    :goto_3
    move v2, v8

    goto :goto_0

    .line 281
    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zi93xnp8dqOeOj2Lf0L0mlKTwbE(Ljava/lang/String;)Z
    .locals 1

    .line 318
    const-string v0, "file-type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 229
    new-instance v0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 230
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    sput-object v0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->EMPTY:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamSizes:[J

    if-nez p2, :cond_0

    .line 243
    const-string p2, "--.-"

    goto :goto_0

    :cond_0
    const v0, 0x7f1204a0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->unknownSize:Ljava/lang/String;

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/schabi/newpipe/extractor/MediaFormat;

    iput-object p1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 245
    invoke-virtual {p0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->resetInfo()V

    return-void
.end method

.method public static empty()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;
    .locals 1

    .line 432
    sget-object v0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->EMPTY:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    return-object v0
.end method

.method public static fetchMoreInfoForWrapper(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 259
    new-instance v0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)V

    .line 284
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 285
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 286
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 287
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 453
    invoke-static {p1, p2}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 455
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->unknownSize:Ljava/lang/String;

    return-object p1
.end method

.method public static retrieveMediaFormat(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Lorg/schabi/newpipe/extractor/downloader/Response;)Z
    .locals 1

    .line 304
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->retrieveMediaFormatFromFileTypeHeaders(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Lorg/schabi/newpipe/extractor/downloader/Response;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->retrieveMediaFormatFromContentDispositionHeader(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Lorg/schabi/newpipe/extractor/downloader/Response;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->retrieveMediaFormatFromContentTypeHeader(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Lorg/schabi/newpipe/extractor/downloader/Response;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static retrieveMediaFormatFromContentDispositionHeader(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Lorg/schabi/newpipe/extractor/downloader/Response;)Z
    .locals 6

    .line 353
    const-string v0, "Content-Disposition"

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 358
    :cond_0
    :try_start_0
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/Utils;->decodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 359
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 360
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p2, v2

    .line 362
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 365
    const-string v4, "filename="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x9

    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/Utils;->decodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 368
    :cond_1
    const-string v4, "filename*="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xa

    .line 369
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/Utils;->decodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    :goto_1
    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 376
    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    .line 377
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 379
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 383
    :cond_3
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 385
    invoke-virtual {p1, p0, v3}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->setFormat(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/MediaFormat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_5
    return v0
.end method

.method public static retrieveMediaFormatFromContentTypeHeader(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Lorg/schabi/newpipe/extractor/downloader/Response;)Z
    .locals 4

    .line 402
    const-string v0, "Content-Type"

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/extractor/downloader/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 408
    :cond_0
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/MediaFormat;->getAllFromMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/MediaFormat;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_0

    .line 411
    :cond_2
    iget v3, v1, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    iget v2, v2, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    if-eq v3, v2, :cond_1

    return v0

    :cond_3
    if-eqz v1, :cond_4

    .line 416
    invoke-virtual {p1, p0, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->setFormat(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/MediaFormat;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public static retrieveMediaFormatFromFileTypeHeaders(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Lorg/schabi/newpipe/extractor/downloader/Response;)Z
    .locals 2

    .line 317
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper$$ExternalSyntheticLambda1;-><init>()V

    .line 318
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 319
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    invoke-virtual {p2, v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p1, p0, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->setFormat(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/MediaFormat;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getFormat(I)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFormattedSize(I)Ljava/lang/String;
    .locals 2

    .line 448
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->formatSize(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSizeInBytes(I)J
    .locals 3

    .line 440
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamSizes:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getSizeInBytes(Lorg/schabi/newpipe/extractor/stream/Stream;)J
    .locals 3

    .line 444
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamSizes:[J

    iget-object v1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getStreamsList()Ljava/util/List;
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    return-object v0
.end method

.method public resetInfo()V
    .locals 3

    .line 423
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamSizes:[J

    const-wide/16 v1, -0x2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    const/4 v0, 0x0

    .line 424
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 425
    iget-object v1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

    iget-object v2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 426
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/Stream;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v2

    :goto_1
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFormat(Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/MediaFormat;)V
    .locals 2

    .line 467
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamFormats:[Lorg/schabi/newpipe/extractor/MediaFormat;

    iget-object v1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    aput-object p2, v0, p1

    return-void
.end method

.method public setSize(Lorg/schabi/newpipe/extractor/stream/Stream;J)V
    .locals 2

    .line 459
    iget-object v0, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamSizes:[J

    iget-object v1, p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->streamsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    aput-wide p2, v0, p1

    return-void
.end method
