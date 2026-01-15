.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;
.super Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;
.source "YoutubeSubscriptionExtractor.java"


# direct methods
.method public static synthetic $r8$lambda$04jujdhJDrEEceoWY9Y3REy47ww(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;[Ljava/lang/String;)Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 151
    aget-object v0, p1, v0

    const-string v1, "http://"

    const-string v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v1, "https://www.youtube.com/channel/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    new-instance v1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 154
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result p0

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-direct {v1, p0, v0, p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U-dLB10KnBgXJqO1CspFwGvgchI(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 147
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tRz_RY79fmUuQjHuFziqwNgafUE([Ljava/lang/String;)Z
    .locals 1

    .line 148
    array-length p0, p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;)V
    .locals 1

    .line 37
    sget-object v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->INPUT_STREAM:Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public fromCsvInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 3

    .line 144
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :try_start_1
    invoke-static {v0}, Lj$/io/BufferedReaderRetargetClass;->lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;

    move-result-object p1

    const-wide/16 v1, 0x1

    .line 146
    invoke-interface {p1, v1, v2}, Lj$/util/stream/Stream;->skip(J)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor$$ExternalSyntheticLambda0;-><init>()V

    .line 147
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 148
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;)V

    .line 149
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor$$ExternalSyntheticLambda3;-><init>()V

    .line 159
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 160
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/UncheckedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 144
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/UncheckedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 162
    :goto_1
    new-instance v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v1, "Error reading CSV file"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public fromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "csv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "application/json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "text/csv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "application/zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "text/comma-separated-values"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 67
    new-instance p1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;->fromJsonInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;->fromZipInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;->fromCsvInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f4f2e18 -> :sswitch_6
        -0x4a67ee1e -> :sswitch_5
        -0x3be339dc -> :sswitch_4
        -0x29cf5b9 -> :sswitch_3
        0x18206 -> :sswitch_2
        0x1d721 -> :sswitch_1
        0x31ece8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fromJsonInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 9

    .line 75
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->array()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonArray;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 83
    instance-of v3, v2, Lcom/grack/nanojson/JsonObject;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    const-string v3, "snippet"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 89
    const-string v3, "resourceId"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v5, "channelId"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x18

    if-eq v5, v7, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    new-instance v4, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    iget-object v5, p0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://www.youtube.com/channel/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "title"

    .line 96
    invoke-virtual {v2, v7, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v3, v2}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 99
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 100
    :cond_3
    new-instance p1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v0, "Found only invalid channel ids"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-object v0

    :catch_0
    move-exception p1

    .line 77
    new-instance v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v1, "Invalid json input stream"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public fromZipInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2

    .line 107
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ".csv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 112
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;->fromCsvInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_2
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_0

    .line 124
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 128
    new-instance p1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v0, "Unable to find a valid subscriptions.csv file (try extracting and selecting the csv file)"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 125
    :goto_2
    new-instance v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v1, "Error reading contents of zip file"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getRelatedUrl()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "https://takeout.google.com/takeout/custom/youtube"

    return-object v0
.end method
