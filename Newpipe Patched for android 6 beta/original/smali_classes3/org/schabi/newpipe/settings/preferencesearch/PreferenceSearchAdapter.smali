.class Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "PreferenceSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceCallback;,
        Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;
    }
.end annotation


# instance fields
.field private onItemClickListener:Ljava/util/function/Consumer;


# direct methods
.method public static synthetic $r8$lambda$JTXkytbZ5cpsV6FXMELz-5eDfuk(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;->lambda$onBindViewHolder$0(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 21
    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceCallback;-><init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter-IA;)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;->onItemClickListener:Ljava/util/function/Consumer;

    if-eqz p2, :cond_0

    .line 54
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;->onBindViewHolder(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;I)V
    .locals 4

    .line 34
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 36
    iget-object v0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;->summary:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_0
    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getBreadcrumbs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;->breadcrumbs:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;->breadcrumbs:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;->breadcrumbs:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getBreadcrumbs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;
    .locals 2

    .line 28
    new-instance p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;-><init>(Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;)V

    return-object p2
.end method

.method setOnItemClickListener(Ljava/util/function/Consumer;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;->onItemClickListener:Ljava/util/function/Consumer;

    return-void
.end method
