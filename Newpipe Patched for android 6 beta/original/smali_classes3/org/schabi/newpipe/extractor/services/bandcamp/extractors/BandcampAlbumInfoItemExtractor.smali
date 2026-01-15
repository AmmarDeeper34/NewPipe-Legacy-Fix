.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;
.super Ljava/lang/Object;
.source "BandcampAlbumInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;


# instance fields
.field private final albumInfoItem:Lcom/grack/nanojson/JsonObject;

.field private final uploaderUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;->albumInfoItem:Lcom/grack/nanojson/JsonObject;

    .line 21
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;->uploaderUrl:Ljava/lang/String;

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

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;->albumInfoItem:Lcom/grack/nanojson/JsonObject;

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

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 3

    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;->albumInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "art_id"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getImagesFromImageId(JZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;->albumInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "band_name"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 6

    .line 31
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;->albumInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v1, "band_id"

    .line 32
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;->albumInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v3, "item_id"

    .line 33
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampAlbumInfoItemExtractor;->albumInfoItem:Lcom/grack/nanojson/JsonObject;

    const-string v5, "item_type"

    .line 34
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-static {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getStreamUrlFromIds(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUploaderVerified()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
