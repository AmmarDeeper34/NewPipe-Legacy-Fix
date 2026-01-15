.class final Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1;
.super Ljava/lang/Object;
.source "SubscriptionManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->updateChannelInfo(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)Lio/reactivex/rxjava3/core/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $info:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$1PrzB_PIelsnMz_alLHK2Jwxplg(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1;->apply$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1;->$info:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final apply$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 2

    .line 75
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setAvatarUrl(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setDescription(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setSubscriberCount(Ljava/lang/Long;)V

    .line 80
    invoke-static {p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->access$getSubscriptionTable$p(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;)Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    move-result-object p1

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public final apply(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/core/CompletableSource;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1;->$info:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    new-instance v2, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    invoke-static {v2}, Lio/reactivex/rxjava3/core/Completable;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1;->apply(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/core/CompletableSource;

    move-result-object p1

    return-object p1
.end method
