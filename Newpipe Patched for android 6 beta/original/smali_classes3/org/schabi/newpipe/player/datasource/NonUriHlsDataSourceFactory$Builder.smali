.class public final Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;
.super Ljava/lang/Object;
.source "NonUriHlsDataSourceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private playlistString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;
    .locals 4

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;->playlistString:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;

    iget-object v1, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v2, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;->playlistString:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;[BLorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory-IA;)V

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No HLS valid playlist has been specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No DataSource.Factory valid instance has been specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method public setPlaylistString(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;->playlistString:Ljava/lang/String;

    return-void
.end method
