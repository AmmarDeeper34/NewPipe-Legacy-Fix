.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelInfoItemExtractor;
.super Ljava/lang/Object;
.source "BandcampChannelInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;


# instance fields
.field private final resultInfo:Lorg/jsoup/nodes/Element;

.field private final searchResult:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Element;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelInfoItemExtractor;->searchResult:Lorg/jsoup/nodes/Element;

    .line 22
    const-string v0, "result-info"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelInfoItemExtractor;->resultInfo:Lorg/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelInfoItemExtractor;->resultInfo:Lorg/jsoup/nodes/Element;

    const-string v1, "subhead"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelInfoItemExtractor;->resultInfo:Lorg/jsoup/nodes/Element;

    const-string v1, "heading"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

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

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelInfoItemExtractor;->searchResult:Lorg/jsoup/nodes/Element;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getImagesFromSearchResult(Lorg/jsoup/nodes/Element;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelInfoItemExtractor;->resultInfo:Lorg/jsoup/nodes/Element;

    const-string v1, "itemurl"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
