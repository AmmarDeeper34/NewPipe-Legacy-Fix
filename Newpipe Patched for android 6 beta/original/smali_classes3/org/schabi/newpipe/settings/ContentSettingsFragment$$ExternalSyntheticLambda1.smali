.class public final synthetic Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$SummaryProvider;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/ContentSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/ContentSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/settings/ContentSettingsFragment;

    return-void
.end method


# virtual methods
.method public final provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/settings/ContentSettingsFragment;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/settings/ContentSettingsFragment;->$r8$lambda$EwWlF8RlbZvRf590F6PJiDD1OOw(Lorg/schabi/newpipe/settings/ContentSettingsFragment;Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
