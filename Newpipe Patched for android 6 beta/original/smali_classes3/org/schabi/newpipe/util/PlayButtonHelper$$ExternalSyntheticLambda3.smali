.class public final synthetic Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$1:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/PlayButtonHelper;->$r8$lambda$HpAzOzbpXTiUckg7AJCUWvmDuiQ(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
