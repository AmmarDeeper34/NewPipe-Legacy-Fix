.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ILorg/schabi/newpipe/local/subscription/SubscriptionManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    iput p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    iget v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateNotificationMode$1;->$r8$lambda$W0_j17TbqNwWI06tnOElmcgVodI(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ILorg/schabi/newpipe/local/subscription/SubscriptionManager;)V

    return-void
.end method
