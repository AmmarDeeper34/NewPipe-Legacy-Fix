.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/feed/FeedFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->$r8$lambda$BF2MoZWdAWdfU8DDOGUcvHGhDh8(Lorg/schabi/newpipe/local/feed/FeedFragment;Ljava/lang/Throwable;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move-result-object v0

    return-object v0
.end method
