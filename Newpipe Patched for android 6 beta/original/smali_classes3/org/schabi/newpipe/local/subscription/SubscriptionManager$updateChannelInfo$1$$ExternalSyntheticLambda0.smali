.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

.field public final synthetic f$1:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

.field public final synthetic f$2:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$updateChannelInfo$1;->$r8$lambda$1PrzB_PIelsnMz_alLHK2Jwxplg(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    return-void
.end method
