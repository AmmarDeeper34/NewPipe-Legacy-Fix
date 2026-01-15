.class public abstract Lorg/schabi/newpipe/extractor/stream/Stream;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final content:Ljava/lang/String;

.field private final deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field private final id:Ljava/lang/String;

.field private final isUrl:Z

.field private final manifestUrl:Ljava/lang/String;

.field private final mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->id:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->content:Ljava/lang/String;

    .line 58
    iput-boolean p3, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    .line 59
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 60
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 61
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->manifestUrl:Ljava/lang/String;

    return-void
.end method

.method public static containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z
    .locals 2

    .line 73
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 76
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 77
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-eqz v1, :cond_0

    iget v0, v0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    iget v1, v1, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    iget-boolean p1, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-object v0
.end method

.method public getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method

.method public getFormatId()I
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-eqz v0, :cond_0

    .line 170
    iget v0, v0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->id:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
.end method

.method public getManifestUrl()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->manifestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isUrl()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    return v0
.end method
