.class public final synthetic Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda2;->f$1:Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    invoke-static {v0, v1, p1, p2}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->$r8$lambda$ZuXldJ2Ewpxqh7zN1HQYq5bGVac(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
