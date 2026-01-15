.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/Context;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda15;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda15;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda15;->f$2:Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda15;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda15;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda15;->f$2:Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$lambda$k1GUv_RB5wkAa0-LhoWTEgcXoys(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Landroid/content/Context;Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method
