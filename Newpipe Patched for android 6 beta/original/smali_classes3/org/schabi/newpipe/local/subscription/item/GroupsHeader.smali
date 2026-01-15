.class public final Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "GroupsHeader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$Companion;


# instance fields
.field private listViewMode:Z

.field private final onSortClicked:Lkotlin/jvm/functions/Function0;

.field private final onToggleListViewModeClicked:Lkotlin/jvm/functions/Function0;

.field private showSortButton:Z

.field private final title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$aaL335WV_XCP41RLyon4iScPHYI(Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->bind$lambda$1(Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lUTmXgEO6JjaeALMiqkOajr04u8(Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->bind$lambda$0(Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->Companion:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZ)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSortClicked"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onToggleListViewModeClicked"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/xwray/groupie/viewbinding/BindableItem;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->title:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->onSortClicked:Lkotlin/jvm/functions/Function0;

    .line 12
    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->onToggleListViewModeClicked:Lkotlin/jvm/functions/Function0;

    .line 13
    iput-boolean p4, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->showSortButton:Z

    .line 14
    iput-boolean p5, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->listViewMode:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    const/4 p4, 0x1

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    const/4 p6, 0x1

    :goto_0
    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_1

    :cond_1
    move p6, p5

    goto :goto_0

    .line 9
    :goto_1
    invoke-direct/range {p1 .. p6}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZ)V

    return-void
.end method

.method private static final bind$lambda$0(Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;Landroid/view/View;)V
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->onSortClicked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final bind$lambda$1(Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;Landroid/view/View;)V
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->onToggleListViewModeClicked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final updateIcons(Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;)V
    .locals 2

    .line 45
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerToggleViewMode:Landroid/widget/ImageButton;

    .line 46
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->listViewMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0800e0

    goto :goto_0

    :cond_0
    const v1, 0x7f08011e

    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerSort:Landroid/widget/ImageButton;

    const-string v0, "headerSort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->showSortButton:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 257
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;I)V
    .locals 0

    .line 9
    check-cast p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->bind(Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;I)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V
    .locals 0

    .line 9
    check-cast p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->bind(Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;ILjava/util/List;)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;I)V
    .locals 1

    const-string p2, "viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerTitle:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerSort:Landroid/widget/ImageButton;

    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerToggleViewMode:Landroid/widget/ImageButton;

    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->updateIcons(Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;ILjava/util/List;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->updateIcons(Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;)V

    return-void

    .line 32
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xwray/groupie/viewbinding/BindableItem;->bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V

    return-void
.end method

.method public getLayout()I
    .locals 1

    .line 0
    const v0, 0x7f0d0105

    return v0
.end method

.method public bridge synthetic initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;

    move-result-object p1

    return-object p1
.end method

.method protected initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setListViewMode(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->listViewMode:Z

    return-void
.end method

.method public final setShowSortButton(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->showSortButton:Z

    return-void
.end method
