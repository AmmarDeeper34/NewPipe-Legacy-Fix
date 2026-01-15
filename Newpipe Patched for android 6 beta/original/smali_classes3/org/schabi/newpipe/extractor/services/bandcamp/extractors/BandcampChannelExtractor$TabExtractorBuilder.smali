.class final Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor$TabExtractorBuilder;
.super Ljava/lang/Object;
.source "BandcampChannelExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TabExtractorBuilder"
.end annotation


# instance fields
.field private final discography:Lcom/grack/nanojson/JsonArray;


# direct methods
.method constructor <init>(Lcom/grack/nanojson/JsonArray;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor$TabExtractorBuilder;->discography:Lcom/grack/nanojson/JsonArray;

    return-void
.end method


# virtual methods
.method public build(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor$TabExtractorBuilder;->discography:Lcom/grack/nanojson/JsonArray;

    invoke-static {p1, p2, v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;->fromDiscography(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonArray;)Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelTabExtractor;

    move-result-object p1

    return-object p1
.end method
