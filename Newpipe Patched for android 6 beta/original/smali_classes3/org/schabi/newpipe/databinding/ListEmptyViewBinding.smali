.class public final Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;
.super Ljava/lang/Object;
.source "ListEmptyViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 50
    new-instance v0, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;-><init>(Landroid/widget/LinearLayout;)V

    return-object v0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/ListEmptyViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
