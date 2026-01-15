.class public final Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "YoutubeHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$NullFilteringHeadersMap;,
        Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;
    }
.end annotation


# static fields
.field private static final POST_BODY:[B

.field private static final TAG:Ljava/lang/String; = "YoutubeHttpDataSource"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesToRead:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;

.field private final contentTypePredicate:Lcom/google/common/base/Predicate;

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private inputStream:Ljava/io/InputStream;

.field private final keepPostFor302Redirects:Z

.field private opened:Z

.field private final rangeParameterEnabled:Z

.field private final readTimeoutMillis:I

.field private requestNumber:J

.field private final requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private responseCode:I

.field private final rnParameterEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 275
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->POST_BODY:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x78t
        0x0t
    .end array-data
.end method

.method private constructor <init>(IIZZZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 312
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 313
    iput p1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connectTimeoutMillis:I

    .line 314
    iput p2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->readTimeoutMillis:I

    .line 315
    iput-boolean p3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 316
    iput-boolean p4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->rangeParameterEnabled:Z

    .line 317
    iput-boolean p5, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->rnParameterEnabled:Z

    .line 318
    iput-object p6, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 319
    iput-object p7, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    .line 320
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 321
    iput-boolean p8, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->keepPostFor302Redirects:Z

    const-wide/16 p1, 0x0

    .line 322
    iput-wide p1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestNumber:J

    return-void
.end method

.method synthetic constructor <init>(IIZZZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;ZLorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;-><init>(IIZZZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Z)V

    return-void
.end method

.method private static buildRangeParameter(JJ)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p0, v0

    if-nez v4, :cond_0

    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 944
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    const-string v1, "&range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 947
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v1, p2, v2

    if-eqz v1, :cond_1

    add-long/2addr p0, p2

    const-wide/16 p2, 0x1

    sub-long/2addr p0, p2

    .line 949
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 951
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private closeConnectionQuietly()V
    .locals 3

    .line 905
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 907
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 909
    sget-object v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 911
    iput-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method private handleRedirect(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/URL;
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x7d1

    if-eqz p2, :cond_4

    .line 745
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    .line 754
    const-string v3, "https"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "http"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 755
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported protocol redirect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p1

    .line 761
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 762
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed cross-protocol redirect ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v2

    :cond_3
    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    .line 747
    new-instance p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {p2, p1, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p2

    .line 737
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const-string p2, "Null location redirect"

    invoke-direct {p1, p2, p3, v1, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p1
.end method

.method private static isCompressed(Ljava/net/HttpURLConnection;)Z
    .locals 1

    .line 916
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 917
    const-string v0, "gzip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private makeConnection(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 541
    new-instance v1, Ljava/net/URL;

    iget-object v2, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 542
    iget v2, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    .line 543
    iget-object v3, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    .line 544
    iget-wide v4, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 545
    iget-wide v6, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const/4 v12, 0x1

    .line 546
    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v8

    .line 548
    iget-boolean v9, v0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v9, :cond_0

    iget-boolean v9, v0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->keepPostFor302Redirects:Z

    if-nez v9, :cond_0

    const/4 v9, 0x1

    .line 551
    iget-object v10, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    invoke-direct/range {v0 .. v10}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v13, v0, 0x1

    const/16 v9, 0x14

    if-gt v0, v9, :cond_7

    const/4 v9, 0x0

    .line 559
    iget-object v10, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v9

    .line 561
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 562
    const-string v14, "Location"

    invoke-virtual {v9, v14}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x12e

    if-eq v2, v12, :cond_1

    const/4 v12, 0x3

    if-ne v2, v12, :cond_2

    :cond_1
    const/16 v12, 0x12c

    if-eq v10, v12, :cond_6

    const/16 v12, 0x12d

    if-eq v10, v12, :cond_6

    if-eq v10, v15, :cond_6

    const/16 v12, 0x12f

    if-eq v10, v12, :cond_6

    const/16 v12, 0x133

    if-eq v10, v12, :cond_6

    const/16 v12, 0x134

    if-ne v10, v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v12, 0x2

    if-ne v2, v12, :cond_5

    const/16 v12, 0x12c

    if-eq v10, v12, :cond_3

    const/16 v12, 0x12d

    if-eq v10, v12, :cond_3

    if-eq v10, v15, :cond_3

    const/16 v12, 0x12f

    if-ne v10, v12, :cond_5

    .line 577
    :cond_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 578
    iget-boolean v9, v0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->keepPostFor302Redirects:Z

    if-eqz v9, :cond_4

    iget v9, v0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    if-ne v9, v15, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 585
    :goto_1
    invoke-direct {v0, v1, v14, v11}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/URL;

    move-result-object v1

    goto :goto_3

    :cond_5
    return-object v9

    .line 570
    :cond_6
    :goto_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 571
    invoke-direct {v0, v1, v14, v11}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/URL;

    move-result-object v1

    :goto_3
    move v0, v13

    const/4 v12, 0x1

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    .line 592
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/net/NoRouteToHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many redirects: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x7d1

    const/4 v4, 0x1

    invoke-direct {v1, v2, v11, v3, v4}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v1
.end method

.method private makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4

    .line 625
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    .line 629
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "/videoplayback"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 630
    iget-boolean p3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->rnParameterEnabled:Z

    if-eqz p3, :cond_0

    const-string p3, "&rn="

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestNumber:J

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 632
    iget-wide v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestNumber:J

    .line 635
    :cond_0
    iget-boolean p3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->rangeParameterEnabled:Z

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 636
    invoke-static {p4, p5, p6, p7}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->buildRangeParameter(JJ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 638
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 642
    :cond_1
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 643
    iget p3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 644
    iget p3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 646
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 647
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    if-eqz v0, :cond_2

    .line 648
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 650
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 651
    invoke-interface {p3, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 653
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p10

    if-eqz p10, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/util/Map$Entry;

    .line 654
    invoke-interface {p10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/String;

    invoke-virtual {p1, v0, p10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_3
    iget-boolean p3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->rangeParameterEnabled:Z

    if-nez p3, :cond_4

    .line 658
    invoke-static {p4, p5, p6, p7}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->buildRangeRequestHeader(JJ)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 660
    const-string p4, "Range"

    invoke-virtual {p1, p4, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_4
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isTvHtml5StreamingUrl(Ljava/lang/String;)Z

    move-result p3

    .line 666
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isWebStreamingUrl(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    if-nez p3, :cond_5

    .line 668
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isWebEmbeddedPlayerStreamingUrl(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 669
    :cond_5
    const-string p4, "Origin"

    const-string p5, "https://www.youtube.com"

    invoke-virtual {p1, p4, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string p4, "Referer"

    invoke-virtual {p1, p4, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string p4, "Sec-Fetch-Dest"

    const-string p5, "empty"

    invoke-virtual {p1, p4, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string p4, "Sec-Fetch-Mode"

    const-string p5, "cors"

    invoke-virtual {p1, p4, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string p4, "Sec-Fetch-Site"

    const-string p5, "cross-site"

    invoke-virtual {p1, p4, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_6
    const-string p4, "TE"

    const-string p5, "trailers"

    invoke-virtual {p1, p4, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isAndroidStreamingUrl(Ljava/lang/String;)Z

    move-result p4

    .line 679
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isIosStreamingUrl(Ljava/lang/String;)Z

    move-result p2

    const/4 p5, 0x0

    .line 680
    const-string p6, "User-Agent"

    if-eqz p4, :cond_7

    .line 684
    invoke-static {p5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getAndroidUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object p2

    .line 683
    invoke-virtual {p1, p6, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    .line 687
    invoke-static {p5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getIosUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object p2

    .line 686
    invoke-virtual {p1, p6, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_9

    .line 690
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTvHtml5UserAgent()Ljava/lang/String;

    move-result-object p2

    .line 689
    invoke-virtual {p1, p6, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 693
    :cond_9
    const-string p2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0"

    invoke-virtual {p1, p6, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz p8, :cond_a

    .line 697
    const-string p2, "gzip"

    goto :goto_2

    :cond_a
    const-string p2, "identity"

    .line 696
    :goto_2
    const-string p3, "Accept-Encoding"

    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 700
    const-string p2, "POST"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 701
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 702
    sget-object p2, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->POST_BODY:[B

    array-length p3, p2

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 703
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 705
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    .line 706
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 707
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    return-object p1
.end method

.method private static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .locals 3

    if-eqz p0, :cond_4

    .line 867
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 872
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 875
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    goto :goto_0

    .line 883
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 884
    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 885
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 887
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 888
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 889
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 891
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 892
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method private openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 719
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private readInternal([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 836
    :cond_0
    iget-wide v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    .line 837
    iget-wide v2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    int-to-long v2, p3

    .line 841
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 844
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_3

    return v4

    .line 849
    :cond_3
    iget-wide p2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesRead:J

    .line 850
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->bytesTransferred(I)V

    return p1
.end method

.method private skipFully(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x1000

    .line 790
    new-array v3, v2, [B

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_3

    int-to-long v4, v2

    .line 792
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 793
    iget-object v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 794
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    int-to-long v5, v4

    sub-long/2addr p1, v5

    .line 810
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->bytesTransferred(I)V

    goto :goto_0

    .line 803
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const/16 p2, 0x7d8

    invoke-direct {p1, p3, p2, v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p1

    .line 795
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v0, 0x7d0

    invoke-direct {p1, p2, p3, v0, v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public clearAllRequestProperties()V
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 1

    .line 364
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 513
    :try_start_0
    iget-object v2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 515
    iget-wide v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    iget-wide v5, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesRead:J

    sub-long v5, v3, v5

    .line 518
    :goto_0
    iget-object v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v3, v5, v6}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 523
    :try_start_2
    new-instance v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 529
    :cond_1
    :goto_1
    iput-object v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 530
    invoke-direct {p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 531
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    if-eqz v1, :cond_2

    .line 532
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    .line 533
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    :cond_2
    return-void

    .line 529
    :goto_2
    iput-object v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 530
    invoke-direct {p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 531
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    if-eqz v1, :cond_3

    .line 532
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    .line 533
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    .line 535
    :cond_3
    throw v2
.end method

.method public getResponseCode()I
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 2

    .line 339
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 340
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 352
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$NullFilteringHeadersMap;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$NullFilteringHeadersMap;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 14

    .line 378
    iput-object p1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v0, 0x0

    .line 379
    iput-wide v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesRead:J

    .line 380
    iput-wide v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    .line 381
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    const/4 v2, 0x1

    .line 386
    :try_start_0
    iget-object v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {p0, v3}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->makeConnection(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 388
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    .line 389
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 397
    iget v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    const-string v5, "Content-Range"

    const/16 v6, 0xc8

    const-wide/16 v8, -0x1

    if-lt v4, v6, :cond_0

    const/16 v10, 0x12b

    if-le v4, v10, :cond_1

    :cond_0
    move-wide v10, v8

    goto/16 :goto_4

    .line 430
    :cond_1
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 431
    iget-object v7, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    if-eqz v7, :cond_3

    invoke-interface {v7, v4}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 432
    :cond_2
    invoke-direct {p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 433
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v4, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    throw v0

    .line 437
    :cond_3
    :goto_0
    iget-boolean v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->rangeParameterEnabled:Z

    if-nez v4, :cond_4

    .line 441
    iget v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    if-ne v4, v6, :cond_4

    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v4, v6, v0

    if-eqz v4, :cond_4

    move-wide v0, v6

    .line 450
    :cond_4
    invoke-static {v3}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->isCompressed(Ljava/net/HttpURLConnection;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 452
    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5

    .line 453
    iput-wide v6, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    goto :goto_1

    .line 455
    :cond_5
    const-string v6, "Content-Length"

    .line 456
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 457
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 455
    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v8

    if-eqz v7, :cond_6

    sub-long v8, v5, v0

    .line 460
    :cond_6
    iput-wide v8, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    goto :goto_1

    .line 466
    :cond_7
    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v5, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    :goto_1
    const/16 v5, 0x7d0

    .line 470
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v4, :cond_8

    .line 472
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    iget-object v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 481
    :cond_8
    :goto_2
    iput-boolean v2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    .line 482
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 485
    :try_start_2
    iget-object p1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {p0, v0, v1, p1}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->skipFully(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 496
    iget-wide v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->bytesToRead:J

    return-wide v0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 487
    invoke-direct {p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 488
    instance-of v0, p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v0, :cond_9

    .line 489
    check-cast p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    throw p1

    .line 491
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, p1, v1, v5, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v0

    .line 475
    :goto_3
    invoke-direct {p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 476
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, p1, v1, v5, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    throw v0

    .line 398
    :goto_4
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    .line 399
    iget v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    const/16 v6, 0x1a0

    if-ne v4, v6, :cond_b

    .line 401
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 400
    invoke-static {v4}, Lcom/google/android/exoplayer2/upstream/HttpUtil;->getDocumentSize(Ljava/lang/String;)J

    move-result-wide v4

    .line 402
    iget-wide v12, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v8, v12, v4

    if-nez v8, :cond_b

    .line 403
    iput-boolean v2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->opened:Z

    .line 404
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 405
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long p1, v2, v10

    if-eqz p1, :cond_a

    return-wide v2

    :cond_a
    return-wide v0

    .line 411
    :cond_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 415
    :try_start_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    goto :goto_5

    .line 416
    :cond_c
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    move-object v11, p1

    goto :goto_6

    .line 418
    :catch_2
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    goto :goto_5

    .line 421
    :goto_6
    invoke-direct {p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 422
    iget p1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    if-ne p1, v6, :cond_d

    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    :goto_7
    move-object v8, p1

    goto :goto_8

    :cond_d
    const/4 p1, 0x0

    goto :goto_7

    .line 425
    :goto_8
    new-instance v5, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v6, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->responseCode:I

    iget-object v10, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;[B)V

    throw v5

    :catch_3
    move-exception v0

    move-object p1, v0

    .line 391
    invoke-direct {p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->closeConnectionQuietly()V

    .line 392
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {p1, v0, v2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1
.end method

.method public read([BII)I
    .locals 0

    .line 503
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->readInternal([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 505
    iget-object p2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 357
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
