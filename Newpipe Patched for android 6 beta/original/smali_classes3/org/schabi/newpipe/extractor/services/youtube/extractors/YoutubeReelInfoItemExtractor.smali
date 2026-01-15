.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;
.super Ljava/lang/Object;
.source "YoutubeReelInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;


# instance fields
.field private final reelInfo:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;->reelInfo:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public synthetic getContentAvailability()Lorg/schabi/newpipe/extractor/stream/ContentAvailability;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor$-CC;->$default$getContentAvailability(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;->reelInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "headline"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getShortDescription()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor$-CC;->$default$getShortDescription(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 69
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;->reelInfo:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getThumbnailsFromInfoItem(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getUploaderAvatars()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor$-CC;->$default$getUploaderAvatars(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;->reelInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get URL"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getViewCount()J
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;->reelInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "viewCountText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no views"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 81
    :cond_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->mixedNumberWordToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 84
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get short view count"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAd()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isShortFormContent()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isUploaderVerified()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
