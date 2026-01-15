.class public final synthetic Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment;->$r8$lambda$WuAuK5_JE_5_vDEZOV1At0DcMaM(Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
