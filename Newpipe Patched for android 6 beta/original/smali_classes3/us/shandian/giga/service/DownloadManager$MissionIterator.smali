.class public Lus/shandian/giga/service/DownloadManager$MissionIterator;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/shandian/giga/service/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MissionIterator"
.end annotation


# instance fields
.field final FINISHED:Ljava/lang/Object;

.field final PENDING:Ljava/lang/Object;

.field current:Ljava/util/ArrayList;

.field hasFinished:Z

.field hidden:Ljava/util/ArrayList;

.field snapshot:Ljava/util/ArrayList;

.field final synthetic this$0:Lus/shandian/giga/service/DownloadManager;


# direct methods
.method public static synthetic $r8$lambda$z3NDeZWGaZRL_9SeGweH4rF2GN4(Lus/shandian/giga/service/DownloadManager$MissionIterator;Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/shandian/giga/get/Mission;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->lambda$getSpecialItems$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/shandian/giga/get/Mission;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lus/shandian/giga/service/DownloadManager;)V
    .locals 1

    .line 603
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 594
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    .line 595
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 601
    iput-boolean p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    .line 604
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 605
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    .line 606
    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getSpecialItems()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lus/shandian/giga/service/DownloadManager;Lus/shandian/giga/service/DownloadManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;-><init>(Lus/shandian/giga/service/DownloadManager;)V

    return-void
.end method

.method private getSpecialItems()Ljava/util/ArrayList;
    .locals 5

    .line 610
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    monitor-enter v0

    .line 611
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    invoke-static {v2}, Lus/shandian/giga/service/DownloadManager;->-$$Nest$fgetmMissionsPending(Lus/shandian/giga/service/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 612
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    invoke-static {v3}, Lus/shandian/giga/service/DownloadManager;->-$$Nest$fgetmMissionsFinished(Lus/shandian/giga/service/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 613
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 616
    new-instance v4, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2}, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/service/DownloadManager$MissionIterator;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3, v4}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 623
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 626
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 627
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 629
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 630
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 631
    iget-object v3, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 634
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 635
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 639
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    .line 641
    monitor-exit v0

    return-object v4

    .line 642
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$getSpecialItems$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/shandian/giga/get/Mission;)Z
    .locals 3

    .line 617
    instance-of v0, p3, Lus/shandian/giga/get/DownloadMission;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lus/shandian/giga/get/DownloadMission;

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2, v0}, Lus/shandian/giga/service/DownloadManager;->canRecoverMission(Lus/shandian/giga/get/DownloadMission;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 620
    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 729
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 730
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 732
    instance-of v0, p1, Lus/shandian/giga/get/Mission;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lus/shandian/giga/get/Mission;

    if-eqz v0, :cond_0

    .line 733
    check-cast p1, Lus/shandian/giga/get/Mission;

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    check-cast p2, Lus/shandian/giga/get/Mission;

    iget-object p2, p2, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->equals(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 724
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public end()V
    .locals 1

    .line 669
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    return-void
.end method

.method public getItem(I)Lus/shandian/giga/service/DownloadManager$MissionItem;
    .locals 2

    .line 646
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 648
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    new-instance p1, Lus/shandian/giga/service/DownloadManager$MissionItem;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lus/shandian/giga/service/DownloadManager$MissionItem;-><init>(I)V

    return-object p1

    .line 649
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    new-instance p1, Lus/shandian/giga/service/DownloadManager$MissionItem;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lus/shandian/giga/service/DownloadManager$MissionItem;-><init>(I)V

    return-object p1

    .line 651
    :cond_1
    new-instance v0, Lus/shandian/giga/service/DownloadManager$MissionItem;

    const/4 v1, 0x0

    check-cast p1, Lus/shandian/giga/get/Mission;

    invoke-direct {v0, v1, p1}, Lus/shandian/giga/service/DownloadManager$MissionItem;-><init>(ILus/shandian/giga/get/Mission;)V

    return-object v0
.end method

.method public getNewListSize()I
    .locals 1

    .line 719
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 714
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSpecialAtItem(I)I
    .locals 1

    .line 655
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 657
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 658
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hasFinishedMissions()Z
    .locals 1

    .line 682
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    return v0
.end method

.method public hasValidPendingMissions()[Z
    .locals 8

    .line 696
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    monitor-enter v0

    .line 697
    :try_start_0
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    invoke-static {v1}, Lus/shandian/giga/service/DownloadManager;->-$$Nest$fgetmMissionsPending(Lus/shandian/giga/service/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/shandian/giga/get/DownloadMission;

    .line 698
    iget-object v7, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Lus/shandian/giga/get/DownloadMission;->isCorrupt()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 701
    :cond_1
    iget-boolean v5, v5, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 706
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    .line 708
    new-array v0, v0, [Z

    aput-boolean v3, v0, v2

    aput-boolean v4, v0, v6

    return-object v0

    .line 706
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public hide(Lus/shandian/giga/get/Mission;)V
    .locals 1

    .line 674
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 665
    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getSpecialItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    return-void
.end method

.method public unHide(Lus/shandian/giga/get/Mission;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
