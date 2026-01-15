.class final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$1;
.super Ljava/lang/Object;
.source "MediaBrowserImpl.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $notifyChildrenChanged:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$1;->$notifyChildrenChanged:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$1;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$1;->$notifyChildrenChanged:Ljava/util/function/Consumer;

    const-string v0, "playlists"

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
