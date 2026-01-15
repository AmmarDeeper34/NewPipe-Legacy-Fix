.class public final Lorg/schabi/newpipe/databinding/DownloadDialogBinding;
.super Ljava/lang/Object;
.source "DownloadDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final audioButton:Landroid/widget/RadioButton;

.field public final audioStreamSpinner:Landroid/widget/Spinner;

.field public final audioTrackPresentInVideoText:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final audioTrackSpinner:Landroid/widget/Spinner;

.field public final fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

.field public final fileNameTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final qualitySpinner:Landroid/widget/Spinner;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final subtitleButton:Landroid/widget/RadioButton;

.field public final threads:Landroid/widget/SeekBar;

.field public final threadsCount:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final threadsLayout:Landroid/widget/LinearLayout;

.field public final threadsTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final toolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

.field public final videoAudioGroup:Landroid/widget/RadioGroup;

.field public final videoButton:Landroid/widget/RadioButton;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RadioButton;Landroid/widget/Spinner;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Spinner;Lorg/schabi/newpipe/views/NewPipeEditText;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Spinner;Landroid/widget/RadioButton;Landroid/widget/SeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 82
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    .line 83
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    .line 84
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 85
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    .line 86
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 87
    iput-object p7, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileNameTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 88
    iput-object p8, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    .line 89
    iput-object p9, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    .line 90
    iput-object p10, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    .line 91
    iput-object p11, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threadsCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 92
    iput-object p12, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threadsLayout:Landroid/widget/LinearLayout;

    .line 93
    iput-object p13, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threadsTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 94
    iput-object p14, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->toolbarLayout:Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    .line 95
    iput-object p15, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    move-object/from16 p1, p16

    .line 96
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DownloadDialogBinding;
    .locals 20

    move-object/from16 v0, p0

    const v1, 0x7f0a0073

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RadioButton;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0074

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Spinner;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0075

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0076

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Spinner;

    if-eqz v8, :cond_0

    const v1, 0x7f0a018d

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/schabi/newpipe/views/NewPipeEditText;

    if-eqz v9, :cond_0

    const v1, 0x7f0a018e

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0319

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Spinner;

    if-eqz v11, :cond_0

    const v1, 0x7f0a03a7

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RadioButton;

    if-eqz v12, :cond_0

    const v1, 0x7f0a03e4

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/SeekBar;

    if-eqz v13, :cond_0

    const v1, 0x7f0a03e5

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a03e6

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a03e7

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lorg/schabi/newpipe/views/NewPipeTextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a03f3

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    invoke-static {v2}, Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;

    move-result-object v17

    const v1, 0x7f0a0414

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RadioGroup;

    if-eqz v18, :cond_0

    const v1, 0x7f0a0415

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/RadioButton;

    if-eqz v19, :cond_0

    .line 217
    new-instance v3, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v19}, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RadioButton;Landroid/widget/Spinner;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Spinner;Lorg/schabi/newpipe/views/NewPipeEditText;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Spinner;Landroid/widget/RadioButton;Landroid/widget/SeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/databinding/ToolbarLayoutBinding;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;)V

    return-object v3

    .line 222
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 223
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

    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
