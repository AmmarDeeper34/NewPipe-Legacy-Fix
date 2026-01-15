.class public final Lorg/schabi/newpipe/databinding/ActivityErrorBinding;
.super Ljava/lang/Object;
.source "ActivityErrorBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final errorCommentBox:Lorg/schabi/newpipe/views/NewPipeEditText;

.field public final errorInfoLabelsView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final errorInfosView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final errorMessageView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final errorReportCopyButton:Landroid/widget/Button;

.field public final errorReportEmailButton:Landroid/widget/Button;

.field public final errorReportGitHubButton:Landroid/widget/Button;

.field public final errorSorryView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final errorView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final scrollView:Landroid/widget/ScrollView;

.field public final toolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lorg/schabi/newpipe/views/NewPipeEditText;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ScrollView;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->rootView:Landroid/widget/FrameLayout;

    .line 66
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorCommentBox:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 67
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfoLabelsView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 68
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfosView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 69
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorMessageView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 70
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportCopyButton:Landroid/widget/Button;

    .line 71
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportEmailButton:Landroid/widget/Button;

    .line 72
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportGitHubButton:Landroid/widget/Button;

    .line 73
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorSorryView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 74
    iput-object p10, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 75
    iput-object p11, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->scrollView:Landroid/widget/ScrollView;

    .line 76
    iput-object p12, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->toolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ActivityErrorBinding;
    .locals 15

    const v0, 0x7f0a0143

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/schabi/newpipe/views/NewPipeEditText;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0144

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0145

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0146

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0147

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0148

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0149

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    const v0, 0x7f0a014a

    .line 149
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a014b

    .line 155
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a033e

    .line 161
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/ScrollView;

    if-eqz v13, :cond_0

    const v0, 0x7f0a03f3

    .line 167
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    invoke-static {v1}, Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    move-result-object v14

    .line 173
    new-instance v2, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v14}, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;-><init>(Landroid/widget/FrameLayout;Lorg/schabi/newpipe/views/NewPipeEditText;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ScrollView;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;)V

    return-object v2

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 178
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/ActivityErrorBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ActivityErrorBinding;
    .locals 2

    const v0, 0x7f0d001e

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
