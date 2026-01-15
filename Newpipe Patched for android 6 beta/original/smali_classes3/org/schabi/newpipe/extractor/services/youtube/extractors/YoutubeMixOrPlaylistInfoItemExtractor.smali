.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;
.super Ljava/lang/Object;
.source "YoutubeMixOrPlaylistInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;


# instance fields
.field private final mixInfoItem:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public synthetic getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor$-CC;->$default$getDescription(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get name"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractPlaylistTypeFromPlaylistUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object v0

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoCountShortText"

    .line 72
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x2

    return-wide v0

    .line 74
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not extract item count for playlist/mix info item"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getThumbnailsFromInfoItem(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "longBylineText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixOrPlaylistInfoItemExtractor;->mixInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "shareUrl"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get url"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isUploaderVerified()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
