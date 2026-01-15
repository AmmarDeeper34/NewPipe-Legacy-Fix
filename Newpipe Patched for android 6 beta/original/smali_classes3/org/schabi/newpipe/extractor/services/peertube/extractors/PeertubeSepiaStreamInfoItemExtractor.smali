.class public Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeSepiaStreamInfoItemExtractor;
.super Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamInfoItemExtractor;
.source "PeertubeSepiaStreamInfoItemExtractor.java"


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string p2, "embedUrl"

    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamInfoItemExtractor;->item:Lcom/grack/nanojson/JsonObject;

    const-string v0, "embedPath"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeStreamInfoItemExtractor;->setBaseUrl(Ljava/lang/String;)V

    return-void
.end method
