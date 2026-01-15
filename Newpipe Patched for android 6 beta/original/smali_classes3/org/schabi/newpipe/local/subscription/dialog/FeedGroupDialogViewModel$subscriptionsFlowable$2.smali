.class final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$2;
.super Ljava/lang/Object;
.source "FeedGroupDialogViewModel.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;-><init>(Landroid/content/Context;JLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$2;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$2;->apply(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;)Lorg/reactivestreams/Publisher;
    .locals 4

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->component1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Filter;->component2()Z

    move-result p1

    .line 40
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$2;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    invoke-static {v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->access$getSubscriptionManager$p(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$2;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    invoke-static {v2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->access$getGroupId$p(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->getSubscriptions(JLjava/lang/String;Z)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method
