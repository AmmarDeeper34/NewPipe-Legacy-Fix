.class public final synthetic Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/preference/Preference;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda2;->f$0:Landroidx/preference/Preference;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda2;->f$0:Landroidx/preference/Preference;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter$$ExternalSyntheticLambda2;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultHighlighter;->$r8$lambda$kgxG8RDTo3Dlu7UjwPwTg9qkdLk(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method
