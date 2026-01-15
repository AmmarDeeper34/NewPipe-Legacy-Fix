.class public final synthetic Lorg/schabi/newpipe/settings/tabs/TabsManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/tabs/TabsManager;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/tabs/TabsManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/tabs/TabsManager;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/TabsManager$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/tabs/TabsManager;

    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->$r8$lambda$POyJhuXl2mNWaVaEwrhAgjWnKps(Lorg/schabi/newpipe/settings/tabs/TabsManager;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
