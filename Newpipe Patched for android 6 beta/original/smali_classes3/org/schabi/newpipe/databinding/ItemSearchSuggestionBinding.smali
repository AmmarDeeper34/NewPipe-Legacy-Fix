.class public final Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;
.super Ljava/lang/Object;
.source "ItemSearchSuggestionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemSuggestionIcon:Landroid/widget/ImageView;

.field public final itemSuggestionQuery:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final suggestionInsert:Landroid/widget/LinearLayout;

.field public final suggestionSearch:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->itemSuggestionIcon:Landroid/widget/ImageView;

    .line 41
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->itemSuggestionQuery:Landroid/widget/TextView;

    .line 42
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->suggestionInsert:Landroid/widget/LinearLayout;

    .line 43
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->suggestionSearch:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;
    .locals 8

    const v0, 0x7f0a01f1

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01f2

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a03a8

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a03a9

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 97
    new-instance v2, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v2

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;
    .locals 2

    const v0, 0x7f0d0070

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ItemSearchSuggestionBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
