.class Lorg/schabi/newpipe/settings/migration/SettingMigrations$3;
.super Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;
.source "SettingMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/migration/SettingMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected migrate(Landroid/content/Context;)V
    .locals 2

    .line 94
    invoke-static {}, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->-$$Nest$sfgetsp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f120461

    .line 95
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {}, Lorg/schabi/newpipe/util/DeviceUtils;->isFireTv()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 94
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
