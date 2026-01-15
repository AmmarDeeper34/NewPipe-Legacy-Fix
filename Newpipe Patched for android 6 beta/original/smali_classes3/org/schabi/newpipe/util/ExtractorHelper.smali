.class public abstract Lorg/schabi/newpipe/util/ExtractorHelper;
.super Ljava/lang/Object;
.source "ExtractorHelper.java"


# static fields
.field private static final CACHE:Lorg/schabi/newpipe/util/InfoCache;

.field private static final TAG:Ljava/lang/String; = "ExtractorHelper"


# direct methods
.method public static synthetic $r8$lambda$-GOASzxxtO11nTPjtgJMV0OHJvs(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1

    .line 96
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    .line 97
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;

    move-result-object p0

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p0

    .line 96
    invoke-static {v0, p0, p4}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2ahwdH5zUG2IizC29Cvn0G0d-Ek(ILjava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;
    .locals 0

    .line 197
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DIjX9T2KDXwrKrBYaOs-lBvZXVY(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 204
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/kiosk/KioskInfo;->getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DacByi838B3RV_Hkv28LZ6rBR0w(ILjava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
    .locals 0

    .line 182
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LYa4LdITSboiiQesk9c5Fs8kpnE(ILorg/schabi/newpipe/extractor/comments/CommentsInfo;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 164
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/comments/CommentsInfo;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PsRtk76KOOXZgGLvdvmuwqLC-mc(ILjava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
    .locals 0

    .line 155
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bVfA-5gb6gDc8jcAgcGWG5oH0FE(ILjava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 0

    .line 118
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bfeU0LHJSxzIBHEG4SMNZnFnlaE(ILjava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 0

    .line 126
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e--w6Eq2EylfVbGZefjCTrJ9km0(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 145
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;->getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eHwVZIHKEQlMbTk_cr5_eGmnp0E(ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 106
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSuggestionExtractor()Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->suggestionList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 110
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic $r8$lambda$eWWJUs5BIXjC9jMkwr5iSk373Kk(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/search/SearchInfo;
    .locals 1

    .line 82
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    .line 83
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;

    move-result-object p0

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object p0

    .line 82
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ex-iFP0sbcZ9pJ1NLRvz96s1ml4(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 190
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oYIk1KqOEy3wQADOnzSrHWb9eRY(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 1

    .line 231
    sget-object v0, Lorg/schabi/newpipe/util/ExtractorHelper;->CACHE:Lorg/schabi/newpipe/util/InfoCache;

    invoke-virtual {v0, p0, p1, p3, p2}, Lorg/schabi/newpipe/util/InfoCache;->putInfo(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/util/InfoCache$Type;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ohlqRO9Ja9aIw3ccrKWzUvHjbKU(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 0

    .line 173
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r-4UjdLJNmu87LXGAoTOS6t7QRU(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Lio/reactivex/rxjava3/core/MaybeSource;
    .locals 1

    .line 263
    sget-object v0, Lorg/schabi/newpipe/util/ExtractorHelper;->CACHE:Lorg/schabi/newpipe/util/InfoCache;

    invoke-virtual {v0, p0, p1, p2}, Lorg/schabi/newpipe/util/InfoCache;->getFromKey(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Lorg/schabi/newpipe/extractor/Info;

    move-result-object p0

    .line 264
    sget-boolean p1, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 265
    sget-object p1, Lorg/schabi/newpipe/util/ExtractorHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadFromCache() called, info > "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    .line 270
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0

    .line 273
    :cond_1
    invoke-static {}, Lio/reactivex/rxjava3/core/Maybe;->empty()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ywl_KCJseTTYfOgEv9Py_0u_0h8(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;
    .locals 0

    .line 136
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 65
    invoke-static {}, Lorg/schabi/newpipe/util/InfoCache;->getInstance()Lorg/schabi/newpipe/util/InfoCache;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/ExtractorHelper;->CACHE:Lorg/schabi/newpipe/util/InfoCache;

    return-void
.end method

.method private static capitalizeIfAllUppercase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 346
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 347
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    return-object p0

    .line 355
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static checkCache(ZILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 229
    invoke-static {p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 230
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2, p3}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)V

    .line 231
    invoke-virtual {p4, v0}, Lio/reactivex/rxjava3/core/Single;->doOnSuccess(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p4

    if-eqz p0, :cond_0

    .line 235
    sget-object p0, Lorg/schabi/newpipe/util/ExtractorHelper;->CACHE:Lorg/schabi/newpipe/util/InfoCache;

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/util/InfoCache;->removeInfo(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)V

    return-object p4

    .line 238
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/util/ExtractorHelper;->loadFromCache(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    .line 239
    invoke-virtual {p4}, Lio/reactivex/rxjava3/core/Single;->toMaybe()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    .line 238
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/core/Maybe;->concat(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/core/MaybeSource;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    .line 240
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Flowable;->firstElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Maybe;->toSingle()Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method private static checkServiceId(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "serviceId is NO_SERVICE_ID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 123
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 124
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->CHANNEL:Lorg/schabi/newpipe/util/InfoCache$Type;

    new-instance v1, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda7;-><init>(ILjava/lang/String;)V

    .line 125
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 124
    invoke-static {p2, p0, p1, v0, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getChannelTab(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Z)Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 132
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 134
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/util/InfoCache$Type;->CHANNEL_TAB:Lorg/schabi/newpipe/util/InfoCache$Type;

    new-instance v2, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda1;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 135
    invoke-static {v2}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    .line 133
    invoke-static {p2, p0, v0, v1, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getCommentsInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 152
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 153
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->COMMENTS:Lorg/schabi/newpipe/util/InfoCache$Type;

    new-instance v1, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda8;-><init>(ILjava/lang/String;)V

    .line 154
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 153
    invoke-static {p2, p0, p1, v0, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getKioskInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 196
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->KIOSK:Lorg/schabi/newpipe/util/InfoCache$Type;

    new-instance v1, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda6;-><init>(ILjava/lang/String;)V

    .line 197
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 196
    invoke-static {p2, p0, p1, v0, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getMoreChannelTabItems(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 143
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 144
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getMoreCommentItems(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 171
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 172
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda13;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getMoreCommentItems(ILorg/schabi/newpipe/extractor/comments/CommentsInfo;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 162
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 163
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda11;-><init>(ILorg/schabi/newpipe/extractor/comments/CommentsInfo;Lorg/schabi/newpipe/extractor/Page;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getMoreKioskItems(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 203
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getMorePlaylistItems(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 188
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 189
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda12;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getMoreSearchItems(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;
    .locals 6

    .line 94
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 95
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 179
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 180
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->PLAYLIST:Lorg/schabi/newpipe/util/InfoCache$Type;

    new-instance v1, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda9;-><init>(ILjava/lang/String;)V

    .line 181
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 180
    invoke-static {p2, p0, p1, v0, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;
    .locals 2

    .line 116
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 117
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache$Type;->STREAM:Lorg/schabi/newpipe/util/InfoCache$Type;

    new-instance v1, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;)V

    .line 118
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    .line 117
    invoke-static {p2, p0, p1, v0, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static isCached(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Z
    .locals 0

    .line 280
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/ExtractorHelper;->loadFromCache(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Maybe;->blockingGet()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static loadFromCache(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 1

    .line 260
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 261
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/util/InfoCache$Type;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Maybe;->defer(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static searchFor(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 80
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 81
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static showMetaInfoInTextView(Ljava/util/List;Landroid/widget/TextView;Landroid/view/View;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
    .locals 14

    move-object/from16 v0, p2

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p0, :cond_6

    .line 304
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 305
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f12043c

    .line 306
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 305
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 311
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/MetaInfo;

    .line 313
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    const-string v6, " \u2022 "

    if-nez v5, :cond_2

    .line 314
    const-string v5, "<b>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</b>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_2
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->getContent()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v5

    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 319
    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 320
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 322
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :goto_0
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->getUrls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    if-nez v4, :cond_4

    .line 326
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 328
    :cond_4
    const-string v5, "<br/><br/>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :goto_1
    const-string v5, "<a href=\""

    .line 332
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->getUrls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->getUrlTexts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/schabi/newpipe/util/ExtractorHelper;->capitalizeIfAllUppercase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</a>"

    .line 334
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 338
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    sget-object v13, Lorg/schabi/newpipe/util/text/TextLinkifier;->SET_LINK_MOVEMENT_METHOD:Ljava/util/function/Consumer;

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v7, p1

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v13}, Lorg/schabi/newpipe/util/text/TextLinkifier;->fromHtml(Landroid/widget/TextView;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    return-void

    :cond_6
    :goto_2
    const/16 p0, 0x8

    .line 307
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 308
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static suggestionsFor(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 104
    invoke-static {p0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 105
    new-instance v0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda15;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method
