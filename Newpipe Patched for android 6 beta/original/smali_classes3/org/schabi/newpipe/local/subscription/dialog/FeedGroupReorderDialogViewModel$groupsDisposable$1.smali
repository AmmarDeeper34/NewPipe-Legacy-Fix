.class final synthetic Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$groupsDisposable$1;
.super Ljava/lang/Object;
.source "FeedGroupReorderDialogViewModel.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$groupsDisposable$1;->$tmp0:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$groupsDisposable$1;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$groupsDisposable$1;->$tmp0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
