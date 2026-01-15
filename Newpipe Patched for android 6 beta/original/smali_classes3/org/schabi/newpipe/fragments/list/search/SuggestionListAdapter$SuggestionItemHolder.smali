.class public final Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SuggestionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuggestionItemHolder"
.end annotation


# instance fields
.field private final itemBinding:Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;


# direct methods
.method static bridge synthetic -$$Nest$fgetitemBinding(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;)Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateFrom(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;->updateFrom(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    return-void
.end method

.method private constructor <init>(Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 69
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;-><init>(Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;)V

    return-void
.end method

.method private updateFrom(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->itemSuggestionIcon:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->fromHistory:Z

    if-eqz v1, :cond_0

    const v1, 0x7f080116

    goto :goto_0

    :cond_0
    const v1, 0x7f08014c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->itemSuggestionQuery:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
