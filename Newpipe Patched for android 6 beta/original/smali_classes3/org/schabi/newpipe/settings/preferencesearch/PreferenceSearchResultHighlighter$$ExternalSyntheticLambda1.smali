.class public final synthetic Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/preference/PreferenceFragmentCompat;

.field public final synthetic f$3:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/PreferenceFragmentCompat;

    iput-object p4, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda1;->f$3:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda1;->f$0:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v3, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda1;->f$3:Landroidx/preference/Preference;

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter;->$r8$lambda$7SBVb8RqGk_nK5IWtuETfZ25zZ8(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)V

    return-void
.end method
