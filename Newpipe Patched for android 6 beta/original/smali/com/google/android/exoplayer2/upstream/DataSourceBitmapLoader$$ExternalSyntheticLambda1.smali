.class public final synthetic Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;->$r8$lambda$3OB_jRe3ORvzHRoZN3QhaM1u9uE(Lcom/google/android/exoplayer2/upstream/DataSourceBitmapLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
