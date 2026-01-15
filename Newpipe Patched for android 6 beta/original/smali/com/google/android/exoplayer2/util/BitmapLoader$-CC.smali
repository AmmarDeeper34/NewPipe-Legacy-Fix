.class public abstract synthetic Lcom/google/android/exoplayer2/util/BitmapLoader$-CC;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# direct methods
.method public static $default$loadBitmapFromMetadata(Lcom/google/android/exoplayer2/util/BitmapLoader;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 52
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/util/BitmapLoader;->decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    .line 54
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    .line 55
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/BitmapLoader;->loadBitmap(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
