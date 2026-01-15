.class public final synthetic Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;

    iput-object p2, p0, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;

    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    invoke-static {v0, v1, p1, p2}, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;->$r8$lambda$0F3VT1pIPm7Xsi9Tn9R9QQ_LepY(Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
