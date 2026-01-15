.class public final Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;
.super Ljava/lang/Object;
.source "DataSourceBitmapLoader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/BitmapLoader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_EXECUTOR_SERVICE:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier;"
        }
    .end annotation
.end field


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method public static synthetic $r8$lambda$3OB_jRe3ORvzHRoZN3QhaM1u9uE(Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 87
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->load(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C445Ko-GmaX1CMIV0tbAAfvI5Ks()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 1

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$MBfIWnUVvgOV0o6ahuVVUwYF53Y([B)Landroid/graphics/Bitmap;
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->decode([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda0;-><init>()V

    .line 52
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 63
    sget-object v0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;-><init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 76
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method private static decode([B)Landroid/graphics/Bitmap;
    .locals 2

    .line 91
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 92
    :cond_0
    const-string v0, "Could not decode image data"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    return-object p0
.end method

.method private static load(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 98
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    .line 99
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->readToEnd(Lcom/google/android/exoplayer2/upstream/DataSource;)[B

    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->decode([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/util/concurrent/ListenableFuture;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda2;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public loadBitmap(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public synthetic loadBitmapFromMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/BitmapLoader$-CC;->$default$loadBitmapFromMetadata(Lcom/google/android/exoplayer2/util/BitmapLoader;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
