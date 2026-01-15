.class final Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;
.super Ljava/lang/Object;
.source "FeedFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/FeedFragment;->handleItemsErrors(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $errors:Ljava/util/List;

.field final synthetic $i:I

.field final synthetic $t:Ljava/lang/Throwable;

.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/FeedFragment;Ljava/lang/Throwable;Ljava/util/List;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;->$t:Ljava/lang/Throwable;

    iput-object p3, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;->$errors:Ljava/util/List;

    iput p4, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;->$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 474
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;->accept(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    return-void
.end method

.method public final accept(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 5

    .line 476
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 477
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 478
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;->$t:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 479
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;->$errors:Ljava/util/List;

    iget v3, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$2;->$i:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 476
    invoke-static {v0, p1, v1, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment;->access$handleFeedNotAvailable(Lorg/schabi/newpipe/local/feed/FeedFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/lang/Throwable;Ljava/util/List;)V

    return-void
.end method
