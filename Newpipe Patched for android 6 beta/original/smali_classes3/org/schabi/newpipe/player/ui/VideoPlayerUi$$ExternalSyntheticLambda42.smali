.class public final synthetic Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;->f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    iput-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;->f$0:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->$r8$lambda$ZWSHJf7agTq9-tiSiJlUd7ptu90(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Ljava/lang/String;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
