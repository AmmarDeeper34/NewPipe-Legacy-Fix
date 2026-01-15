.class public Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PlayQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$HFHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private footer:Landroid/view/View;

.field private final playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field private final playQueueItemBuilder:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

.field private playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

.field private showFooter:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetplayQueueReactor(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputplayQueueReactor(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method static bridge synthetic -$$Nest$monPlayQueueChanged(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->onPlayQueueChanged(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->showFooter:Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->footer:Landroid/view/View;

    .line 64
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getBroadcastReceiver()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueItemBuilder:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    .line 69
    iput-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 71
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getBroadcastReceiver()Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Flowable;->toObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-direct {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->getReactor()Lio/reactivex/rxjava3/core/Observer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Play Queue has not been initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getReactor()Lio/reactivex/rxjava3/core/Observer;
    .locals 1

    .line 75
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;)V

    return-object v0
.end method

.method private onPlayQueueChanged(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    .locals 2

    .line 103
    sget-object v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$2;->$SwitchMap$org$schabi$newpipe$player$playqueue$events$PlayQueueEventType:[I

    invoke-interface {p1}, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;->type()Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 127
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;

    .line 128
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;->getFromIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/events/MoveEvent;->getToIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void

    .line 122
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/events/RemoveEvent;

    .line 123
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/events/RemoveEvent;->getRemoveIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 124
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/events/RemoveEvent;->getQueueIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    .line 117
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/events/ErrorEvent;

    .line 118
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/events/ErrorEvent;->getErrorIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 119
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/events/ErrorEvent;->getQueueIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    .line 113
    :pswitch_3
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/events/AppendEvent;

    .line 114
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/events/AppendEvent;->getAmount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void

    .line 108
    :pswitch_4
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/events/SelectEvent;

    .line 109
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/events/SelectEvent;->getOldIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 110
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/events/SelectEvent;->getNewIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueReactor:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 170
    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->footer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->showFooter:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->footer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->showFooter:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 204
    instance-of v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;

    if-eqz v0, :cond_1

    .line 205
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;

    .line 208
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueItemBuilder:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 209
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    invoke-virtual {v0, p1, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->buildStreamInfoItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 212
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 213
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 214
    :cond_1
    instance-of v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$HFHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->footer:Landroid/view/View;

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->showFooter:Z

    if-eqz v0, :cond_2

    .line 216
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$HFHolder;

    iput-object p2, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$HFHolder;->view:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 196
    sget-object v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to create view holder with undefined type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance p2, Lorg/schabi/newpipe/util/FallbackViewHolder;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lorg/schabi/newpipe/util/FallbackViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 191
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$HFHolder;

    iget-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->footer:Landroid/view/View;

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$HFHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 193
    :cond_1
    new-instance p2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00d9

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setSelectedListener(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueItemBuilder:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->setOnSelectedListener(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;)V

    return-void
.end method

.method public unsetSelectedListener()V
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueItemBuilder:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->setOnSelectedListener(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;)V

    return-void
.end method
