.class public Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
.source "ReadyChannelTabListLinkHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;
    }
.end annotation


# instance fields
.field private final extractorBuilder:Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;)V
    .locals 6

    .line 46
    invoke-static {p3}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, ""

    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 47
    iput-object p4, v0, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;->extractorBuilder:Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;

    return-void
.end method


# virtual methods
.method public getChannelTabExtractor(Lorg/schabi/newpipe/extractor/StreamingService;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;->extractorBuilder:Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;

    new-instance v1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    invoke-interface {v0, p1, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;->build(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;

    move-result-object p1

    return-object p1
.end method
