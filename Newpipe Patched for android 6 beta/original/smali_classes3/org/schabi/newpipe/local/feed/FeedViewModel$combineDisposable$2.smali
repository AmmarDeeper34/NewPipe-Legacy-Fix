.class final Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$2;
.super Ljava/lang/Object;
.source "FeedViewModel.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/FeedViewModel;-><init>(Landroid/app/Application;JZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $groupId:J

.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/FeedViewModel;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/FeedViewModel;J)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$2;->this$0:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    iput-wide p2, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$2;->$groupId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$2;->apply(Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;)Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;)Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;
    .locals 9

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->component1()Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->component2()Z

    move-result v6

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->component3()Z

    move-result v7

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->component4()Z

    move-result v8

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->component5()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->component6()Lj$/time/OffsetDateTime;

    move-result-object p1

    .line 76
    instance-of v3, v2, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-wide v4, v0

    goto :goto_2

    .line 77
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$2;->this$0:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    invoke-static {v3}, Lorg/schabi/newpipe/local/feed/FeedViewModel;->access$getFeedDatabaseManager$p(Lorg/schabi/newpipe/local/feed/FeedViewModel;)Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    move-result-object v3

    .line 78
    iget-wide v4, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$combineDisposable$2;->$groupId:J

    invoke-virtual/range {v3 .. v8}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->getStreams(JZZZ)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object v3

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Maybe;->blockingGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "blockingGet(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/List;

    goto :goto_0

    .line 83
    :goto_2
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultDataHolder;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;Ljava/util/List;JLj$/time/OffsetDateTime;)V

    return-object v1
.end method
