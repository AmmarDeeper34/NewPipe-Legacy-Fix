.class final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$requestExportLauncher$1;
.super Ljava/lang/Object;
.source "SubscriptionFragment.kt"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$requestExportLauncher$1;->$tmp0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Landroidx/activity/result/ActivityResultCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object v0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 7

    .line 0
    new-instance v0, Lkotlin/jvm/internal/FunctionReferenceImpl;

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$requestExportLauncher$1;->$tmp0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    const-string v5, "requestExportResult(Landroidx/activity/result/ActivityResult;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    const-string v4, "requestExportResult"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 0
    invoke-interface {p0}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$requestExportLauncher$1;->$tmp0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->access$requestExportResult(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$requestExportLauncher$1;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
