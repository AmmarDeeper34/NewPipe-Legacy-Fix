.class public abstract Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;
.super Lorg/schabi/newpipe/BaseFragment;
.source "BaseDescriptionFragment.java"


# instance fields
.field protected binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

.field private final descriptionDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public static synthetic $r8$lambda$8Y-Dy_O0Zvcd-AK2sAiDtQeclhQ(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Landroid/view/LayoutInflater;Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->lambda$addTagsMetadataItem$2(Landroid/view/LayoutInflater;Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uye2O1UCF2B6CKoDH23yEikP0lY(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Ljava/lang/String;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->lambda$addMetadataItem$1(Ljava/lang/String;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VYiez1yu52P684aN63x6z1xBoUE(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->onTagClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$do5wXSi95rRL-NR7oiBUOSVmctE(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->onTagLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ybqq5JEbvvS8pAbZ6pDmKX31qH0(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->lambda$setupDescription$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/schabi/newpipe/BaseFragment;-><init>()V

    .line 45
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->descriptionDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method private addTagsMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 3

    .line 252
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getTags()Ljava/util/List;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 255
    invoke-static {p1, p2, v1}, Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;

    move-result-object v1

    .line 257
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Landroid/view/LayoutInflater;Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 266
    invoke-virtual {v1}, Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private disableDescriptionSelection()V
    .locals 7

    .line 140
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailDescriptionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 144
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v3

    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getStreamUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->descriptionDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v6, Lorg/schabi/newpipe/util/text/TextLinkifier;->SET_LINK_MOVEMENT_METHOD:Ljava/util/function/Consumer;

    const/4 v2, 0x0

    .line 142
    invoke-static/range {v0 .. v6}, Lorg/schabi/newpipe/util/text/TextLinkifier;->fromDescription(Landroid/widget/TextView;Lorg/schabi/newpipe/extractor/stream/Description;ILorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailDescriptionNoteView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailDescriptionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    const v0, 0x7f1200eb

    .line 151
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailSelectDescriptionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailSelectDescriptionButton:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailSelectDescriptionButton:Landroid/widget/ImageView;

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private enableDescriptionSelection()V
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailDescriptionNoteView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailDescriptionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    const v0, 0x7f1200ea

    .line 132
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailSelectDescriptionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailSelectDescriptionButton:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailSelectDescriptionButton:Landroid/widget/ImageView;

    const v1, 0x7f0800fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private imageSizeToText(I)Ljava/lang/String;
    .locals 0

    if-gez p1, :cond_0

    const p1, 0x7f1203a1

    .line 189
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 191
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$addMetadataItem$1(Ljava/lang/String;Landroid/view/View;)Z
    .locals 0

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$addTagsMetadataItem$2(Landroid/view/LayoutInflater;Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;Ljava/lang/String;)V
    .locals 3

    .line 258
    iget-object v0, p2, Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;->metadataTagsChips:Lcom/google/android/material/chip/ChipGroup;

    const/4 v1, 0x0

    const v2, 0x7f0d0022

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 260
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    new-instance p3, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance p3, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 263
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;->metadataTagsChips:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setupDescription$0(Landroid/view/View;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailDescriptionNoteView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 120
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->disableDescriptionSelection()V

    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->enableDescriptionSelection()V

    return-void
.end method

.method private onTagClick(Landroid/view/View;)V
    .locals 2

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getServiceId()I

    move-result v1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openSearchFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onTagLongClick(Landroid/view/View;)Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private setupDescription()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->disableDescriptionSelection()V

    .line 118
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailSelectDescriptionButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailDescriptionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailSelectDescriptionButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V
    .locals 7

    .line 199
    invoke-static {p4}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 205
    invoke-static {p1, p2, v1}, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ItemMetadataBinding;

    move-result-object p1

    .line 206
    iget-object v1, p1, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->metadataTypeView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 208
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 209
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/Image;

    .line 210
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    const-string v2, ", "

    invoke-virtual {p3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 213
    :cond_2
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 215
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v5, :cond_7

    .line 216
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 218
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Image;->getEstimatedResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object v3

    sget-object v5, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    if-ne v3, v5, :cond_3

    goto :goto_1

    .line 223
    :cond_3
    sget-object v3, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$2;->$SwitchMap$org$schabi$newpipe$extractor$Image$ResolutionLevel:[I

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Image;->getEstimatedResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v4, :cond_6

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    goto :goto_2

    :cond_4
    const v3, 0x7f1201f4

    .line 226
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_5
    const v3, 0x7f1201f9

    .line 225
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_6
    const v3, 0x7f1201f7

    .line 224
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 219
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->imageSizeToText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x78

    .line 220
    invoke-virtual {p3, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 221
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->imageSizeToText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 233
    :goto_2
    new-instance v3, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;

    invoke-direct {v3, p0, v1}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;-><init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Lorg/schabi/newpipe/extractor/Image;)V

    .line 238
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    .line 233
    invoke-virtual {p3, v3, v2, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 240
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p3, v1, v2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 246
    :cond_8
    iget-object p4, p1, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->metadataContentView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object p3, p1, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->metadataContentView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 248
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V
    .locals 7

    .line 162
    invoke-static {p5}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 167
    invoke-static {p1, p2, v0}, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ItemMetadataBinding;

    move-result-object p1

    .line 169
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->metadataTypeView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object p4, p1, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->metadataTypeView:Lorg/schabi/newpipe/views/NewPipeTextView;

    new-instance v0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p5}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-eqz p3, :cond_1

    .line 176
    iget-object v1, p1, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->metadataContentView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v5, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->descriptionDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v6, Lorg/schabi/newpipe/util/text/TextLinkifier;->SET_LINK_MOVEMENT_METHOD:Ljava/util/function/Consumer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p5

    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/util/text/TextLinkifier;->fromPlainText(Landroid/widget/TextView;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    move-object v2, p5

    .line 179
    iget-object p3, p1, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->metadataContentView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_0
    iget-object p3, p1, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->metadataContentView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/view/View;->setClickable(Z)V

    .line 184
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/ItemMetadataBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected abstract getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
.end method

.method protected abstract getService()Lorg/schabi/newpipe/extractor/StreamingService;
.end method

.method protected abstract getServiceId()I
.end method

.method protected abstract getStreamUrl()Ljava/lang/String;
.end method

.method public abstract getTags()Ljava/util/List;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 52
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    .line 53
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->setupDescription()V

    .line 54
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailMetadataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->setupMetadata(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    .line 55
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->detailMetadataLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addTagsMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    .line 56
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;

    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/FragmentDescriptionBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->descriptionDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 62
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method protected abstract setupMetadata(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
.end method
