.class public abstract Lorg/schabi/newpipe/util/ServiceHelper;
.super Ljava/lang/Object;
.source "ServiceHelper.java"


# static fields
.field private static final DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/StreamingService;


# direct methods
.method public static synthetic $r8$lambda$hAeD34jvebg6w8TNlYSgWfwGk10(ILorg/schabi/newpipe/extractor/StreamingService;)Z
    .locals 0

    .line 155
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$to8mSDIgQspKK8bXL-7Hkfu--Gs(ILorg/schabi/newpipe/extractor/StreamingService;)Z
    .locals 0

    .line 140
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    sput-object v0, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/StreamingService;

    return-void
.end method

.method public static getCacheExpirationMillis(I)J
    .locals 3

    .line 178
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 179
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    .line 181
    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIcon(I)I
    .locals 1

    .line 0
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const p0, 0x7f0800fa

    return p0

    :cond_0
    const p0, 0x7f080138

    return p0

    :cond_1
    const p0, 0x7f08013a

    return p0

    :cond_2
    const p0, 0x7f080139

    return p0

    :cond_3
    const p0, 0x7f0800fe

    return p0

    :cond_4
    const p0, 0x7f080155

    return p0
.end method

.method public static getImportInstructions(I)I
    .locals 1

    .line 0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p0, 0x7f12020a

    return p0

    :cond_1
    const p0, 0x7f12020e

    return p0
.end method

.method public static getImportInstructionsHint(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p0, 0x7f12020b

    return p0
.end method

.method public static getNameOfServiceById(I)Ljava/lang/String;
    .locals 2

    .line 139
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/ServiceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/util/ServiceHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 140
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 141
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/util/ServiceHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/ServiceHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 142
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/util/ServiceHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/ServiceHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 143
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    const-string v0, "<unknown>"

    .line 144
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getSelectedService(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 3

    .line 126
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1200c5

    .line 127
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1200db

    .line 128
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 131
    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSelectedServiceId(Landroid/content/Context;)I
    .locals 1

    .line 119
    invoke-static {p0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedService(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    sget-object v0, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 120
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 121
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result p0

    return p0
.end method

.method public static getServiceById(I)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 2

    .line 154
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/ServiceHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/util/ServiceHelper$$ExternalSyntheticLambda3;-><init>(I)V

    .line 155
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 156
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lj$/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/StreamingService;

    return-object p0
.end method

.method public static getTranslatedFilterString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "music_videos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "music_songs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "music_albums"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "channels"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "conferences"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "users"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_7
    const-string v0, "music_artists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_8
    const-string v0, "videos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_9
    const-string v0, "tracks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_a
    const-string v0, "events"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_b
    const-string v0, "sepia_videos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_c
    const-string v0, "music_playlists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_d
    const-string v0, "playlists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const p0, 0x7f120453

    .line 73
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p0, 0x7f120022

    .line 75
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p0, 0x7f120085

    .line 60
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p0, 0x7f1200aa

    .line 69
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p0, 0x7f1204bb

    .line 67
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p0, 0x7f120023

    .line 54
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const p0, 0x7f12003d

    .line 77
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const p0, 0x7f120496

    .line 65
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const p0, 0x7f120165

    .line 71
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const p0, 0x7f1204c7

    .line 58
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    const p0, 0x7f12037a

    .line 63
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6f36471f -> :sswitch_d
        -0x6a0208b9 -> :sswitch_c
        -0x4fb0b23f -> :sswitch_b
        -0x4cf81ee7 -> :sswitch_a
        -0x3399c778 -> :sswitch_9
        -0x30ad84a8 -> :sswitch_8
        -0x21ca560e -> :sswitch_7
        0x179a1 -> :sswitch_6
        0x6a68e08 -> :sswitch_5
        0x40895ed7 -> :sswitch_4
        0x556423d0 -> :sswitch_3
        0x59631b3e -> :sswitch_2
        0x5eb80f64 -> :sswitch_1
        0x7d0f46b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static initService(Landroid/content/Context;I)V
    .locals 2

    .line 186
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 188
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const v1, 0x7f120356

    .line 189
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    const-string p1, "name"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 203
    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->setInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static initServices(Landroid/content/Context;)V
    .locals 2

    .line 209
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 210
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v1

    invoke-static {p0, v1}, Lorg/schabi/newpipe/util/ServiceHelper;->initService(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setSelectedServiceId(Landroid/content/Context;I)V
    .locals 0

    .line 163
    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    sget-object p1, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    .line 168
    :goto_0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/ServiceHelper;->setSelectedServicePreferences(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static setSelectedServicePreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 173
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f1200c5

    .line 174
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
