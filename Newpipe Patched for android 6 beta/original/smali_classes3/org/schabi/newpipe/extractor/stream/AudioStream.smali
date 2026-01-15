.class public final Lorg/schabi/newpipe/extractor/stream/AudioStream;
.super Lorg/schabi/newpipe/extractor/stream/Stream;
.source "AudioStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    }
.end annotation


# instance fields
.field private final audioLocale:Ljava/util/Locale;

.field private final audioTrackId:Ljava/lang/String;

.field private final audioTrackName:Ljava/lang/String;

.field private final audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field private final averageBitrate:I

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field private itag:I

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

.field private quality:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)V
    .locals 7

    .line 326
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetid(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetcontent(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetisUrl(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Z

    move-result v3

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetmediaFormat(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v4

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetdeliveryMethod(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v5

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetmanifestUrl(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/stream/Stream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 37
    iput v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itag:I

    .line 332
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 333
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 334
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    iget v1, v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iput v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itag:I

    .line 335
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getQuality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->quality:Ljava/lang/String;

    .line 336
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getBitrate()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->bitrate:I

    .line 337
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitStart()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initStart:I

    .line 338
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitEnd()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initEnd:I

    .line 339
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexStart()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexStart:I

    .line 340
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexEnd()I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexEnd:I

    .line 341
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetitagItem(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->codec:Ljava/lang/String;

    .line 343
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetaverageBitrate(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)I

    move-result v1

    iput v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    .line 344
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetaudioTrackId(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    .line 345
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetaudioTrackName(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackName:Ljava/lang/String;

    .line 346
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetaudioLocale(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    .line 347
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->-$$Nest$fgetaudioTrackType(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    move-result-object p1

    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-void
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2

    .line 355
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    iget v1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    .line 357
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    .line 359
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAudioLocale()Ljava/util/Locale;
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getAudioTrackId()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackName()Ljava/lang/String;
    .locals 1

    .line 471
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 1

    .line 493
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object v0
.end method

.method public getAverageBitrate()I
    .locals 1

    .line 368
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    return v0
.end method

.method public getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 1

    .line 502
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object v0
.end method
