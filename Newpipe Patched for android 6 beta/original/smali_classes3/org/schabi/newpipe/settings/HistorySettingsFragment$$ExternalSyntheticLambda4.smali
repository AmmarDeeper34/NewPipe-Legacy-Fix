.class public final synthetic Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/HistorySettingsFragment;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/HistorySettingsFragment;Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/settings/HistorySettingsFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda4;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/settings/HistorySettingsFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda4;->f$1:Landroidx/preference/Preference;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$lambda$N8FowLPHXZDSP76IfFz0n-c-6_A(Lorg/schabi/newpipe/settings/HistorySettingsFragment;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
