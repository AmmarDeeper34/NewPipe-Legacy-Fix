.class public Lorg/schabi/newpipe/views/CustomCollapsingToolbarLayout;
.super Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.source "CustomCollapsingToolbarLayout.java"


# direct methods
.method public static synthetic $r8$lambda$4NjoEXMJJ4gM3TFBflBxxz-1f24(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Lorg/schabi/newpipe/views/CustomCollapsingToolbarLayout;->overrideListener()V

    return-void
.end method


# virtual methods
.method public overrideListener()V
    .locals 1

    .line 39
    new-instance v0, Lorg/schabi/newpipe/views/CustomCollapsingToolbarLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/views/CustomCollapsingToolbarLayout$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method
