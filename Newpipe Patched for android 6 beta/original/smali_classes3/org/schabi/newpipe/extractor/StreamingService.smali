.class public abstract Lorg/schabi/newpipe/extractor/StreamingService;
.super Ljava/lang/Object;
.source "StreamingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/StreamingService$LinkType;,
        Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;
    }
.end annotation


# instance fields
.field private final serviceId:I

.field private final serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 109
    new-instance p1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    return-void
.end method


# virtual methods
.method public getChannelExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;
    .locals 1

    .line 280
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;

    move-result-object p1

    return-object p1
.end method

.method public abstract getChannelExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;
.end method

.method public abstract getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.end method

.method public abstract getChannelTabExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
.end method

.method public abstract getChannelTabLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.end method

.method public getCommentsExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getCommentsLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 310
    :cond_0
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getCommentsExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;

    move-result-object p1

    return-object p1
.end method

.method public abstract getCommentsExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
.end method

.method public abstract getCommentsLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.end method

.method public getContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .locals 2

    .line 396
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSupportedCountries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 402
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    return-object v0
.end method

.method public getFeedExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/feed/FeedExtractor;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getKioskList()Lorg/schabi/newpipe/extractor/kiosk/KioskList;
.end method

.method public final getLinkTypeByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;
    .locals 3

    .line 323
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->followGoogleRedirectIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getPlaylistLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->acceptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    sget-object p1, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    return-object p1

    :cond_0
    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->acceptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    sget-object p1, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->CHANNEL:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    .line 333
    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->acceptUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 334
    sget-object p1, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->PLAYLIST:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    return-object p1

    .line 336
    :cond_2
    sget-object p1, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    return-object p1
.end method

.method public getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 5

    .line 369
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSupportedLocalizations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSupportedLocalizations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 378
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 384
    :cond_2
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    return-object v0
.end method

.method public getPlaylistExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;
    .locals 1

    .line 298
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getPlaylistLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getPlaylistExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPlaylistExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;
.end method

.method public abstract getPlaylistLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
.end method

.method public abstract getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.end method

.method public abstract getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;
.end method

.method public final getServiceId()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    return v0
.end method

.method public getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    return-object v0
.end method

.method public getStreamExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    move-result-object p1

    return-object p1
.end method

.method public abstract getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.end method

.method public abstract getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
.end method

.method public abstract getSubscriptionExtractor()Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;
.end method

.method public abstract getSuggestionExtractor()Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;
.end method

.method public getSupportedCountries()Ljava/util/List;
    .locals 1

    .line 355
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedLocalizations()Ljava/util/List;
    .locals 1

    .line 348
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeAgoParser(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
    .locals 3

    .line 415
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoPatternsManager;->getTimeAgoParserFor(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 421
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 423
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoPatternsManager;->getTimeAgoParserFor(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 432
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Localization is not supported (\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    iget v0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
