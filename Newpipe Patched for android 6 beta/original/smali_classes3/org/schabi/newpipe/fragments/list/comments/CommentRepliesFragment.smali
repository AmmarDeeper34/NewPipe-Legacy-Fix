.class public final Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "CommentRepliesFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
        "Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CommentRepliesFragment"


# instance fields
.field commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public static synthetic $r8$lambda$K-8iwl_nCQ2V87pHwB7c6R0fDog(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->lambda$getListHeaderSupplier$1()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SgYi46t85w_ps9O9rc5WsacTZEU(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->lambda$getListHeaderSupplier$0(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aXgnEHomG0Xqtq0RIwpJjepytR4(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;)Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesInfo;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->lambda$loadResult$2()Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENT_REPLIES:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    .line 46
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 62
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getListHeaderSupplier$0(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openCommentAuthorIfPresent(Landroidx/fragment/app/FragmentActivity;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    return-void
.end method

.method private synthetic lambda$getListHeaderSupplier$1()Landroid/view/View;
    .locals 11

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 87
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderAvatars()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, v0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->authorAvatar:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 88
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->authorAvatar:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {}, Lorg/schabi/newpipe/util/image/ImageStrategy;->shouldLoadImages()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->authorName:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->uploadDate:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v6

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-static {v4, v6, v7}, Lorg/schabi/newpipe/util/Localization;->relativeTimeOrTextual(Landroid/content/Context;Lorg/schabi/newpipe/extractor/localization/DateWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->authorTouchArea:Landroid/view/View;

    new-instance v4, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->thumbsUpCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getLikeCount()I

    move-result v6

    invoke-static {v4, v6}, Lorg/schabi/newpipe/util/Localization;->likeCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->thumbsUpCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 105
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isHeartedByUploader()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isPinned()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v4, 0x8

    .line 106
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    .line 104
    invoke-static {v4, v6}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(ILandroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 107
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->heartImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isHeartedByUploader()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->pinnedImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isPinned()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v4, v0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->commentContent:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v5

    .line 112
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v2

    invoke-static {v2}, Lorg/schabi/newpipe/util/ServiceHelper;->getServiceById(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v7

    .line 113
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 111
    invoke-static/range {v4 .. v10}, Lorg/schabi/newpipe/util/text/TextLinkifier;->fromDescription(Landroid/widget/TextView;Lorg/schabi/newpipe/extractor/stream/Description;ILorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    .line 114
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->commentContent:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {}, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 115
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/CommentRepliesHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$loadResult$2()Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesInfo;
    .locals 4

    .line 143
    new-instance v0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesInfo;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getReplyCount()I

    move-result v3

    invoke-static {v2, v3}, Lorg/schabi/newpipe/util/Localization;->replyCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesInfo;-><init>(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCommentsInfoItem()Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    return-object v0
.end method

.method protected getItemViewMode()Lorg/schabi/newpipe/info_list/ItemViewMode;
    .locals 1

    .line 163
    sget-object v0, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    return-object v0
.end method

.method protected getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 1

    .line 81
    new-instance v0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;)V

    return-object v0
.end method

.method protected loadMoreItemsLogic()Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 152
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 153
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 152
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getMoreCommentItems(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method protected loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 0

    .line 143
    new-instance p1, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0059

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 76
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    return-void
.end method

.method public readFrom(Ljava/util/Queue;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->readFrom(Ljava/util/Queue;)V

    .line 133
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    return-void
.end method

.method public writeTo(Ljava/util/Queue;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->writeTo(Ljava/util/Queue;)V

    .line 127
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
