.class Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;
.super Ljava/lang/Object;
.source "LocalPlaylistFragment.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getPlaylistObserver()Lorg/reactivestreams/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

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

    .line 350
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "Loading local playlist"

    invoke-direct {v1, p1, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 322
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetdebounceSaver(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetdebounceSaver(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->getIsModified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->handleResult(Ljava/util/List;)V

    .line 340
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetisLoadingComplete(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 343
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 344
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->showLoading()V

    .line 326
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetisLoadingComplete(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 328
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object v0

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fputdatabaseSubscription(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/reactivestreams/Subscription;)V

    .line 332
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$2;->this$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
