.class public final Lorg/schabi/newpipe/databinding/ErrorPanelBinding;
.super Ljava/lang/Object;
.source "ErrorPanelBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final errorActionButton:Landroid/widget/Button;

.field public final errorMessageServiceExplanationView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final errorMessageServiceInfoView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final errorMessageView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final errorOpenInBrowser:Landroid/widget/Button;

.field public final errorRetryButton:Landroid/widget/Button;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->errorActionButton:Landroid/widget/Button;

    .line 48
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->errorMessageServiceExplanationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 49
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->errorMessageServiceInfoView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 50
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->errorMessageView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 51
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->errorOpenInBrowser:Landroid/widget/Button;

    .line 52
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->errorRetryButton:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ErrorPanelBinding;
    .locals 10

    const v0, 0x7f0a014c

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    const v0, 0x7f0a014e

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a014f

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0150

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0151

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0153

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    .line 118
    new-instance v2, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v9}, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/Button;)V

    return-object v2

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
