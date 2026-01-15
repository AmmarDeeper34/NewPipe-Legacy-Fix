.class public Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;
.super Ljava/lang/Object;
.source "PlayQueueItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private onItemClickListener:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;


# direct methods
.method public static synthetic $r8$lambda$BjmpgLI7sCwc4h4Wi_CrN28TUQU(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->lambda$getOnTouchListener$2(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CQzjjzvx1CoPKuQx5JHNWU2WyIQ(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->lambda$buildStreamInfoItem$0(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SIaiWucysWltABIZYNLIvYcYhCk(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->lambda$buildStreamInfoItem$1(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOnTouchListener(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;)Landroid/view/View$OnTouchListener;
    .locals 1

    .line 56
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;)V

    return-object v0
.end method

.method private synthetic lambda$buildStreamInfoItem$0(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->onItemClickListener:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;->selected(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$buildStreamInfoItem$1(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->onItemClickListener:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;->held(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$getOnTouchListener$2(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    .line 58
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->onItemClickListener:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    if-eqz p2, :cond_0

    .line 60
    invoke-interface {p2, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;->onStartDrag(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public buildStreamInfoItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 5

    .line 24
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_0
    iget-object v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemAdditionalDetailsView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v2

    invoke-static {v2}, Lorg/schabi/newpipe/util/ServiceHelper;->getNameOfServiceById(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 31
    iget-object v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemDurationView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemDurationView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :goto_0
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadThumbnail(Ljava/util/List;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 38
    iget-object v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemRoot:Landroid/view/View;

    new-instance v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemRoot:Landroid/view/View;

    new-instance v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 52
    iget-object p2, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemHandle:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->getOnTouchListener(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;)Landroid/view/View$OnTouchListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOnSelectedListener(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->onItemClickListener:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    return-void
.end method
