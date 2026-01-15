.class Lorg/schabi/newpipe/settings/migration/SettingMigrations$6;
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

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected migrate(Landroid/content/Context;)V
    .locals 3

    .line 152
    invoke-static {}, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->-$$Nest$sfgetsp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "download_thumbnail_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 154
    invoke-static {}, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->-$$Nest$sfgetsp()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f1201f6

    .line 155
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x7f1201f3

    goto :goto_0

    :cond_0
    const v0, 0x7f1201fc

    .line 156
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 159
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
