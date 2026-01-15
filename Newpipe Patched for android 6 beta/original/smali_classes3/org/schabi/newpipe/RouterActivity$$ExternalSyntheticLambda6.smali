.class public final synthetic Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/RouterActivity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/RouterActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/RouterActivity;->$r8$lambda$i0YY1xdaWWmjncngBFDlEt2Bx_0(Lorg/schabi/newpipe/RouterActivity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
