.class public final synthetic Lorg/schabi/newpipe/settings/AppearanceSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/AppearanceSettingsFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/AppearanceSettingsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/AppearanceSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/AppearanceSettingsFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/AppearanceSettingsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/schabi/newpipe/settings/AppearanceSettingsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/schabi/newpipe/settings/AppearanceSettingsFragment$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/AppearanceSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/AppearanceSettingsFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/AppearanceSettingsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/settings/AppearanceSettingsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/settings/AppearanceSettingsFragment$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/settings/AppearanceSettingsFragment;->$r8$lambda$7czWW-_hM7lDLXRN4Gk934oluCE(Lorg/schabi/newpipe/settings/AppearanceSettingsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
