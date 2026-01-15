.class public final synthetic Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda12;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda12;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->$r8$lambda$WLTeZ01Q_kbEMZQCOL6WkRmki2Y(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method
