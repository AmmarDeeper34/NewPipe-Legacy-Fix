.class public final synthetic Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;

    iput-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;

    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;->$r8$lambda$k7wEUTISBJJSdoTlr-cuKCUPQbI(Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroid/view/View;)V

    return-void
.end method
