.class final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$postProcessFeed$2;
.super Ljava/lang/Object;
.source "FeedLoadManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->postProcessFeed()Lio/reactivex/rxjava3/core/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$postProcessFeed$2;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$postProcessFeed$2;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getCurrentProgress$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 266
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$postProcessFeed$2;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getMaxProgress$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 268
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$postProcessFeed$2;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getNotificationUpdater$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Lio/reactivex/rxjava3/processors/PublishProcessor;

    move-result-object p1

    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$postProcessFeed$2;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    invoke-static {v0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getContext$p(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    .line 269
    sget-object p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager;

    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->postEvent(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$postProcessFeed$2;->accept(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
