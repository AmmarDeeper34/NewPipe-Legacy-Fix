.class public Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampSearchStreamInfoItemExtractor;
.super Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampStreamInfoItemExtractor;
.source "BandcampSearchStreamInfoItemExtractor.java"


# instance fields
.field private final resultInfo:Lorg/jsoup/nodes/Element;

.field private final searchResult:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampStreamInfoItemExtractor;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampSearchStreamInfoItemExtractor;->searchResult:Lorg/jsoup/nodes/Element;

    .line 21
    const-string p2, "result-info"

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampSearchStreamInfoItemExtractor;->resultInfo:Lorg/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampSearchStreamInfoItemExtractor;->resultInfo:Lorg/jsoup/nodes/Element;

    const-string v1, "heading"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampSearchStreamInfoItemExtractor;->searchResult:Lorg/jsoup/nodes/Element;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->getImagesFromSearchResult(Lorg/jsoup/nodes/Element;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 3

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampSearchStreamInfoItemExtractor;->resultInfo:Lorg/jsoup/nodes/Element;

    const-string v1, "subhead"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, "by "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 28
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 29
    aget-object v0, v0, v2

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 31
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/streaminfoitem/BandcampSearchStreamInfoItemExtractor;->resultInfo:Lorg/jsoup/nodes/Element;

    const-string v1, "itemurl"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
