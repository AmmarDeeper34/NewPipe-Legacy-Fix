.class Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PreferenceSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferenceViewHolder"
.end annotation


# instance fields
.field final binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;->binding:Lorg/schabi/newpipe/databinding/SettingsPreferencesearchListItemResultBinding;

    return-void
.end method
