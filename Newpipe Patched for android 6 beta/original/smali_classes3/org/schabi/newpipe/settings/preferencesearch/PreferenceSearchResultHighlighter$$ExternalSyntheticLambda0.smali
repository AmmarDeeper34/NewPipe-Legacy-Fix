.class public final synthetic Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

.field public final synthetic f$1:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceFragmentCompat;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter;->$r8$lambda$GL13UpYxjsm9dzPBq0P7OI3jzQ4(Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;Landroidx/preference/PreferenceFragmentCompat;)V

    return-void
.end method
