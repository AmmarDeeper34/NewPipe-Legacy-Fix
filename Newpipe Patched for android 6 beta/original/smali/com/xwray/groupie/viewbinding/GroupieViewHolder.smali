.class public Lcom/xwray/groupie/viewbinding/GroupieViewHolder;
.super Lcom/xwray/groupie/GroupieViewHolder;
.source "GroupieViewHolder.java"


# instance fields
.field public final binding:Landroidx/viewbinding/ViewBinding;


# direct methods
.method public constructor <init>(Landroidx/viewbinding/ViewBinding;)V
    .locals 1

    .line 10
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xwray/groupie/GroupieViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    iput-object p1, p0, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;->binding:Landroidx/viewbinding/ViewBinding;

    return-void
.end method
