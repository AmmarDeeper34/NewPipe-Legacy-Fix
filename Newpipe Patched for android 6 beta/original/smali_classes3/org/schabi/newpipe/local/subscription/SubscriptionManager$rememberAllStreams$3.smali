.class final Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$3;
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
.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$M06-DzmJR3qvphwF8e6KWLSu8F4(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$3;->apply$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$3;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final apply$lambda$0(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Ljava/util/List;)V
    .locals 0

    .line 141
    invoke-static {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->access$getDatabase$p(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    move-result-object p0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsertAll(Ljava/util/List;)Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/util/List;)Lio/reactivex/rxjava3/core/CompletableSource;
    .locals 2

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$3;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$3$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Ljava/util/List;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$rememberAllStreams$3;->apply(Ljava/util/List;)Lio/reactivex/rxjava3/core/CompletableSource;

    move-result-object p1

    return-object p1
.end method
