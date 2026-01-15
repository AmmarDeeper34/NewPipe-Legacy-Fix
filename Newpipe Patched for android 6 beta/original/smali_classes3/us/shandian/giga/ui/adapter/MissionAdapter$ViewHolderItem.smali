.class Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MissionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/shandian/giga/ui/adapter/MissionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderItem"
.end annotation


# instance fields
.field cancel:Landroid/view/MenuItem;

.field checksum:Landroid/view/MenuItem;

.field date:Landroid/widget/TextView;

.field delete:Landroid/view/MenuItem;

.field estimatedTimeArrival:Ljava/lang/String;

.field icon:Landroid/widget/ImageView;

.field item:Lus/shandian/giga/service/DownloadManager$MissionItem;

.field lastDone:D

.field lastSpeed:[F

.field lastSpeedIdx:I

.field lastTimestamp:J

.field name:Landroid/widget/TextView;

.field open:Landroid/view/MenuItem;

.field pause:Landroid/view/MenuItem;

.field popupMenu:Landroid/widget/PopupMenu;

.field progress:Lus/shandian/giga/ui/common/ProgressDrawable;

.field queue:Landroid/view/MenuItem;

.field retry:Landroid/view/MenuItem;

.field showError:Landroid/view/MenuItem;

.field size:Landroid/widget/TextView;

.field source:Landroid/view/MenuItem;

.field start:Landroid/view/MenuItem;

.field status:Landroid/widget/TextView;

.field final synthetic this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;


# direct methods
.method public static synthetic $r8$lambda$Y_Meio2T7GUXfOm_R7xakFN9eQc(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hDHduKoqWiVnwMfC835F8c10HGQ(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lambda$new$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lUyMuzEHgx7VO8u56WYBu3QggdM(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qVU5QIl-fMZuZUTm3DE9kW2JaSE(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lambda$buildPopup$3(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetSpeedMeasure(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->resetSpeedMeasure()V

    return-void
.end method

.method constructor <init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V
    .locals 1

    .line 876
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 877
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-wide/16 p1, -0x1

    .line 870
    iput-wide p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    const/4 p1, 0x3

    .line 873
    new-array p1, p1, [F

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    .line 874
    const-string p1, "--:--"

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->estimatedTimeArrival:Ljava/lang/String;

    .line 879
    new-instance p1, Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-direct {p1}, Lus/shandian/giga/ui/common/ProgressDrawable;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    .line 880
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01ea

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 882
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    .line 883
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->name:Landroid/widget/TextView;

    .line 884
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01ec

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->icon:Landroid/widget/ImageView;

    .line 885
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    .line 886
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a01eb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->date:Landroid/widget/TextView;

    .line 888
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->name:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 890
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a01ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 891
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->buildPopup(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    .line 892
    new-instance v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0a032b

    .line 895
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    const v0, 0x7f0a0096

    .line 896
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    const v0, 0x7f0a0389

    .line 897
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    const v0, 0x7f0a02cb

    .line 898
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    const v0, 0x7f0a0243

    .line 899
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    const v0, 0x7f0a031a

    .line 900
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    const v0, 0x7f0a0150

    .line 901
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    const v0, 0x7f0a00e0

    .line 902
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    const v0, 0x7f0a0379

    .line 903
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->source:Landroid/view/MenuItem;

    const v0, 0x7f0a00ae

    .line 904
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->checksum:Landroid/view/MenuItem;

    .line 906
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 908
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 913
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda2;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private buildPopup(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 2

    .line 979
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-static {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->-$$Nest$fgetmContext(Lus/shandian/giga/ui/adapter/MissionAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f0f0012

    .line 980
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 981
    new-instance p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda3;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method private synthetic lambda$buildPopup$3(Landroid/view/MenuItem;)Z
    .locals 1

    .line 981
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-static {v0, p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->-$$Nest$mhandlePopupItem(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 892
    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showPopupMenu()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 909
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object p1, p1, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v0, p1, Lus/shandian/giga/get/FinishedMission;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-static {v0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->-$$Nest$mviewWithFileProvider(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/Mission;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 914
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 915
    invoke-direct {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showPopupMenu()V

    const/4 p1, 0x1

    return p1
.end method

.method private resetSpeedMeasure()V
    .locals 2

    .line 987
    const-string v0, "--:--"

    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->estimatedTimeArrival:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 988
    iput-wide v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    const/4 v0, -0x1

    .line 989
    iput v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    return-void
.end method

.method private showPopupMenu()V
    .locals 5

    .line 921
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 922
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 923
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 924
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 925
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 926
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 927
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 928
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 929
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->source:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 930
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->checksum:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 932
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    instance-of v2, v0, Lus/shandian/giga/get/DownloadMission;

    if-eqz v2, :cond_0

    check-cast v0, Lus/shandian/giga/get/DownloadMission;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 935
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->hasInvalidStorage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 936
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 937
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 938
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 939
    :cond_1
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 940
    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/16 v1, 0x3f1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 943
    :cond_2
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 944
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 945
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 949
    :cond_3
    iget-boolean v3, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v3, :cond_4

    .line 950
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 952
    :cond_4
    iget v3, v0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 953
    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 956
    :cond_5
    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    iget-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 958
    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 960
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isPsFailed()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v1, 0x1

    .line 961
    :cond_6
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 962
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 966
    :cond_7
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 967
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 968
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->checksum:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 971
    :goto_1
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lus/shandian/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 972
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->source:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 975
    :cond_8
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
