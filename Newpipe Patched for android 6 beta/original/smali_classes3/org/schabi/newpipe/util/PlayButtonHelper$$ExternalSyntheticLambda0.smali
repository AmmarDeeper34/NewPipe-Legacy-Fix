.class public final synthetic Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$1:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lorg/schabi/newpipe/util/PlayButtonHelper$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/PlayButtonHelper;->$r8$lambda$TH4mW-9Z-GUCEqU8zGg1i_fJZ0A(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;Landroid/view/View;)V

    return-void
.end method
