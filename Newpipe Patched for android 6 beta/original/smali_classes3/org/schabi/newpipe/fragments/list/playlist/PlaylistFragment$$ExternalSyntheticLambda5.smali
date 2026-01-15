.class public final synthetic Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->$r8$lambda$dFMJsgP-iLcAeUU-5e477We-6MA(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Ljava/util/List;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method
