.class public Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SuggestionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemCallback;,
        Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;,
        Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;
    }
.end annotation


# instance fields
.field private listener:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;


# direct methods
.method public static synthetic $r8$lambda$0vg8PirfttfZTyjKMs7HhhVzp08(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->lambda$onBindViewHolder$1(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mg02-nkrDAXuos8XgLMJvb7bR0E(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->lambda$onBindViewHolder$0(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sA1JtsnxeqDOhk53XU0LUgtfJiw(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->lambda$onBindViewHolder$2(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemCallback;-><init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter-IA;)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->listener:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;

    if-eqz p2, :cond_0

    .line 40
    invoke-interface {p2, p1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;->onSuggestionItemSelected(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Landroid/view/View;)Z
    .locals 0

    .line 44
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->listener:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;

    if-eqz p2, :cond_0

    .line 45
    invoke-interface {p2, p1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;->onSuggestionItemLongClick(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onBindViewHolder$2(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->listener:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;

    if-eqz p2, :cond_0

    .line 51
    invoke-interface {p2, p1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;->onSuggestionItemInserted(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 14
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->onBindViewHolder(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;I)V
    .locals 2

    .line 36
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    .line 37
    invoke-static {p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;->-$$Nest$mupdateFrom(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    .line 38
    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;->-$$Nest$fgetitemBinding(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;)Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->suggestionSearch:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;->-$$Nest$fgetitemBinding(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;)Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->suggestionSearch:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 49
    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;->-$$Nest$fgetitemBinding(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;)Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->suggestionInsert:Landroid/widget/LinearLayout;

    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;
    .locals 2

    .line 30
    new-instance p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;-><init>(Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter-IA;)V

    return-object p2
.end method

.method public setListener(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->listener:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$OnSuggestionItemSelected;

    return-void
.end method
