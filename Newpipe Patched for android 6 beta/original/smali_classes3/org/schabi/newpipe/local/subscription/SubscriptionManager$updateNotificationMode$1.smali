.class final Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;
.super Ljava/lang/Object;
.source "SubscriptionManager.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->updateNotificationMode(ILjava/lang/String;I)Lio/reactivex/rxjava3/core/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $mode:I

.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$W0_j17TbqNwWI06tnOElmcgVodI(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ILorg/schabi/newpipe/local/subscription/SubscriptionManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;->apply$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ILorg/schabi/newpipe/local/subscription/SubscriptionManager;)V

    return-void
.end method

.method constructor <init>(ILorg/schabi/newpipe/local/subscription/SubscriptionManager;)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;->$mode:I

    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final apply$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ILorg/schabi/newpipe/local/subscription/SubscriptionManager;)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->setNotificationMode(I)V

    .line 89
    invoke-virtual {p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/schabi/newpipe/database/BasicDAO;->update(Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public final apply(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/core/CompletableSource;
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;->$mode:I

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    new-instance v2, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ILorg/schabi/newpipe/local/subscription/SubscriptionManager;)V

    invoke-static {v2}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 90
    iget v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;->$mode:I

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    if-eqz v1, :cond_0

    .line 93
    invoke-static {v2, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->access$rememberAllStreams(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Completable;->andThen(Lio/reactivex/rxjava3/core/CompletableSource;)Lio/reactivex/rxjava3/core/Completable;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;->apply(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)Lio/reactivex/rxjava3/core/CompletableSource;

    move-result-object p1

    return-object p1
.end method
