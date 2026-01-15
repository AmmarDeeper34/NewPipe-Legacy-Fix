.class public final synthetic Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->$r8$lambda$MpRrmZ9x8FDkDm3mCbxFiPeQB-s(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;I)Lorg/schabi/newpipe/player/notification/NotificationActionData;

    move-result-object p1

    return-object p1
.end method
