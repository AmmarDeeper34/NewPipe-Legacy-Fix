.class public final Lorg/schabi/newpipe/databinding/PickerIconItemBinding;
.super Ljava/lang/Object;
.source "PickerIconItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final iconView:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;->rootView:Landroid/widget/ImageView;

    .line 24
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;->iconView:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerIconItemBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 54
    check-cast p0, Landroid/widget/ImageView;

    .line 56
    new-instance v0, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;

    invoke-direct {v0, p0, p0}, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    .line 51
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
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;->getRoot()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ImageView;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;->rootView:Landroid/widget/ImageView;

    return-object v0
.end method
