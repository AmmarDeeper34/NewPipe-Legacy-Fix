.class public final synthetic Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/download/LoadingDialog;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/download/LoadingDialog;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/download/LoadingDialog;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/download/LoadingDialog;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->$r8$lambda$o4PL5DvB4N0123xnRmsJn05j7zU(Lorg/schabi/newpipe/download/LoadingDialog;Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
