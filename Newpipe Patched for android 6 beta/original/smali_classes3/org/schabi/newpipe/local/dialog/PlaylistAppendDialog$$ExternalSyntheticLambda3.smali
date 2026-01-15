.class public final synthetic Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

.field public final synthetic f$1:Landroid/widget/Toast;

.field public final synthetic f$2:Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

.field public final synthetic f$3:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Landroid/widget/Toast;Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    iput-object p2, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$1:Landroid/widget/Toast;

    iput-object p3, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$2:Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    iput-object p4, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$3:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iput-object p5, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$1:Landroid/widget/Toast;

    iget-object v2, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$2:Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    iget-object v3, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$3:Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    iget-object v4, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;->f$4:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->$r8$lambda$5IN1_W9Cll1KS-90r0ILTu8iJ-A(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Landroid/widget/Toast;Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
