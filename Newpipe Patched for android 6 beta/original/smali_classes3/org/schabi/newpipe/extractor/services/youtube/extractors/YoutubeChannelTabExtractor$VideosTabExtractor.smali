.class public final Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VideosTabExtractor;
.super Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;
.source "YoutubeChannelTabExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideosTabExtractor"
.end annotation


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final channelName:Ljava/lang/String;

.field private final channelUrl:Ljava/lang/String;

.field private final tabRenderer:Lcom/grack/nanojson/JsonObject;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 540
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 541
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->channelHeader:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    .line 543
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VideosTabExtractor;->tabRenderer:Lcom/grack/nanojson/JsonObject;

    .line 544
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VideosTabExtractor;->channelId:Ljava/lang/String;

    .line 545
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VideosTabExtractor;->channelName:Ljava/lang/String;

    .line 546
    iput-object p7, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VideosTabExtractor;->channelUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getChannelName()Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VideosTabExtractor;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 557
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VideosTabExtractor;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method getTabData()Lj$/util/Optional;
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VideosTabExtractor;->tabRenderer:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VideosTabExtractor;->channelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 0

    .line 0
    return-void
.end method
