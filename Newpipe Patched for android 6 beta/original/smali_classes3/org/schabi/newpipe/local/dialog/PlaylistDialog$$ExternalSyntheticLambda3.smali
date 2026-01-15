.class public final synthetic Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->$r8$lambda$meFMLUYPZODNniJip54KySm9D2k(Ljava/util/function/Consumer;Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method
