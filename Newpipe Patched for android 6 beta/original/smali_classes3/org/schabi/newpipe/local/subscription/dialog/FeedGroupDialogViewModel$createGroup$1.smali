.class final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$createGroup$1;
.super Ljava/lang/Object;
.source "FeedGroupDialogViewModel.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->createGroup(Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $selectedSubscriptions:Ljava/util/Set;

.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;Ljava/util/Set;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$createGroup$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$createGroup$1;->$selectedSubscriptions:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Long;)Lio/reactivex/rxjava3/core/CompletableSource;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$createGroup$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    invoke-static {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->access$getFeedDatabaseManager$p(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;)Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$createGroup$1;->$selectedSubscriptions:Ljava/util/Set;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->updateSubscriptionsForGroup(JLjava/util/List;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$createGroup$1;->apply(Ljava/lang/Long;)Lio/reactivex/rxjava3/core/CompletableSource;

    move-result-object p1

    return-object p1
.end method
