.class final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$6;
.super Ljava/lang/Object;
.source "FeedLoadManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->startLoading(JZ)Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $youtubeExtractionCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$6;->$youtubeExtractionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 113
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$6;->accept(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    return-void
.end method

.method public final accept(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 2

    const-string v0, "subscriptionEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result p1

    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 116
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$6;->$youtubeExtractionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    rem-int/lit8 p1, p1, 0x32

    if-nez p1, :cond_0

    .line 118
    invoke-static {}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$getDELAY_BETWEEN_BATCHES_MILLIS$cp()Lkotlin/ranges/LongRange;

    move-result-object p1

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    return-void
.end method
