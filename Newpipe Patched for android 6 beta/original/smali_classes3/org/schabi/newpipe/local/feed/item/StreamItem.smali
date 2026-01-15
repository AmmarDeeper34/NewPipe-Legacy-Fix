.class public final Lorg/schabi/newpipe/local/feed/item/StreamItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "StreamItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/feed/item/StreamItem$Companion;,
        Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;,
        Lorg/schabi/newpipe/local/feed/item/StreamItem$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/item/StreamItem$Companion;


# instance fields
.field private execBindEnd:Ljava/util/function/Consumer;

.field private itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

.field private final stateProgressTime:Ljava/lang/Long;

.field private final stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

.field private final streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/item/StreamItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->Companion:Lorg/schabi/newpipe/local/feed/item/StreamItem$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/database/stream/StreamWithState;Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;)V
    .locals 1

    const-string v0, "streamWithState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/xwray/groupie/viewbinding/BindableItem;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 28
    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 34
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamWithState;->getStream()Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 35
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamWithState;->getStateProgressMillis()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stateProgressTime:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/stream/StreamWithState;Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 28
    sget-object p2, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->NORMAL:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/local/feed/item/StreamItem;-><init>(Lorg/schabi/newpipe/database/stream/StreamWithState;Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;)V

    return-void
.end method

.method private final getFormattedRelativeUploadDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 140
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploadDate()Lj$/time/OffsetDateTime;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->relativeTime(Lj$/time/OffsetDateTime;)Ljava/lang/String;

    move-result-object v0

    .line 144
    sget-boolean v1, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const v1, 0x7f120442

    .line 145
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTextualUploadDate()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    .line 153
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTextualUploadDate()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getStreamInfoDetailLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 121
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getViewCount()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 123
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/local/feed/item/StreamItem$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/util/Localization;->shortViewCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/util/Localization;->listeningCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/util/Localization;->shortWatchingCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 129
    :cond_2
    const-string v0, ""

    :goto_1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->getFormattedRelativeUploadDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 132
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 133
    :cond_3
    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "concatenateStrings(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;I)V
    .locals 0

    .line 26
    check-cast p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->bind(Lorg/schabi/newpipe/databinding/ListStreamItemBinding;I)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V
    .locals 0

    .line 26
    check-cast p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->bind(Lorg/schabi/newpipe/databinding/ListStreamItemBinding;ILjava/util/List;)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/ListStreamItemBinding;I)V
    .locals 6

    const-string p2, "viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemUploaderView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 p2, 0x0

    const/16 v4, 0x8

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 73
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06007f

    .line 75
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stateProgressTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 85
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stateProgressTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/StreamTypeUtil;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    const v1, 0x7f120126

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600a8

    .line 92
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemProgressView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :goto_0
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadThumbnail(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v0, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 106
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    sget-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->MINI:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    if-eq p2, v0, :cond_3

    .line 107
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemAdditionalDetails:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->getStreamInfoDetailLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_3
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->execBindEnd:Ljava/util/function/Consumer;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/ListStreamItemBinding;ILjava/util/List;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    sget-object p3, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->MINI:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    if-eq p2, p3, :cond_0

    .line 59
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->itemAdditionalDetails:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "getContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->getStreamInfoDetailLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    .line 65
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/xwray/groupie/viewbinding/BindableItem;->bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    iget-object v3, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getId()J
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayout()I
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    sget-object v1, Lorg/schabi/newpipe/local/feed/item/StreamItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d0082

    return v0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const v0, 0x7f0d0083

    return v0

    :cond_2
    const v0, 0x7f0d0085

    return v0

    :cond_3
    const v0, 0x7f0d0084

    return v0
.end method

.method public getSpanSize(II)I
    .locals 1

    .line 158
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    sget-object v0, Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;->GRID:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final getStreamWithState()Lorg/schabi/newpipe/database/stream/StreamWithState;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/StreamWithState;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/item/StreamItem;->initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListStreamItemBinding;

    move-result-object p1

    return-object p1
.end method

.method protected initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListStreamItemBinding;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/ListStreamItemBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListStreamItemBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isLongClickable()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sget-object v1, Lorg/schabi/newpipe/local/feed/item/StreamItem$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setExecBindEnd(Ljava/util/function/Consumer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->execBindEnd:Ljava/util/function/Consumer;

    return-void
.end method

.method public final setItemVersion(Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/item/StreamItem;->itemVersion:Lorg/schabi/newpipe/local/feed/item/StreamItem$ItemVersion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StreamItem(streamWithState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", itemVersion="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
