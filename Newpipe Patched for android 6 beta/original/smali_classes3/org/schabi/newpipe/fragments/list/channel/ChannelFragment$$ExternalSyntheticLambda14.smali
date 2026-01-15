.class public final synthetic Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda14;->f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda14;->f$1:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda14;->f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda14;->f$1:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$lambda$UscX8GKKaoHGLGyyIncf_Ya3-os(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
