.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;Landroid/util/Pair;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/player/Player;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda4;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda4;->f$2:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/player/Player;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda4;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher$$ExternalSyntheticLambda4;->f$2:Landroidx/appcompat/app/AlertDialog;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailPlayerCrasher;->$r8$lambda$LsxUv0bLtF24jLcANI9ghsJf5zk(Lorg/schabi/newpipe/player/Player;Landroid/util/Pair;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
