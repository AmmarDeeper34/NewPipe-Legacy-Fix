.class final synthetic Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onViewCreated$1;
.super Ljava/lang/Object;
.source "FeedGroupDialog.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onViewCreated$1;->$tmp0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Landroidx/lifecycle/Observer;

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

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onViewCreated$1;->$tmp0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    const-string v5, "handleGroup(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    const-string v4, "handleGroup"

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

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onViewCreated$1;->onChanged(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V

    return-void
.end method

.method public final onChanged(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onViewCreated$1;->$tmp0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->access$handleGroup(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V

    return-void
.end method
