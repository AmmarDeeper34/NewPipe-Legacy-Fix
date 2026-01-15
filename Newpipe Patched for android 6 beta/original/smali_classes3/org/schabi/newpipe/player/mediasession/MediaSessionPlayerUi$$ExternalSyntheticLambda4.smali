.class public final synthetic Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    check-cast p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->$r8$lambda$LOZEg8KS8h_YGdaME0sxiEUtRw8(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;Lorg/schabi/newpipe/player/notification/NotificationActionData;)Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
