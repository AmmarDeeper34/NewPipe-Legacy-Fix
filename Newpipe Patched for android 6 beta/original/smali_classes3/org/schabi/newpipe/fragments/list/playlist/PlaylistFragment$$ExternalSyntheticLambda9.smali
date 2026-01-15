.class public final synthetic Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method
