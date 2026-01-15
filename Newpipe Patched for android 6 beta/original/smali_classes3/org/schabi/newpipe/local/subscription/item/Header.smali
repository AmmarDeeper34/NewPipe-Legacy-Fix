.class public final Lorg/schabi/newpipe/local/subscription/item/Header;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "Header.kt"


# instance fields
.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/xwray/groupie/viewbinding/BindableItem;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/Header;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;I)V
    .locals 0

    .line 8
    check-cast p1, Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/Header;->bind(Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;I)V

    return-void
.end method

.method public bind(Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;I)V
    .locals 0

    const-string p2, "viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;->getRoot()Lorg/schabi/newpipe/views/NewPipeTextView;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/Header;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getLayout()I
    .locals 1

    .line 0
    const v0, 0x7f0d0106

    return v0
.end method

.method public bridge synthetic initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/Header;->initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;

    move-result-object p1

    return-object p1
.end method

.method protected initializeViewBinding(Landroid/view/View;)Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
