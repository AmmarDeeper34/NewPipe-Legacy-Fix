.class public abstract Lcom/xwray/groupie/viewbinding/BindableItem;
.super Lcom/xwray/groupie/Item;
.source "BindableItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bind(Landroidx/viewbinding/ViewBinding;I)V
.end method

.method public bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/xwray/groupie/viewbinding/BindableItem;->bind(Landroidx/viewbinding/ViewBinding;I)V

    return-void
.end method

.method public bridge synthetic bind(Lcom/xwray/groupie/GroupieViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xwray/groupie/viewbinding/BindableItem;->bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;I)V

    return-void
.end method

.method public bridge synthetic bind(Lcom/xwray/groupie/GroupieViewHolder;ILjava/util/List;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xwray/groupie/viewbinding/BindableItem;->bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;I)V
    .locals 0

    .line 45
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Doesn\'t get called"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;ILjava/util/List;)V
    .locals 0

    .line 50
    iget-object p1, p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;->binding:Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xwray/groupie/viewbinding/BindableItem;->bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/View;)Lcom/xwray/groupie/GroupieViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/viewbinding/BindableItem;->createViewHolder(Landroid/view/View;)Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/xwray/groupie/viewbinding/GroupieViewHolder;
    .locals 1

    .line 39
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/viewbinding/BindableItem;->initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    .line 40
    new-instance v0, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    invoke-direct {v0, p1}, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;-><init>(Landroidx/viewbinding/ViewBinding;)V

    return-object v0
.end method

.method protected abstract initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
.end method
