.class public final Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;
.super Ljava/lang/Object;
.source "NonUriHlsDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory$Builder;
    }
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final playlistStringByteArray:[B


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;[B)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 99
    iput-object p2, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;->playlistStringByteArray:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;[BLorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;[B)V

    return-void
.end method


# virtual methods
.method public createDataSource(I)Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 131
    new-instance p1, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;

    iget-object v0, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;->playlistStringByteArray:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;-><init>([B)V

    return-object p1

    .line 134
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/datasource/NonUriHlsDataSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    return-object p1
.end method
