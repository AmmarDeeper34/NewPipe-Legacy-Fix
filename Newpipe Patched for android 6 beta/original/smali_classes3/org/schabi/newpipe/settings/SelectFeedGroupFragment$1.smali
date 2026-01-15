.class Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$1;
.super Ljava/lang/Object;
.source "SelectFeedGroupFragment.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->getFeedGroupObserver()Lio/reactivex/rxjava3/core/Observer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$1;->this$0:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

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
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$1;->this$0:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    const-string v1, "Loading Feed Groups"

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 146
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$1;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$1;->this$0:Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->-$$Nest$mdisplayFeedGroups(Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;Ljava/util/List;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    .line 0
    return-void
.end method
