.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$3;
.super Ljava/lang/Object;
.source "MediaBrowserImpl.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->onSearch(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $query:Ljava/lang/String;

.field final synthetic $result:Landroidx/media/MediaBrowserServiceCompat$Result;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$3;->$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    iput-object p2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$3;->$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 393
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$3;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$3;->$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 398
    invoke-static {}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$onSearch$3;->$query:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Search error for query=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
