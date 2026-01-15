.class public final Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;
.super Ljava/lang/Object;
.source "FeedResultsHolder.kt"


# instance fields
.field private final itemsErrorsHolder:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;->itemsErrorsHolder:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;->itemsErrorsHolder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addErrors(Ljava/util/List;)V
    .locals 1

    const-string v0, "errors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;->itemsErrorsHolder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getItemsErrors()Ljava/util/List;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedResultsHolder;->itemsErrorsHolder:Ljava/util/List;

    return-object v0
.end method
