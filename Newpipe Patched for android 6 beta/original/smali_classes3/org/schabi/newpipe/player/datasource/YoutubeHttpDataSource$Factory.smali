.class public final Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;
.super Ljava/lang/Object;
.source "YoutubeHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private allowCrossProtocolRedirects:Z

.field private connectTimeoutMs:I

.field private contentTypePredicate:Lcom/google/common/base/Predicate;

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private keepPostFor302Redirects:Z

.field private rangeParameterEnabled:Z

.field private readTimeoutMs:I

.field private rnParameterEnabled:Z

.field private transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    const/16 v0, 0x1f40

    .line 108
    iput v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->connectTimeoutMs:I

    .line 109
    iput v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->readTimeoutMs:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->createDataSource()Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->createDataSource()Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;
    .locals 10

    .line 251
    new-instance v0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;

    iget v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->connectTimeoutMs:I

    iget v2, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->readTimeoutMs:I

    iget-boolean v3, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->allowCrossProtocolRedirects:Z

    iget-boolean v4, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rangeParameterEnabled:Z

    iget-boolean v5, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rnParameterEnabled:Z

    iget-object v6, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    iget-object v7, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->contentTypePredicate:Lcom/google/common/base/Predicate;

    iget-boolean v8, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->keepPostFor302Redirects:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource;-><init>(IIZZZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;ZLorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource-IA;)V

    .line 260
    iget-object v1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultRequestProperties(Ljava/util/Map;)Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clearAndSet(Ljava/util/Map;)V

    return-object p0
.end method

.method public setRangeParameterEnabled(Z)Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;
    .locals 0

    .line 178
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rangeParameterEnabled:Z

    return-object p0
.end method

.method public setRnParameterEnabled(Z)Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;
    .locals 0

    .line 196
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/datasource/YoutubeHttpDataSource$Factory;->rnParameterEnabled:Z

    return-object p0
.end method
