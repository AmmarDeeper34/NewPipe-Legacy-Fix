.class public final synthetic Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/DebugSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/DebugSettingsFragment;Lorg/schabi/newpipe/settings/DebugSettingsFragment$DebugSettingsBVDLeakCanaryAPI;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/DebugSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DebugSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/DebugSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/settings/DebugSettingsFragment;->$r8$lambda$7Gm3BqeNo4u-ntoeaAzcMreQir0(Lorg/schabi/newpipe/settings/DebugSettingsFragment;Lorg/schabi/newpipe/settings/DebugSettingsFragment$DebugSettingsBVDLeakCanaryAPI;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
