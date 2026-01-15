.class final Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;
.super Ljava/lang/Object;
.source "SubscriptionViewModel.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;

    invoke-static {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->access$getMutableStateLiveData$p(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$LoadedState;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$SubscriptionState$LoadedState;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
