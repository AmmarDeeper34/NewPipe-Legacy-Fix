.class Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;
.super Ljava/lang/Object;
.source "StatisticsPlaylistFragment.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->getHistoryObserver()Lorg/reactivestreams/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .line 0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 245
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "History Statistics"

    invoke-direct {v1, p1, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->handleResult(Ljava/util/List;)V

    .line 238
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showLoading()V

    .line 228
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object v0

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->-$$Nest$fputdatabaseSubscription(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;Lorg/reactivestreams/Subscription;)V

    .line 232
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
