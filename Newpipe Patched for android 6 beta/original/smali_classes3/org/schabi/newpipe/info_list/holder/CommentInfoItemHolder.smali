.class public Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;
.super Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;
.source "CommentInfoItemHolder.java"


# instance fields
.field private final commentHorizontalPadding:I

.field private final commentVerticalPadding:I

.field private final itemContentView:Landroid/widget/TextView;

.field private final itemHeartView:Landroid/widget/ImageView;

.field private final itemLikesCountView:Landroid/widget/TextView;

.field private final itemPinnedView:Landroid/widget/ImageView;

.field private final itemRoot:Landroid/widget/RelativeLayout;

.field private final itemThumbnailView:Landroid/widget/ImageView;

.field private final itemThumbsUpView:Landroid/widget/ImageView;

.field private final itemTitleView:Landroid/widget/TextView;

.field private final repliesButton:Landroid/widget/Button;

.field private final textEllipsizer:Lorg/schabi/newpipe/util/text/TextEllipsizer;


# direct methods
.method public static synthetic $r8$lambda$FqZK9eGlSUF3sm7xoGeX8z-VcjU(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->lambda$updateFromItem$4(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pz9L7vzhxf9imjxDRQJjcPU4xyI(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->lambda$updateFromItem$5(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$STh3-A4jERO4b2qJtDsDyRt8ueU(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->lambda$updateFromItem$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$p3VrH7Prl1Ea96DYHehJhmWSed0(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q75AQAfePo7CA-cpPMc9eTjGhFA(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->lambda$updateFromItem$1(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wm92KgsWUpnH0J97feXfjMDUDh8(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->lambda$updateFromItem$2(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;Landroid/view/ViewGroup;)V
    .locals 2

    const v0, 0x7f0d0079

    .line 55
    invoke-direct {p0, p1, v0, p2}, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;-><init>(Lorg/schabi/newpipe/info_list/InfoItemBuilder;ILandroid/view/ViewGroup;)V

    .line 57
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a01e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemRoot:Landroid/widget/RelativeLayout;

    .line 58
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a01e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    .line 59
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a01e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemThumbsUpView:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemLikesCountView:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a01e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemHeartView:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemPinnedView:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0328

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->repliesButton:Landroid/widget/Button;

    .line 67
    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->commentHorizontalPadding:I

    .line 69
    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070065

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->commentVerticalPadding:I

    .line 72
    new-instance p1, Lorg/schabi/newpipe/util/text/TextEllipsizer;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lorg/schabi/newpipe/util/text/TextEllipsizer;-><init>(Landroid/widget/TextView;ILorg/schabi/newpipe/extractor/StreamingService;)V

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->textEllipsizer:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    .line 73
    new-instance p2, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;)V

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->setStateChangeListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private allowLinkFocus()V
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private denyLinkFocus()V
    .locals 2

    .line 192
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private determineMovementMethod()V
    .locals 1

    .line 206
    invoke-direct {p0}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->shouldFocusLinks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->allowLinkFocus()V

    return-void

    .line 209
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->denyLinkFocus()V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 1

    .line 74
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->denyLinkFocus()V

    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->determineMovementMethod()V

    return-void
.end method

.method private synthetic lambda$updateFromItem$1(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->openCommentAuthor(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    return-void
.end method

.method private synthetic lambda$updateFromItem$2(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->openCommentReplies(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    return-void
.end method

.method private synthetic lambda$updateFromItem$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 137
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 138
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Landroid/text/Spanned;

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    .line 142
    :cond_0
    iget-object v3, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    invoke-static {v3, p2}, Lorg/schabi/newpipe/util/text/TouchUtils;->getOffsetForHorizontalLine(Landroid/widget/TextView;Landroid/view/MotionEvent;)I

    move-result p2

    .line 143
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, p2, p2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 145
    array-length p2, p1

    if-eqz p2, :cond_2

    if-ne v0, v2, :cond_1

    .line 147
    aget-object p1, p1, v1

    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method private synthetic lambda$updateFromItem$4(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V
    .locals 0

    .line 158
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->textEllipsizer:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    invoke-virtual {p2}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->toggle()V

    .line 159
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnCommentsSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 160
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getOnCommentsSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFromItem$5(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)Z
    .locals 0

    .line 165
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->openCommentAuthor(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private openCommentAuthor(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openCommentAuthorIfPresent(Landroidx/fragment/app/FragmentActivity;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    return-void
.end method

.method private openCommentReplies(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openCommentRepliesFragment(Landroidx/fragment/app/FragmentActivity;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    return-void
.end method

.method private shouldFocusLinks()Z
    .locals 2

    .line 196
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    array-length v0, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public updateFromItem(Lorg/schabi/newpipe/extractor/InfoItem;Lorg/schabi/newpipe/local/history/HistoryRecordManager;)V
    .locals 6

    .line 85
    instance-of p2, p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    if-nez p2, :cond_0

    return-void

    .line 88
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 92
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderAvatars()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadAvatar(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 93
    invoke-static {}, Lorg/schabi/newpipe/util/image/ImageStrategy;->shouldLoadImages()Z

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 94
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemRoot:Landroid/widget/RelativeLayout;

    iget v2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->commentVerticalPadding:I

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemRoot:Landroid/widget/RelativeLayout;

    iget v2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->commentHorizontalPadding:I

    iget v3, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->commentVerticalPadding:I

    invoke-virtual {p2, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    :goto_0
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    new-instance v2, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemPinnedView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/Localization;->localizeUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 107
    iget-object v2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    .line 110
    invoke-virtual {v3}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 111
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v4

    .line 112
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v3, v4, v5}, Lorg/schabi/newpipe/util/Localization;->relativeTimeOrTextual(Landroid/content/Context;Lorg/schabi/newpipe/extractor/localization/DateWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2, v3}, [Ljava/lang/String;

    move-result-object p2

    .line 107
    invoke-static {p2}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemLikesCountView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    .line 116
    invoke-virtual {v2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getLikeCount()I

    move-result v3

    invoke-static {v2, v3}, Lorg/schabi/newpipe/util/Localization;->likeCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemHeartView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isHeartedByUploader()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getReplies()Lorg/schabi/newpipe/extractor/Page;

    move-result-object p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    .line 121
    :goto_3
    iget-object v2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->repliesButton:Landroid/widget/Button;

    if-eqz p2, :cond_5

    new-instance v3, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->repliesButton:Landroid/widget/Button;

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    :cond_6
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->repliesButton:Landroid/widget/Button;

    if-eqz p2, :cond_7

    .line 124
    iget-object v2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {v2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getReplyCount()I

    move-result v3

    invoke-static {v2, v3}, Lorg/schabi/newpipe/util/Localization;->replyCount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_7
    const-string v2, ""

    .line 123
    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemThumbsUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_8

    goto :goto_6

    .line 126
    :cond_8
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lorg/schabi/newpipe/info_list/InfoItemBuilder;

    invoke-virtual {p2}, Lorg/schabi/newpipe/info_list/InfoItemBuilder;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x6

    invoke-static {v1, p2}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(ILandroid/content/Context;)I

    move-result v1

    :goto_6
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 130
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->textEllipsizer:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getServiceById(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->setStreamingService(Lorg/schabi/newpipe/extractor/StreamingService;)V

    .line 131
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->textEllipsizer:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->setStreamUrl(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->textEllipsizer:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V

    .line 133
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->textEllipsizer:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    invoke-virtual {p2}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->ellipsize()V

    .line 136
    iget-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    new-instance v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
