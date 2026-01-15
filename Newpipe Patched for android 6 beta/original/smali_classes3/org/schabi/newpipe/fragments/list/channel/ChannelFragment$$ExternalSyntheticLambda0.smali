.class public final synthetic Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$lambda$bq3hp0ZCtassamjw8qZIrMAw1Cc(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    return-void
.end method
