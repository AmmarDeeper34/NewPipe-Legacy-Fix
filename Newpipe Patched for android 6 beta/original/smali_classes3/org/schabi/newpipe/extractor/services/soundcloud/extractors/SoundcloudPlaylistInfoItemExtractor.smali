.class public Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;
.super Ljava/lang/Object;
.source "SoundcloudPlaylistInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;


# instance fields
.field private final itemObject:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

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

    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor$-CC;->$default$getPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object v0

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "track_count"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 7

    .line 40
    const-string v0, "avatar_url"

    const-string v1, "user"

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v3, "artwork_url"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->isString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromArtworkOrAvatarUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v4, "tracks"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 50
    check-cast v4, Lcom/grack/nanojson/JsonObject;

    .line 53
    invoke-virtual {v4, v3}, Lcom/grack/nanojson/JsonObject;->isString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    invoke-virtual {v4, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 56
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromArtworkOrAvatarUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 61
    :cond_2
    invoke-virtual {v4, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 62
    invoke-virtual {v4, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 64
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromArtworkOrAvatarUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 73
    :catch_0
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    .line 74
    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromArtworkOrAvatarUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 76
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Failed to extract playlist thumbnails"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 3

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Failed to extract playlist uploader"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "permalink_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "permalink_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUploaderVerified()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "verified"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
