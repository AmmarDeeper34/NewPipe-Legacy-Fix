.class public abstract Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter;
.super Ljava/lang/Object;
.source "PreferenceSearchResultHighlighter.java"


# direct methods
.method public static synthetic $r8$lambda$67GbhthFSkV8rBeBV6jlFMy3iZk(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public static synthetic $r8$lambda$7SBVb8RqGk_nK5IWtuETfZ25zZ8(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 67
    instance-of p1, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    .line 68
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter;->showRippleAnimation(Landroid/graphics/drawable/RippleDrawable;)V

    return-void

    .line 72
    :cond_0
    invoke-static {p2, p3}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter;->highlightFallback(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GL13UpYxjsm9dzPBq0P7OI3jzQ4(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter;->doHighlight(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Landroidx/preference/PreferenceFragmentCompat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kgxG8RDTo3Dlu7UjwPwTg9qkdLk(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method

.method private static doHighlight(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 3

    .line 48
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' not found on \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PrefSearchResHighlter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 57
    instance-of v2, v1, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    if-eqz v2, :cond_1

    .line 58
    check-cast v1, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 59
    invoke-interface {v1, v0}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 62
    new-instance v2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1, v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 77
    :cond_1
    invoke-static {p1, v0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter;->highlightFallback(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)V

    return-void
.end method

.method public static highlight(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 2

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static highlightFallback(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)V
    .locals 6

    .line 91
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x1010036

    .line 93
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    filled-new-array {v3}, [I

    move-result-object v2

    .line 95
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const v2, -0x1ac6cb

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Landroidx/preference/Preference;->isIconSpaceReserved()Z

    move-result v2

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08013b

    .line 105
    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 108
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 109
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    .line 113
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0, v2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda2;-><init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;Z)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static showRippleAnimation(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 4

    const v0, 0x10100a7

    const v1, 0x101009e

    .line 120
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda3;-><init>(Landroid/graphics/drawable/RippleDrawable;)V

    const-wide/16 v2, 0x3e8

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
