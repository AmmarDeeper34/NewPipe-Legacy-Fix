.class public final synthetic Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/download/LoadingDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Lorg/schabi/newpipe/download/LoadingDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/download/LoadingDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/download/LoadingDialog;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->$r8$lambda$koThKNfXRo0IAVjNqMj94leBp-4(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Lorg/schabi/newpipe/download/LoadingDialog;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method
