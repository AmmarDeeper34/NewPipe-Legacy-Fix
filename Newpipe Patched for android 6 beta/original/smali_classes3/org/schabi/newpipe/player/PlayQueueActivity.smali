.class public final Lorg/schabi/newpipe/player/PlayQueueActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PlayQueueActivity.java"

# interfaces
.implements Lorg/schabi/newpipe/player/event/PlayerEventListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayQueueActivity"


# instance fields
.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private menu:Landroid/view/Menu;

.field private player:Lorg/schabi/newpipe/player/Player;

.field private queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

.field private seeking:Z

.field private serviceBound:Z

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public static synthetic $r8$lambda$tQF49LQcnCCCivp6b0YklCutF0A(Lorg/schabi/newpipe/player/PlayQueueActivity;ILorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/player/PlayQueueActivity;->lambda$onAudioTrackClick$0(ILorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/player/PlayQueueActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/player/Player;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetqueueControlBinding(Lorg/schabi/newpipe/player/PlayQueueActivity;)Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputplayer(Lorg/schabi/newpipe/player/PlayQueueActivity;Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildComponents(Lorg/schabi/newpipe/player/PlayQueueActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->buildComponents()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munbind(Lorg/schabi/newpipe/player/PlayQueueActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->unbind()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/player/PlayQueueActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private bind()V
    .locals 3

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/player/PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const-string v1, "bind_player_holder_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 192
    :cond_0
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceBound:Z

    return-void
.end method

.method private buildAudioTrackMenu()V
    .locals 9

    .line 617
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a003e

    .line 621
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 623
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 624
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 625
    invoke-virtual {v1, v2}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda2;-><init>()V

    .line 626
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    .line 627
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 628
    iget-object v2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-static {v2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda3;-><init>()V

    .line 629
    invoke-virtual {v2, v3}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 631
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    .line 632
    invoke-virtual {v2}, Lj$/util/Optional;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 635
    :cond_1
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    .line 636
    invoke-interface {v4}, Landroid/view/Menu;->clear()V

    const/4 v6, 0x0

    .line 638
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 639
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    const/16 v8, 0x47

    .line 641
    invoke-static {p0, v7}, Lorg/schabi/newpipe/util/Localization;->audioTrackName(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    move-result-object v7

    .line 640
    invoke-interface {v4, v8, v6, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 644
    :cond_2
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 645
    invoke-static {p0, v1}, Lorg/schabi/newpipe/util/Localization;->audioTrackName(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 646
    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v3

    const v7, 0x7f120360

    .line 647
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 646
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 649
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 650
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 652
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 653
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    .line 633
    :cond_4
    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private buildComponents()V
    .locals 0

    .line 246
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->buildQueue()V

    .line 247
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->buildMetadata()V

    .line 248
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->buildSeekBar()V

    .line 249
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->buildControls()V

    return-void
.end method

.method private buildControls()V
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlBackward:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlFastRewind:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlFastForward:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlForward:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private buildMetadata()V
    .locals 2

    .line 264
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->metadata:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->songName:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 266
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->artistName:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private buildQueue()V
    .locals 2

    .line 253
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 254
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 255
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 256
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 257
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->getQueueScrollListener()Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 259
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 260
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private buildSeekBar()V
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 271
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->liveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    .locals 1

    .line 303
    new-instance v0, Lorg/schabi/newpipe/player/PlayQueueActivity$3;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/PlayQueueActivity$3;-><init>(Lorg/schabi/newpipe/player/PlayQueueActivity;)V

    return-object v0
.end method

.method private getOnSelectedListener()Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;
    .locals 1

    .line 321
    new-instance v0, Lorg/schabi/newpipe/player/PlayQueueActivity$4;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/PlayQueueActivity$4;-><init>(Lorg/schabi/newpipe/player/PlayQueueActivity;)V

    return-object v0
.end method

.method private getQueueScrollListener()Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;
    .locals 1

    .line 289
    new-instance v0, Lorg/schabi/newpipe/player/PlayQueueActivity$2;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/PlayQueueActivity$2;-><init>(Lorg/schabi/newpipe/player/PlayQueueActivity;)V

    return-object v0
.end method

.method private getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 214
    new-instance v0, Lorg/schabi/newpipe/player/PlayQueueActivity$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/PlayQueueActivity$1;-><init>(Lorg/schabi/newpipe/player/PlayQueueActivity;)V

    return-object v0
.end method

.method private synthetic lambda$onAudioTrackClick$0(ILorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;)V
    .locals 1

    .line 667
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    .line 668
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->getSelectedAudioStreamIndex()I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 669
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, p1, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object p1

    .line 674
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/player/Player;->setAudioTrack(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onAudioTrackClick(I)V
    .locals 2

    .line 663
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentMetadata()Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentMetadata()Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    move-result-object v0

    invoke-interface {v0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeAudioTrack()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/player/PlayQueueActivity;I)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onMaybeMuteChanged()V
    .locals 2

    .line 598
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v1, :cond_2

    const v1, 0x7f0a0050

    .line 599
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1204a3

    goto :goto_0

    :cond_0
    const v1, 0x7f1202e3

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 607
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080163

    goto :goto_1

    :cond_1
    const v1, 0x7f080164

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method private onPlayModeChanged(IZ)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlRepeat:Landroid/widget/ImageButton;

    const v0, 0x7f080093

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 577
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlRepeat:Landroid/widget/ImageButton;

    const v0, 0x7f080095

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 573
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlRepeat:Landroid/widget/ImageButton;

    const v0, 0x7f080094

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    if-eqz p2, :cond_3

    const/16 p1, 0xff

    goto :goto_1

    :cond_3
    const/16 p1, 0x4d

    .line 587
    :goto_1
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlShuffle:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method private onPlaybackParameterChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 591
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v1, :cond_0

    const v1, 0x7f0a0051

    .line 592
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 593
    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    float-to-double v1, p1

    invoke-static {v1, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatSpeed(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private onStateChanged(I)V
    .locals 5

    .line 536
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    const/16 v1, 0x80

    const/16 v2, 0x7e

    const/16 v3, 0x7c

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const v4, 0x7f080147

    .line 547
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f1203b9

    .line 548
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v4, 0x7f08013b

    .line 539
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f12035c

    .line 540
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v4, 0x7f080132

    .line 543
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f120346

    .line 544
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x0

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    .line 563
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 564
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 558
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 559
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private openPlaybackParameterDialog()V
    .locals 7

    .line 405
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlaybackSpeed()F

    move-result v0

    float-to-double v1, v0

    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlaybackPitch()F

    move-result v0

    float-to-double v3, v0

    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 409
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlaybackSkipSilence()Z

    move-result v5

    move-object v6, p0

    .line 408
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->newInstance(DDZLorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;)Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/schabi/newpipe/player/PlayQueueActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private scrollToSelected()V
    .locals 3

    .line 347
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    .line 353
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 355
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 356
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sub-int v1, v0, v1

    .line 361
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x50

    if-ge v1, v2, :cond_2

    .line 363
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 365
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private unbind()V
    .locals 2

    .line 196
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceBound:Z

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceBound:Z

    .line 199
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/player/Player;->removeActivityListener(Lorg/schabi/newpipe/player/event/PlayerEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 204
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 208
    :cond_1
    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 209
    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    :cond_2
    return-void
.end method


# virtual methods
.method public onAudioTrackUpdate()V
    .locals 0

    .line 613
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->buildAudioTrackMenu()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 375
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 379
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 380
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->cycleNextRepeatMode()V

    return-void

    .line 381
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlBackward:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 382
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->playPrevious()V

    return-void

    .line 383
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlFastRewind:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 384
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->fastRewind()V

    return-void

    .line 385
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 386
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->playPause()V

    return-void

    .line 387
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlFastForward:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 388
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->fastForward()V

    return-void

    .line 389
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlForward:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 390
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->playNext()V

    return-void

    .line 391
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 392
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->toggleShuffleModeEnabled()V

    return-void

    .line 393
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->metadata:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 394
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->scrollToSelected()V

    return-void

    .line 395
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->liveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 396
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->seekToDefault()V

    :cond_9
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-static {p0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/ThemeHelper;->setTheme(Landroid/content/Context;I)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 90
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 92
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 93
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f12048d

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 98
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 99
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->bind()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 104
    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    .line 105
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 107
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->buildAudioTrackMenu()V

    .line 108
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onMaybeMuteChanged()V

    .line 110
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onPlaybackParameterChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 0

    .line 175
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 176
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->unbind()V

    return-void
.end method

.method public onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 506
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->songName:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->artistName:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->endTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->liveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 511
    sget-object p2, Lorg/schabi/newpipe/player/PlayQueueActivity$5;->$SwitchMap$org$schabi$newpipe$extractor$stream$StreamType:[I

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 517
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->endTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->liveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 521
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->scrollToSelected()V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a003d

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_0

    .line 166
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onAudioTrackClick(I)V

    return v2

    .line 170
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 147
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 154
    :pswitch_1
    invoke-static {p0}, Lorg/schabi/newpipe/util/PermissionHelper;->isPopupEnabledElseAsk(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 156
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnPopupPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    :cond_1
    return v2

    .line 150
    :pswitch_2
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 151
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnMainPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return v2

    .line 160
    :pswitch_3
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 161
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return v2

    .line 135
    :pswitch_4
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->openSettings(Landroid/content/Context;)V

    return v2

    .line 141
    :pswitch_5
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->openPlaybackParameterDialog()V

    return v2

    .line 144
    :pswitch_6
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->toggleMute()V

    return v2

    .line 138
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->showForPlayQueue(Lorg/schabi/newpipe/player/Player;Landroidx/fragment/app/FragmentManager;)Lio/reactivex/rxjava3/disposables/Disposable;

    return v2

    .line 132
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f0a0050
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a0053
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPlaybackParameterChanged(FFZ)V
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/player/Player;->setPlaybackParameters(FFZ)V

    .line 417
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onPlaybackParameterChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public onPlaybackUpdate(IIZLcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 468
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onStateChanged(I)V

    .line 469
    invoke-direct {p0, p2, p3}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onPlayModeChanged(IZ)V

    .line 470
    invoke-direct {p0, p4}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onPlaybackParameterChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 471
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onMaybeMuteChanged()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    const v1, 0x7f0a0056

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 121
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->popupPlayerSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    const v1, 0x7f0a0054

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 123
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->audioPlayerSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 429
    div-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object p1

    .line 430
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->currentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekDisplay:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onProgressUpdate(III)V
    .locals 3

    .line 478
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    int-to-float p3, p3

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float v1, v1, p3

    float-to-int p3, v1

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 482
    iget-object p3, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p3, p3, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 483
    iget-object p3, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p3, p3, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->endTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    div-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-boolean p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->seeking:Z

    if-nez p2, :cond_0

    .line 487
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 488
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->currentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    .line 489
    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz p1, :cond_1

    .line 493
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->liveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isLiveEdge()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 497
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->currentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 499
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->endTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 500
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->currentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 1

    if-nez p1, :cond_0

    .line 457
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    .line 459
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 460
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->getOnSelectedListener()Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->setSelectedListener(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;)V

    .line 461
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onServiceStopped()V
    .locals 0

    .line 527
    invoke-direct {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->unbind()V

    .line 528
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 p1, 0x1

    .line 437
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->seeking:Z

    .line 438
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekDisplay:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 443
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 446
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekDisplay:Lorg/schabi/newpipe/views/NewPipeTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 447
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->seeking:Z

    return-void
.end method
