.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;
.super Ljava/lang/Object;
.source "YoutubePlaylistInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;


# instance fields
.field private final playlistInfoItem:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;->playlistInfoItem:Lcom/grack/nanojson/JsonObject;

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
    .locals 3

    .line 48
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;->playlistInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get name"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor$-CC;->$default$getPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object v0

    return-object v0
.end method

.method public getStreamCount()J
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;->playlistInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoCount"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;->playlistInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoCountText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;->playlistInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "videoCountShortText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_1
    const-string v1, "Could not get stream count"

    if-eqz v0, :cond_2

    .line 107
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 109
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v2, v1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 103
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 3

    .line 31
    const-string v0, "thumbnails"

    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;->playlistInfoItem:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;->playlistInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v2, "thumbnail"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 41
    :goto_1
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get thumbnails"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 3

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;->playlistInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "longBylineText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get uploader name"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 3

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;->playlistInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "longBylineText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get uploader url"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 57
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;->playlistInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "playlistId"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get url"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isUploaderVerified()Z
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;->playlistInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "ownerBadges"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isVerified(Lcom/grack/nanojson/JsonArray;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get uploader verification info"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
