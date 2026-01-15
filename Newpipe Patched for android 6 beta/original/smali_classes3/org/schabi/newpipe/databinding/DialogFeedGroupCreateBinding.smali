.class public final Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;
.super Ljava/lang/Object;
.source "DialogFeedGroupCreateBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cancelButton:Landroid/widget/Button;

.field public final confirmButton:Landroid/widget/Button;

.field public final deleteButton:Landroid/widget/ImageButton;

.field public final deleteScreenMessage:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

.field public final groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field public final iconPreview:Landroid/widget/ImageButton;

.field public final iconSelector:Landroidx/recyclerview/widget/RecyclerView;

.field public final optionsRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final selectChannelButton:Landroid/widget/Button;

.field public final selectedSubscriptionCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final separator:Landroid/view/View;

.field public final subscriptionsHeaderInfo:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final subscriptionsHeaderInfoContainer:Landroid/widget/LinearLayout;

.field public final subscriptionsHeaderSearchContainer:Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

.field public final subscriptionsHeaderToolbar:Landroidx/appcompat/widget/Toolbar;

.field public final subscriptionsSelector:Landroid/widget/LinearLayout;

.field public final subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ImageButton;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;Landroidx/appcompat/widget/Toolbar;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->rootView:Landroid/widget/LinearLayout;

    .line 95
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->cancelButton:Landroid/widget/Button;

    .line 96
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->confirmButton:Landroid/widget/Button;

    .line 97
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->deleteButton:Landroid/widget/ImageButton;

    .line 98
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->deleteScreenMessage:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 99
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 100
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 101
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconPreview:Landroid/widget/ImageButton;

    .line 102
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    iput-object p10, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->optionsRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 104
    iput-object p11, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->selectChannelButton:Landroid/widget/Button;

    .line 105
    iput-object p12, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->selectedSubscriptionCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 106
    iput-object p13, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->separator:Landroid/view/View;

    .line 107
    iput-object p14, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderInfo:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 108
    iput-object p15, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderInfoContainer:Landroid/widget/LinearLayout;

    move-object/from16 p1, p16

    .line 109
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderSearchContainer:Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-object/from16 p1, p17

    .line 110
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object/from16 p1, p18

    .line 111
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelector:Landroid/widget/LinearLayout;

    move-object/from16 p1, p19

    .line 112
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;
    .locals 23

    move-object/from16 v0, p0

    const v1, 0x7f0a0098

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v1, 0x7f0a00bd

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    const v1, 0x7f0a00e1

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageButton;

    if-eqz v7, :cond_0

    const v1, 0x7f0a00e3

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a01af

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/schabi/newpipe/views/NewPipeEditText;

    if-eqz v9, :cond_0

    const v1, 0x7f0a01b0

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a01c6

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageButton;

    if-eqz v11, :cond_0

    const v1, 0x7f0a01c7

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a02b4

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0356

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_0

    const v1, 0x7f0a035b

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a035d

    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_0

    const v1, 0x7f0a03a0

    .line 215
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a03a1

    .line 221
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/LinearLayout;

    if-eqz v18, :cond_0

    const v1, 0x7f0a03a2

    .line 227
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 231
    invoke-static {v2}, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object v19

    const v1, 0x7f0a03a3

    .line 234
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/Toolbar;

    if-eqz v20, :cond_0

    const v1, 0x7f0a03a4

    .line 240
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/LinearLayout;

    if-eqz v21, :cond_0

    const v1, 0x7f0a03a5

    .line 246
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v22, :cond_0

    .line 251
    new-instance v3, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v22}, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ImageButton;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;Landroidx/appcompat/widget/Toolbar;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v3

    .line 258
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
