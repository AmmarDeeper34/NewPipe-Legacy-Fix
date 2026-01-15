.class public abstract Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;
.super Ljava/lang/Object;
.source "SoundcloudParsingHelper.java"


# static fields
.field private static final ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES:Ljava/util/List;

.field private static final ON_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final VISUALS_IMAGE_SUFFIXES:Ljava/util/List;

.field private static clientId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$cbZrfm8V_p-3P5aWafxhnXRqFgo(Ljava/lang/String;Lorg/schabi/newpipe/extractor/utils/ImageSuffix;)Lorg/schabi/newpipe/extractor/Image;
    .locals 4

    .line 491
    new-instance v0, Lorg/schabi/newpipe/extractor/Image;

    .line 492
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getSuffix()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 493
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getWidth()I

    move-result v2

    .line 494
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->getResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$d2DcD2YYmovhxMGfXKAOOd435zA(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    .locals 4

    .line 390
    const-string v0, "kind"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "playlist"

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "like"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return-void

    .line 399
    :pswitch_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    return-void

    .line 396
    :pswitch_1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamInfoItemExtractor;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    return-void

    .line 393
    :pswitch_2
    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelInfoItemExtractor;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    return-void

    :pswitch_3
    const/4 v0, 0x0

    .line 405
    invoke-virtual {p1, v2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    if-nez v0, :cond_4

    .line 407
    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudLikesInfoItemExtractor;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudLikesInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    goto :goto_1

    .line 408
    :cond_4
    new-instance p1, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudPlaylistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    move-object v0, p1

    .line 406
    :goto_1
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x32af97 -> :sswitch_3
        0x36ebcb -> :sswitch_2
        0x697f14b -> :sswitch_1
        0x700681d2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 18

    .line 68
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    sget-object v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v2, "mini"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v3, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v3, "t20x20"

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4, v4, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v3, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v4, "small"

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5, v5, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v5, "badge"

    const/16 v6, 0x2f

    invoke-direct {v4, v5, v6, v6, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v5, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v6, "t50x50"

    const/16 v7, 0x32

    invoke-direct {v5, v6, v7, v7, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v6, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v7, "t60x60"

    const/16 v8, 0x3c

    invoke-direct {v6, v7, v8, v8, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v8, "t67x67"

    const/16 v9, 0x43

    invoke-direct {v7, v8, v9, v9, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v8, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v9, "t80x80"

    const/16 v10, 0x50

    invoke-direct {v8, v9, v10, v10, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v9, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v10, "large"

    const/16 v11, 0x64

    invoke-direct {v9, v10, v11, v11, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v10, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v11, "t120x120"

    const/16 v12, 0x78

    invoke-direct {v10, v11, v12, v12, v1}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    sget-object v11, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v12, "t200x200"

    const/16 v13, 0xc8

    invoke-direct {v1, v12, v13, v13, v11}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v12, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v13, "t240x240"

    const/16 v14, 0xf0

    invoke-direct {v12, v13, v14, v14, v11}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v13, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v14, "t250x250"

    const/16 v15, 0xfa

    invoke-direct {v13, v14, v15, v15, v11}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v14, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v15, "t300x300"

    move-object/from16 v16, v0

    const/16 v0, 0x12c

    invoke-direct {v14, v15, v0, v0, v11}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const-string v15, "t500x500"

    move-object/from16 v17, v1

    const/16 v1, 0x1f4

    invoke-direct {v0, v15, v1, v1, v11}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    const/16 v1, 0xf

    new-array v1, v1, [Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const/4 v15, 0x0

    aput-object v16, v1, v15

    const/4 v15, 0x1

    aput-object v2, v1, v15

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    aput-object v5, v1, v2

    const/4 v2, 0x5

    aput-object v6, v1, v2

    const/4 v2, 0x6

    aput-object v7, v1, v2

    const/4 v2, 0x7

    aput-object v8, v1, v2

    const/16 v2, 0x8

    aput-object v9, v1, v2

    const/16 v2, 0x9

    aput-object v10, v1, v2

    const/16 v2, 0xa

    aput-object v17, v1, v2

    const/16 v2, 0xb

    aput-object v12, v1, v2

    const/16 v2, 0xc

    aput-object v13, v1, v2

    const/16 v2, 0xd

    aput-object v14, v1, v2

    const/16 v2, 0xe

    aput-object v0, v1, v2

    .line 69
    invoke-static {v1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES:Ljava/util/List;

    .line 87
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const/16 v1, 0x4d8

    const/16 v2, 0x104

    const-string v3, "t1240x260"

    invoke-direct {v0, v3, v1, v2, v11}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;

    const/16 v2, 0x9b0

    const/16 v3, 0x208

    const-string v4, "t2480x520"

    invoke-direct {v1, v4, v2, v3, v11}, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    .line 88
    invoke-static {v0, v1}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->VISUALS_IMAGE_SUFFIXES:Ljava/util/List;

    .line 94
    const-string v0, "^https?://on.soundcloud.com/[0-9a-zA-Z]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->ON_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static declared-synchronized clientId()Ljava/lang/String;
    .locals 6

    const-class v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId:Ljava/lang/String;

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 106
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v1

    .line 108
    const-string v2, "https://soundcloud.com"

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v2}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 113
    const-string v3, "script[src*=\"sndcdn.com/assets/\"][src$=\".js\"]"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    .line 116
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 118
    const-string v3, "Range"

    const-string v4, "bytes=0-50000"

    invoke-static {v4}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 120
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 121
    const-string v5, "src"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 124
    :try_start_2
    const-string v5, ",client_id:\"(.*?)\""

    invoke-virtual {v1, v4, v3}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v4

    .line 125
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-static {v5, v4}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId:Ljava/lang/String;
    :try_end_2
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    monitor-exit v0

    return-object v4

    .line 134
    :cond_2
    :try_start_3
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t extract client id"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static getAllImagesFromArtworkOrAvatarUrl(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 462
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 466
    :cond_0
    const-string v0, "-large."

    const-string v1, "-%s."

    .line 469
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES:Ljava/util/List;

    .line 466
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromImageUrlReturned(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getAllImagesFromImageUrlReturned(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 490
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 495
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getAllImagesFromTrackObject(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 1

    .line 447
    const-string v0, "artwork_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromArtworkOrAvatarUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 451
    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "avatar_url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 453
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromArtworkOrAvatarUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 456
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get track or track user\'s thumbnails"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAllImagesFromVisualUrl(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 476
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 480
    :cond_0
    const-string v0, "-original."

    const-string v1, "-%s."

    .line 483
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->VISUALS_IMAGE_SUFFIXES:Ljava/util/List;

    .line 480
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getAllImagesFromImageUrlReturned(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAvatarUrl(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 435
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "avatar_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInfoItemsFromApi(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 372
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    .line 380
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    const-string v0, "collection"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 386
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 387
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 388
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;)V

    .line 389
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 416
    :try_start_1
    const-string p0, "next_href"

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 417
    const-string p1, "client_id="

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 418
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&client_id="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-object p0

    .line 421
    :catch_0
    const-string p0, ""

    return-object p0

    :catch_1
    move-exception p0

    .line 382
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json response"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 374
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 375
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get streams from API, HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getNextPageUrl(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 353
    :try_start_0
    const-string v0, "next_href"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 354
    const-string v0, "client_id="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&client_id="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    .line 359
    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static getStreamsFromApi(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 366
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getStreamsFromApi(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStreamsFromApi(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 324
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    .line 325
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    .line 324
    invoke-virtual {v0, p1, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_3

    .line 333
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    const-string v0, "collection"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 340
    instance-of v2, v1, Lcom/grack/nanojson/JsonObject;

    if-eqz v2, :cond_0

    .line 341
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 342
    new-instance v2, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamInfoItemExtractor;

    if-eqz p2, :cond_1

    .line 343
    const-string v3, "track"

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    :cond_1
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 342
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    goto :goto_0

    .line 347
    :cond_2
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getNextPageUrl(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 335
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p2, "Could not parse json response"

    invoke-direct {p1, p2, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 327
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 328
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not get streams from API, HTTP "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUploaderName(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 441
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "username"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUploaderUrl(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 429
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "permalink_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 430
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUsersFromApi(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 271
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p1

    .line 276
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    const-string v0, "collection"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 283
    instance-of v2, v1, Lcom/grack/nanojson/JsonObject;

    if-eqz v2, :cond_0

    .line 284
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 285
    new-instance v2, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelInfoItemExtractor;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudChannelInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getNextPageUrl(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 278
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json response"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getUsersFromApiMinItems(ILorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 253
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getUsersFromApi(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 255
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p0, :cond_0

    .line 256
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getUsersFromApi(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static parseDate(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 4

    .line 140
    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->fromInstant(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object p0
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 143
    :try_start_1
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    const-string v2, "yyyy/MM/dd HH:mm:ss +0000"

    .line 144
    invoke-static {v2}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v2

    .line 143
    invoke-static {p0, v2}, Lj$/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/OffsetDateTime;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/OffsetDateTime;)V
    :try_end_1
    .catch Lj$/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 147
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse date: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static resolveFor(Lorg/schabi/newpipe/extractor/downloader/Downloader;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3

    .line 160
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api-v2.soundcloud.com/resolve?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&client_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    :try_start_0
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 168
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not parse json response"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static resolveIdWithWidgetApi(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 199
    sget-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->ON_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->head(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->latestUrl()Ljava/lang/String;

    move-result-object p0

    .line 203
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 205
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not follow on.soundcloud.com redirect"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 210
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 215
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeMAndWWWFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 219
    :try_start_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 226
    :try_start_2
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 227
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api-widget.soundcloud.com/resolve?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&format=json&client_id="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 228
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    .line 229
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    .line 228
    invoke-virtual {v0, p0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 231
    const-string v0, "id"

    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getValue(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 235
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not resolve id with embedded player. ClientId not extracted"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 233
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not parse JSON response"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 221
    :catch_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given URL is not valid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resolveUrlWithEmbedPlayer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 181
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v0

    .line 182
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://w.soundcloud.com/player/?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    .line 181
    invoke-virtual {v0, p0, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    const-string v0, "link[rel=\"canonical\"]"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string v0, "abs:href"

    .line 185
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
