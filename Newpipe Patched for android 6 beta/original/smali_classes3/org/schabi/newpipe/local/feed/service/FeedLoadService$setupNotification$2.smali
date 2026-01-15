.class final synthetic Lorg/schabi/newpipe/local/feed/service/FeedLoadService$setupNotification$2;
.super Ljava/lang/Object;
.source "FeedLoadService.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->setupNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$setupNotification$2;->$tmp0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 162
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$setupNotification$2;->accept(Lorg/schabi/newpipe/local/feed/service/FeedLoadState;)V

    return-void
.end method

.method public final accept(Lorg/schabi/newpipe/local/feed/service/FeedLoadState;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$setupNotification$2;->$tmp0:Lorg/schabi/newpipe/local/feed/service/FeedLoadService;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->access$updateNotificationProgress(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;Lorg/schabi/newpipe/local/feed/service/FeedLoadState;)V

    return-void
.end method
