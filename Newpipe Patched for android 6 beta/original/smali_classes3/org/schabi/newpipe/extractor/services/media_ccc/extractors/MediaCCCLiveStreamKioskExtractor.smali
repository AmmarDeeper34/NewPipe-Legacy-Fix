.class public Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;
.super Ljava/lang/Object;
.source "MediaCCCLiveStreamKioskExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;


# instance fields
.field private final conferenceInfo:Lcom/grack/nanojson/JsonObject;

.field private final group:Ljava/lang/String;

.field private final roomInfo:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;->conferenceInfo:Lcom/grack/nanojson/JsonObject;

    .line 26
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;->group:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;->roomInfo:Lcom/grack/nanojson/JsonObject;

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
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;->roomInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "talks"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "current"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;->roomInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "streams"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 50
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0

    :cond_1
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

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

    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;->roomInfo:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->getThumbnailsFromLiveStreamItem(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

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
    .locals 4

    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;->conferenceInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "conference"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;->group:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;->roomInfo:Lcom/grack/nanojson/JsonObject;

    const-string v3, "display"

    .line 76
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;->conferenceInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "slug"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://media.ccc.de/c/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamKioskExtractor;->roomInfo:Lcom/grack/nanojson/JsonObject;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewCount()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isAd()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic isShortFormContent()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor$-CC;->$default$isShortFormContent(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Z

    move-result v0

    return v0
.end method

.method public isUploaderVerified()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
