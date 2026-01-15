.class Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getPlaylistBookmarkSubscriber()Lorg/reactivestreams/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

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

    .line 440
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "Get playlist bookmarks"

    invoke-direct {v1, p1, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 416
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 2

    .line 428
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    :goto_0
    invoke-static {v0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->-$$Nest$fputplaylistEntity(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;)V

    .line 430
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->-$$Nest$mupdateBookmarkButtons(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)V

    .line 431
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->-$$Nest$fgetisBookmarkButtonReady(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 433
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->-$$Nest$fgetbookmarkReactor(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 434
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->-$$Nest$fgetbookmarkReactor(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 419
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->-$$Nest$fgetbookmarkReactor(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->-$$Nest$fgetbookmarkReactor(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object v0

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->-$$Nest$fputbookmarkReactor(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/reactivestreams/Subscription;)V

    .line 423
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->-$$Nest$fgetbookmarkReactor(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
