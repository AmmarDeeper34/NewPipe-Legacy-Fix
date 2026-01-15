.class public abstract Lorg/schabi/newpipe/util/image/PicassoHelper;
.super Ljava/lang/Object;
.source "PicassoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PicassoHelper"

.field private static picassoCache:Lcom/squareup/picasso/Cache;

.field private static picassoDownloaderClient:Lokhttp3/OkHttpClient;

.field private static picassoInstance:Lcom/squareup/picasso/Picasso;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static cancelTag(Ljava/lang/Object;)V
    .locals 1

    .line 87
    sget-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoInstance:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Picasso;->cancelTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 1

    .line 77
    sget-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoInstance:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso;->shutdown()V

    .line 78
    sget-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoCache:Lcom/squareup/picasso/Cache;

    invoke-interface {v0}, Lcom/squareup/picasso/Cache;->clear()V

    .line 79
    sget-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoDownloaderClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lokhttp3/Cache;->delete()V

    .line 83
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getImageFromCacheIfPresent(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 189
    sget-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoCache:Lcom/squareup/picasso/Cache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .line 51
    new-instance v0, Lcom/squareup/picasso/LruCache;

    const/high16 v1, 0xa00000

    invoke-direct {v0, v1}, Lcom/squareup/picasso/LruCache;-><init>(I)V

    sput-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoCache:Lcom/squareup/picasso/Cache;

    .line 52
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lokhttp3/Cache;

    new-instance v2, Ljava/io/File;

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "picasso"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v3, 0x3200000

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoDownloaderClient:Lokhttp3/OkHttpClient;

    .line 59
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    sget-object p0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoCache:Lcom/squareup/picasso/Cache;

    .line 60
    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Picasso$Builder;->memoryCache(Lcom/squareup/picasso/Cache;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object p0

    new-instance v0, Lcom/squareup/picasso/OkHttp3Downloader;

    sget-object v1, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoDownloaderClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1}, Lcom/squareup/picasso/OkHttp3Downloader;-><init>(Lokhttp3/OkHttpClient;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso$Builder;->downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object p0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 62
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso$Builder;->defaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object p0

    sput-object p0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoInstance:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method public static loadAvatar(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const v0, 0x7f0801b6

    .line 100
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadImageDefault(Ljava/lang/String;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static loadAvatar(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const v0, 0x7f0801b6

    .line 96
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadImageDefault(Ljava/util/List;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static loadBanner(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const v0, 0x7f0801b5

    .line 117
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadImageDefault(Ljava/util/List;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static loadDetailsThumbnail(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;
    .locals 2

    .line 112
    invoke-static {p0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0801b8

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadImageDefault(Ljava/lang/String;IZ)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method private static loadImageDefault(Ljava/lang/String;I)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const/4 v0, 0x1

    .line 200
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadImageDefault(Ljava/lang/String;IZ)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method private static loadImageDefault(Ljava/lang/String;IZ)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 209
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/schabi/newpipe/util/image/ImageStrategy;->shouldLoadImages()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoInstance:Lcom/squareup/picasso/Picasso;

    .line 216
    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 217
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 219
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    :cond_1
    return-object p0

    .line 210
    :cond_2
    :goto_0
    sget-object p0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoInstance:Lcom/squareup/picasso/Picasso;

    const/4 p2, 0x0

    .line 211
    invoke-virtual {p0, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 212
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 213
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method private static loadImageDefault(Ljava/util/List;I)Lcom/squareup/picasso/RequestCreator;
    .locals 0

    .line 195
    invoke-static {p0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadImageDefault(Ljava/lang/String;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static loadNotificationIcon(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const v0, 0x7f08012d

    .line 133
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadImageDefault(Ljava/lang/String;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static loadPlaylistThumbnail(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const v0, 0x7f0801b7

    .line 125
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadImageDefault(Ljava/lang/String;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static loadPlaylistThumbnail(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const v0, 0x7f0801b7

    .line 121
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadImageDefault(Ljava/util/List;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static loadScaledDownThumbnail(Landroid/content/Context;Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 140
    invoke-static {p1}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadThumbnail(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/util/image/PicassoHelper$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/util/image/PicassoHelper$1;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static loadSeekbarThumbnailPreview(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    .line 129
    sget-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoInstance:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static loadThumbnail(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const v0, 0x7f0801b8

    .line 108
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadImageDefault(Ljava/lang/String;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static loadThumbnail(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;
    .locals 1

    const v0, 0x7f0801b8

    .line 104
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadImageDefault(Ljava/util/List;I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method public static setIndicatorsEnabled(Z)V
    .locals 1

    .line 91
    sget-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoInstance:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Picasso;->setIndicatorsEnabled(Z)V

    return-void
.end method

.method public static terminate()V
    .locals 2

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoCache:Lcom/squareup/picasso/Cache;

    .line 68
    sput-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoDownloaderClient:Lokhttp3/OkHttpClient;

    .line 70
    sget-object v1, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoInstance:Lcom/squareup/picasso/Picasso;

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso;->shutdown()V

    .line 72
    sput-object v0, Lorg/schabi/newpipe/util/image/PicassoHelper;->picassoInstance:Lcom/squareup/picasso/Picasso;

    :cond_0
    return-void
.end method
