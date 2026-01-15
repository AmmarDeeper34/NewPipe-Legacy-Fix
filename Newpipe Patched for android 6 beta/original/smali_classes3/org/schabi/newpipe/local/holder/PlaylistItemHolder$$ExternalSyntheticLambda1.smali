.class public final synthetic Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/LocalItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;Lorg/schabi/newpipe/database/LocalItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;

    iput-object p2, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/database/LocalItem;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;

    iget-object v1, p0, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/database/LocalItem;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;->$r8$lambda$ZnOBgyOr2QDvgB1A_KiKWo1-gqg(Lorg/schabi/newpipe/local/holder/PlaylistItemHolder;Lorg/schabi/newpipe/database/LocalItem;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
