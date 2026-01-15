.class public Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;
.super Ljava/lang/Object;
.source "MediaCCCStreamInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;


# instance fields
.field private final event:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;->event:Lcom/grack/nanojson/JsonObject;

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

    .line 35
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;->event:Lcom/grack/nanojson/JsonObject;

    const-string v1, "length"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;->event:Lcom/grack/nanojson/JsonObject;

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
    .locals 1

    .line 25
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;->event:Lcom/grack/nanojson/JsonObject;

    const-string v1, "release_date"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;->event:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->getThumbnailsFromStreamItem(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->fromOffsetDateTime(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

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
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;->event:Lcom/grack/nanojson/JsonObject;

    const-string v1, "conference_title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;->event:Lcom/grack/nanojson/JsonObject;

    const-string v1, "conference_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 78
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;->event:Lcom/grack/nanojson/JsonObject;

    const-string v1, "guid"

    .line 79
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://media.ccc.de/public/events/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewCount()J
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCStreamInfoItemExtractor;->event:Lcom/grack/nanojson/JsonObject;

    const-string v1, "view_count"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

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
