.class final Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SuggestionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SuggestionItemCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 79
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    check-cast p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemCallback;->areContentsTheSame(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)Z
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 79
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    check-cast p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemCallback;->areItemsTheSame(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)Z
    .locals 2

    .line 84
    iget-boolean v0, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->fromHistory:Z

    iget-boolean v1, p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->fromHistory:Z

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    iget-object p2, p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
