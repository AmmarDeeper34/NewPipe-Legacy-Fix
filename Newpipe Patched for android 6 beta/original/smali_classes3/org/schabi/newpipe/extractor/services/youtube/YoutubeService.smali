.class public Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "YoutubeService.java"


# static fields
.field private static final SUPPORTED_COUNTRIES:Ljava/util/List;

.field private static final SUPPORTED_LANGUAGES:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$5VFEiaGOC5qu56vOU9lzyFDwsSo(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    new-instance p2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor;

    .line 225
    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic $r8$lambda$HV4OvYsfV59iUJixjW_WCec4FKM(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    new-instance p2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingPodcastsEpisodesExtractor;

    .line 191
    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingPodcastsEpisodesExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic $r8$lambda$KenySfghh0bflWoC-WzE2GiLig0(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    new-instance p2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingGamingVideosExtractor;

    .line 199
    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingGamingVideosExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic $r8$lambda$Pxk3ANJvGvVTVEq2Gpez4F-3P78(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    new-instance p2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingMusicExtractor;

    .line 216
    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingMusicExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic $r8$lambda$qCkqkBs-5Hvtpfk9oS8XDJ9fSe0(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    new-instance p2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingMoviesAndShowsTrailersExtractor;

    .line 208
    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeTrendingMoviesAndShowsTrailersExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic $r8$lambda$qM-qbmewbXZkoE-QzdbWK8EqbSM(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    new-instance p2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeLiveExtractor;

    .line 183
    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/kiosk/YoutubeLiveExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method

.method static constructor <clinit>()V
    .locals 110

    .line 266
    const-string v0, "en-GB"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/Localization;->listFrom([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_LANGUAGES:Ljava/util/List;

    .line 278
    const-string v108, "YE"

    const-string v109, "ZW"

    const-string v1, "DZ"

    const-string v2, "AR"

    const-string v3, "AU"

    const-string v4, "AT"

    const-string v5, "AZ"

    const-string v6, "BH"

    const-string v7, "BD"

    const-string v8, "BY"

    const-string v9, "BE"

    const-string v10, "BO"

    const-string v11, "BA"

    const-string v12, "BR"

    const-string v13, "BG"

    const-string v14, "KH"

    const-string v15, "CA"

    const-string v16, "CL"

    const-string v17, "CO"

    const-string v18, "CR"

    const-string v19, "HR"

    const-string v20, "CY"

    const-string v21, "CZ"

    const-string v22, "DK"

    const-string v23, "DO"

    const-string v24, "EC"

    const-string v25, "EG"

    const-string v26, "SV"

    const-string v27, "EE"

    const-string v28, "FI"

    const-string v29, "FR"

    const-string v30, "GE"

    const-string v31, "DE"

    const-string v32, "GH"

    const-string v33, "GR"

    const-string v34, "GT"

    const-string v35, "HN"

    const-string v36, "HK"

    const-string v37, "HU"

    const-string v38, "IS"

    const-string v39, "IN"

    const-string v40, "ID"

    const-string v41, "IQ"

    const-string v42, "IE"

    const-string v43, "IL"

    const-string v44, "IT"

    const-string v45, "JM"

    const-string v46, "JP"

    const-string v47, "JO"

    const-string v48, "KZ"

    const-string v49, "KE"

    const-string v50, "KW"

    const-string v51, "LA"

    const-string v52, "LV"

    const-string v53, "LB"

    const-string v54, "LY"

    const-string v55, "LI"

    const-string v56, "LT"

    const-string v57, "LU"

    const-string v58, "MY"

    const-string v59, "MT"

    const-string v60, "MX"

    const-string v61, "ME"

    const-string v62, "MA"

    const-string v63, "NP"

    const-string v64, "NL"

    const-string v65, "NZ"

    const-string v66, "NI"

    const-string v67, "NG"

    const-string v68, "MK"

    const-string v69, "NO"

    const-string v70, "OM"

    const-string v71, "PK"

    const-string v72, "PA"

    const-string v73, "PG"

    const-string v74, "PY"

    const-string v75, "PE"

    const-string v76, "PH"

    const-string v77, "PL"

    const-string v78, "PT"

    const-string v79, "PR"

    const-string v80, "QA"

    const-string v81, "RO"

    const-string v82, "RU"

    const-string v83, "SA"

    const-string v84, "SN"

    const-string v85, "RS"

    const-string v86, "SG"

    const-string v87, "SK"

    const-string v88, "SI"

    const-string v89, "ZA"

    const-string v90, "KR"

    const-string v91, "ES"

    const-string v92, "LK"

    const-string v93, "SE"

    const-string v94, "CH"

    const-string v95, "TW"

    const-string v96, "TZ"

    const-string v97, "TH"

    const-string v98, "TN"

    const-string v99, "TR"

    const-string v100, "UG"

    const-string v101, "UA"

    const-string v102, "AE"

    const-string v103, "GB"

    const-string v104, "US"

    const-string v105, "UY"

    const-string v106, "VE"

    const-string v107, "VN"

    filled-new-array/range {v1 .. v109}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->listFrom([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_COUNTRIES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x4

    .line 87
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->LIVE:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "YouTube"

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getChannelExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;
    .locals 1

    .line 127
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 102
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getChannelTabExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
    .locals 1

    .line 132
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;->getChannelTabExtractor(Lorg/schabi/newpipe/extractor/StreamingService;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getChannelTabLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 107
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
    .locals 1

    .line 258
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getCommentsLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 252
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getFeedExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/feed/FeedExtractor;
    .locals 2

    .line 247
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getKioskList()Lorg/schabi/newpipe/extractor/kiosk/KioskList;
    .locals 9

    .line 166
    const-string v0, "live"

    new-instance v1, Lorg/schabi/newpipe/extractor/kiosk/KioskList;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    .line 167
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;

    .line 168
    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 170
    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingPodcastsEpisodesLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingPodcastsEpisodesLinkHandlerFactory;

    .line 172
    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingGamingVideosLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingGamingVideosLinkHandlerFactory;

    .line 174
    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingMoviesAndShowsTrailersLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingMoviesAndShowsTrailersLinkHandlerFactory;

    .line 176
    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingMusicLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingMusicLinkHandlerFactory;

    .line 180
    :try_start_0
    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V

    invoke-virtual {v1, v8, v3, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 188
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V

    const-string v8, "trending_podcasts_episodes"

    invoke-virtual {v1, v3, v4, v8}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 196
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V

    const-string v4, "trending_gaming"

    invoke-virtual {v1, v3, v5, v4}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 204
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V

    const-string v4, "trending_movies_and_shows"

    invoke-virtual {v1, v3, v6, v4}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 213
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v7}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V

    const-string v4, "trending_music"

    invoke-virtual {v1, v3, v7, v4}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 222
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V

    const-string v4, "Trending"

    invoke-virtual {v1, v3, v2, v4}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->setDefaultKiosk(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 233
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPlaylistExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;
    .locals 1

    .line 141
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMixId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getPlaylistLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 112
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 2

    .line 150
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "music_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSearchExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-object v0
.end method

.method public getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;
    .locals 1

    .line 117
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    .line 122
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
    .locals 1

    .line 97
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionExtractor()Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;
    .locals 1

    .line 241
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;)V

    return-object v0
.end method

.method public getSuggestionExtractor()Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;
    .locals 1

    .line 161
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    return-object v0
.end method

.method public getSupportedCountries()Ljava/util/List;
    .locals 1

    .line 296
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_COUNTRIES:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedLocalizations()Ljava/util/List;
    .locals 1

    .line 291
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_LANGUAGES:Ljava/util/List;

    return-object v0
.end method
