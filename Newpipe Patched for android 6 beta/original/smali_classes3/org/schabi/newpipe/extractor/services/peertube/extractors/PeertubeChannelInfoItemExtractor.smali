.class public Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelInfoItemExtractor;
.super Ljava/lang/Object;
.source "PeertubeChannelInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field private final item:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    .line 22
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelInfoItemExtractor;->baseUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSubscriberCount()J
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "followersCount"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelInfoItemExtractor;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->getAvatarsFromOwnerAccountOrVideoChannelObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
