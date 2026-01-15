.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;
.super Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;
.source "YoutubeChannelExtractor.java"


# instance fields
.field private channelAgeGateRenderer:Lcom/grack/nanojson/JsonObject;

.field private channelHeader:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

.field private channelId:Ljava/lang/String;

.field private jsonResponse:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$HHUuvGn4hjiZXVnLgrHeBb8byeA(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 401
    const-string v0, "tabRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HQX53JTGdb4Gp-W3VGLt7YQ5da4(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 402
    const-string v0, "tabRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NveKC54YFG-Ulghp_Wow-m9hJd0(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Lcom/grack/nanojson/JsonObject;)V
    .locals 12

    move-object/from16 v0, p5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    const-string v1, "endpoint"

    move-object/from16 v3, p6

    invoke-virtual {v3, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "commandMetadata"

    .line 405
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "webCommandMetadata"

    .line 406
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "url"

    .line 407
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 409
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 410
    array-length v4, v2

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 414
    :cond_0
    array-length v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v2, v2, v4

    .line 422
    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelHeader:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 425
    :cond_1
    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iget-object v7, v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    iget-object v4, v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    invoke-direct {v6, v7, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;)V

    move-object v4, v6

    .line 429
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v8, "videos"

    const-string v7, "shorts"

    const-string v9, "playlists"

    const/4 v10, 0x0

    const/4 v11, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_1
    const/4 v5, -0x1

    goto :goto_2

    :sswitch_0
    const-string v5, "releases"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x4

    goto :goto_2

    :sswitch_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :sswitch_4
    const-string v5, "streams"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :cond_6
    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    .line 449
    :pswitch_0
    const-string p0, "albums"

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 434
    :pswitch_1
    new-instance v0, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelId:Ljava/lang/String;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda11;

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda11;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0, v8, v2}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;)V

    invoke-interface {p1, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 443
    :pswitch_2
    invoke-interface {v0, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 452
    :pswitch_3
    invoke-interface {v0, v9}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 446
    :pswitch_4
    const-string p0, "livestreams"

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x702b5f0d -> :sswitch_4
        -0x6f36471f -> :sswitch_3
        -0x35d4f489 -> :sswitch_2
        -0x30ad84a8 -> :sswitch_1
        -0x20dc26b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic $r8$lambda$c2iXUsmQRbr-ioIDKug0i4RDlwA(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;Ljava/util/List;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;

    move-result-object v0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelId:Ljava/lang/String;

    .line 388
    invoke-static {p2}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v1, ""

    .line 387
    invoke-virtual {v0, p0, p2, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic $r8$lambda$g7DRP905xW1GZqar7uW_NPaep1A()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    .line 184
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get avatars"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$q7REJIzRn7RZNIXsE_wGjYMeYLs()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    .line 146
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get avatars"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$tEG7aLnEuSXemy1c7w7AM0eI2YM(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Lcom/grack/nanojson/JsonArray;
    .locals 3

    .line 197
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->PAGE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    const-string v2, "banner"

    if-ne v0, v1, :cond_1

    .line 198
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "pageHeaderViewModel"

    .line 199
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 201
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "imageBannerViewModel"

    .line 203
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "image"

    .line 204
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "sources"

    .line 205
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0

    .line 210
    :cond_0
    new-instance p0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {p0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    return-object p0

    .line 213
    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    .line 214
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "thumbnails"

    .line 215
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u9iLORNYkLPSiHhV9gdMmuSZtF8(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Lcom/grack/nanojson/JsonArray;
    .locals 5

    .line 151
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$1;->$SwitchMap$org$schabi$newpipe$extractor$services$youtube$YoutubeChannelHelper$ChannelHeader$HeaderType:[I

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "avatar"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    const-string v3, "thumbnails"

    if-eq v0, v1, :cond_0

    .line 179
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 180
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0

    .line 174
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    const-string v0, "boxArt"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 175
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0

    .line 153
    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v0, "pageHeaderViewModel"

    .line 154
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 155
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 157
    const-string v1, "contentPreviewImageViewModel"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "sources"

    if-eqz v3, :cond_2

    .line 158
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 159
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 160
    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0

    .line 163
    :cond_2
    const-string v1, "decoratedAvatarViewModel"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 165
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    const-string v1, "avatarViewModel"

    .line 166
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 167
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    .line 168
    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p0

    return-object p0

    .line 172
    :cond_3
    new-instance p0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {p0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$w5Uh72Rh2N3Z4bedAJRSA3Xbf7U(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    new-instance v0, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelId:Ljava/lang/String;

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {v0, p2, p0, p3, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler$ChannelTabExtractorBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$zguECeeA4HUS4FBTI2En7zeKvWo(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
    .locals 8

    .line 438
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VideosTabExtractor;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v1, p5

    move-object v2, p6

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VideosTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-void
.end method

.method private getSubscriberCountFromPageChannelHeader(Lcom/grack/nanojson/JsonObject;)J
    .locals 6

    .line 272
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "pageHeaderViewModel"

    .line 273
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "metadata"

    .line 274
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 275
    const-string v1, "contentMetadataViewModel"

    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "metadataRows"

    .line 277
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 281
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "metadataParts"

    .line 283
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v5, 0x2

    if-ge v1, v5, :cond_0

    return-wide v3

    .line 293
    :cond_0
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    const-string v1, "text"

    .line 294
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    .line 295
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->mixedNumberWordToLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 297
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get subscriber count"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-wide v3
.end method

.method private getTabsForAgeRestrictedChannels()Ljava/util/List;
    .locals 3

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 475
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;Ljava/util/List;Ljava/lang/String;)V

    .line 479
    const-string v1, "videos"

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 480
    const-string v1, "shorts"

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 481
    const-string v1, "livestreams"

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 482
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getTabsForNonAgeRestrictedChannels()Ljava/util/List;
    .locals 8

    .line 380
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "twoColumnBrowseResultsRenderer"

    .line 381
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "tabs"

    .line 382
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 384
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 385
    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;Ljava/util/List;)V

    .line 394
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->getName()Ljava/lang/String;

    move-result-object v4

    .line 395
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 396
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->getId()Ljava/lang/String;

    move-result-object v5

    .line 398
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 399
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 400
    new-instance v1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 401
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda2;-><init>()V

    .line 402
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda3;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 403
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 461
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAvatars()Ljava/util/List;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 142
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelAgeGateRenderer:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    .line 143
    const-string v1, "avatar"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "thumbnails"

    .line 144
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda5;-><init>()V

    .line 145
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda8;-><init>()V

    .line 146
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelHeader:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda9;-><init>()V

    .line 150
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda5;-><init>()V

    .line 183
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda10;-><init>()V

    .line 184
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getBanners()Ljava/util/List;
    .locals 2

    .line 190
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 191
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelAgeGateRenderer:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelHeader:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda4;-><init>()V

    .line 196
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda5;-><init>()V

    .line 217
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    .line 0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 218
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .line 308
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 309
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelAgeGateRenderer:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 314
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelHeader:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "description"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->INTERACTIVE_TABBED:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    if-ne v2, v3, :cond_1

    .line 324
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    const-string v2, "metadata"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v2, "channelMetadataRenderer"

    .line 328
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 329
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 331
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get channel description"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFeedUrl()Ljava/lang/String;
    .locals 3

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getFeedUrlFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 228
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get feed URL"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .line 126
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 127
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelHeader:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->getChannelId(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 133
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 134
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelHeader:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelAgeGateRenderer:Lcom/grack/nanojson/JsonObject;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->getChannelName(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentChannelAvatars()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getParentChannelName()Ljava/lang/String;
    .locals 1

    .line 337
    const-string v0, ""

    return-object v0
.end method

.method public getParentChannelUrl()Ljava/lang/String;
    .locals 1

    .line 342
    const-string v0, ""

    return-object v0
.end method

.method public getSubscriberCount()J
    .locals 5

    .line 234
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 235
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelAgeGateRenderer:Lcom/grack/nanojson/JsonObject;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelHeader:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    if-eqz v0, :cond_5

    .line 240
    iget-object v3, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->INTERACTIVE_TABBED:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    if-ne v3, v4, :cond_1

    return-wide v1

    .line 245
    :cond_1
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    .line 246
    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->PAGE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    if-ne v3, v4, :cond_2

    .line 247
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->getSubscriberCountFromPageChannelHeader(Lcom/grack/nanojson/JsonObject;)J

    move-result-wide v0

    return-wide v0

    .line 252
    :cond_2
    const-string v3, "subscriberCountText"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 253
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_3
    const-string v3, "subtitle"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 255
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 260
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->mixedNumberWordToLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get subscriber count"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    return-wide v1
.end method

.method public getTabs()Ljava/util/List;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 371
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelAgeGateRenderer:Lcom/grack/nanojson/JsonObject;

    if-nez v0, :cond_0

    .line 372
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->getTabsForNonAgeRestrictedChannels()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 375
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->getTabsForAgeRestrictedChannels()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 3

    .line 488
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 489
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelAgeGateRenderer:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    const-string v1, "microformat"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "microformatDataRenderer"

    .line 494
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "tags"

    .line 495
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 496
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 497
    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    const-class v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 498
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda7;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 499
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 117
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 119
    :catch_0
    invoke-super {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVerified()Z
    .locals 2

    .line 353
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->assertPageFetched()V

    .line 354
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelAgeGateRenderer:Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelHeader:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    if-eqz v0, :cond_1

    .line 364
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->isChannelVerified(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Z

    move-result v0

    return v0

    .line 360
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get channel verified status, no channel header has been extracted"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 3

    .line 101
    invoke-super {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->resolveChannelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v1

    .line 104
    const-string v2, "EgZ2aWRlb3PyBgQKAjoA"

    invoke-static {p1, v2, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->getChannelResponse(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;

    move-result-object p1

    .line 107
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    .line 108
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->getChannelHeader(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelHeader:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    .line 109
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelResponseData;->channelId:Ljava/lang/String;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelId:Ljava/lang/String;

    .line 110
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->jsonResponse:Lcom/grack/nanojson/JsonObject;

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->getChannelAgeGateRenderer(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->channelAgeGateRenderer:Lcom/grack/nanojson/JsonObject;

    return-void
.end method
