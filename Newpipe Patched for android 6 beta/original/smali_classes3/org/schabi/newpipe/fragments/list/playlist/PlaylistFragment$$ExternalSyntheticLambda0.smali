.class public final synthetic Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->$r8$lambda$xUjX7NmU-Z3rQQusyAsiT7kZHdU(Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Landroid/view/View;)V

    return-void
.end method
