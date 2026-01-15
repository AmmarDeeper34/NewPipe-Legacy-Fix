.class final Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$3;
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
.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$3;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 474
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$3;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$handleItemsErrors$1$3;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/feed/FeedFragment;->access$getTAG$p$s-973077970(Lorg/schabi/newpipe/local/feed/FeedFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to process"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
