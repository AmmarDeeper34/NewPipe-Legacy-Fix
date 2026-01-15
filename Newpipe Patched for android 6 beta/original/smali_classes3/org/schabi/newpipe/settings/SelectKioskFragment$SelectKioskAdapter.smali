.class Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectKioskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/SelectKioskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectKioskAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;,
        Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;
    }
.end annotation


# instance fields
.field private final kioskList:Ljava/util/List;

.field final synthetic this$0:Lorg/schabi/newpipe/settings/SelectKioskFragment;


# direct methods
.method public static synthetic $r8$lambda$YuhaqI2Ne9T_1yIQlouKhGQktWA(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;->lambda$onBindViewHolder$0(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/settings/SelectKioskFragment;)V
    .locals 10

    .line 107
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectKioskFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 105
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;->kioskList:Ljava/util/List;

    .line 108
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 109
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getKioskList()Lorg/schabi/newpipe/extractor/kiosk/KioskList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getAvailableKiosks()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    const v3, 0x7f1203ee

    .line 110
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v8, v5}, Lorg/schabi/newpipe/util/KioskTranslator;->getTranslatedKioskName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    .line 110
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 113
    iget-object v3, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;->kioskList:Ljava/util/List;

    new-instance v4, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v5

    invoke-static {v5}, Lorg/schabi/newpipe/util/ServiceHelper;->getIcon(I)I

    move-result v6

    .line 114
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v7

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;-><init>(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;IILjava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;Landroid/view/View;)V
    .locals 0

    .line 135
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectKioskFragment;

    invoke-static {p2, p1}, Lorg/schabi/newpipe/settings/SelectKioskFragment;->-$$Nest$mclickedItem(Lorg/schabi/newpipe/settings/SelectKioskFragment;Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;->kioskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 103
    check-cast p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;->onBindViewHolder(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;I)V
    .locals 3

    .line 131
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;->kioskList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;

    .line 132
    iget-object v0, p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p2, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->kioskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;->thumbnailView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;->this$0:Lorg/schabi/newpipe/settings/SelectKioskFragment;

    .line 134
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p2, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->icon:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object p1, p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;->view:Landroid/view/View;

    new-instance v0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 103
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;
    .locals 2

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00f9

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 127
    new-instance p2, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;

    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;-><init>(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;Landroid/view/View;)V

    return-object p2
.end method
