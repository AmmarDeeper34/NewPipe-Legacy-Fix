.class Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;
.super Ljava/lang/Object;
.source "BookmarkFragment.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->getPlaylistsSubscriber()Lorg/reactivestreams/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

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

    .line 274
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "Loading playlists"

    invoke-direct {v1, p1, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetdebounceSaver(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetdebounceSaver(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/schabi/newpipe/util/debounce/DebounceSaver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->getIsModified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->handleResult(Ljava/util/List;)V

    .line 265
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetisLoadingComplete(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 267
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 268
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showLoading()V

    .line 252
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetisLoadingComplete(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 254
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/reactivestreams/Subscription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/reactivestreams/Subscription;

    move-result-object v0

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fputdatabaseSubscription(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/reactivestreams/Subscription;)V

    .line 258
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$2;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->-$$Nest$fgetdatabaseSubscription(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
