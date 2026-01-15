.class public final synthetic Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;->f$1:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;->f$1:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$lambda$4O_sL5ejlpwjtis0Do-jhBPYFpM(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;Ljava/lang/Throwable;)V

    return-void
.end method
