.class public final Lorg/schabi/newpipe/extractor/stream/VideoStream;
.super Lorg/schabi/newpipe/extractor/stream/Stream;
.source "VideoStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    }
.end annotation


# instance fields
.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private fps:I

.field private height:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field public final isVideoOnly:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private itag:I

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

.field private quality:Ljava/lang/String;

.field public final resolution:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 306
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/stream/Stream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itag:I

    if-eqz v7, :cond_0

    .line 308
    iput-object v7, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 309
    iget p1, v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itag:I

    .line 310
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getBitrate()I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->bitrate:I

    .line 311
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitStart()I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initStart:I

    .line 312
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitEnd()I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initEnd:I

    .line 313
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexStart()I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexStart:I

    .line 314
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexEnd()I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexEnd:I

    .line 315
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->codec:Ljava/lang/String;

    .line 316
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->height:I

    .line 317
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getWidth()I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->width:I

    .line 318
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getQuality()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->quality:Ljava/lang/String;

    .line 319
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getFps()I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->fps:I

    .line 321
    :cond_0
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 322
    iput-boolean p7, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/stream/VideoStream-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/schabi/newpipe/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    return-void
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2

    .line 330
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    iget-boolean p1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public isVideoOnly()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    return v0
.end method
