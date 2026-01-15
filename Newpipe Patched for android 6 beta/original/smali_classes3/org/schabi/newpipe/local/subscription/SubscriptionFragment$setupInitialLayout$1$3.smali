.class final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$setupInitialLayout$1$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SubscriptionFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->setupInitialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 0
    const-string v5, "openReorderDialog()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    const-string v4, "openReorderDialog"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$setupInitialLayout$1$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 310
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->access$openReorderDialog(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    return-void
.end method
