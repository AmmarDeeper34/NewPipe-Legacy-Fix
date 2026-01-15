.class public final synthetic Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    invoke-static {p1}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->$r8$lambda$fhQy2DFdre09BM8ZOgnlOgKAC8M(Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p1

    return-object p1
.end method
