.class final Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$1;
.super Ljava/lang/Object;
.source "SubscriptionManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->rememberAllStreams(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/core/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $subscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$1;->$subscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)Lio/reactivex/rxjava3/core/SingleSource;
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$1;->$subscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTabs()Ljava/util/List;

    move-result-object p1

    const-string v1, "getTabs(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelTab(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$1;->apply(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)Lio/reactivex/rxjava3/core/SingleSource;

    move-result-object p1

    return-object p1
.end method
