.class final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;
.super Ljava/lang/Object;
.source "FeedLoadManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->startLoading(JZ)Lio/reactivex/rxjava3/core/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $defaultSharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic $useFeedExtractor:Z

.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;ZLandroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    iput-boolean p2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$useFeedExtractor:Z

    iput-object p3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$defaultSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/core/Notification;
    .locals 3

    const-string v0, "subscriptionEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$useFeedExtractor:Z

    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$defaultSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p1, v1, v2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->access$loadStreams(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ZLandroid/content/SharedPreferences;)Lio/reactivex/rxjava3/core/Notification;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->apply(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/core/Notification;

    move-result-object p1

    return-object p1
.end method
