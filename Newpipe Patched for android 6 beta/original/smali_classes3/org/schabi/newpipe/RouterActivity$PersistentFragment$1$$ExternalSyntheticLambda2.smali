.class public final synthetic Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    iput-object p3, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda2;->f$2:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1$$ExternalSyntheticLambda2;->f$2:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->$r8$lambda$VCIVbguPZIoAJBDQB5gyxHoN2x4(Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method
