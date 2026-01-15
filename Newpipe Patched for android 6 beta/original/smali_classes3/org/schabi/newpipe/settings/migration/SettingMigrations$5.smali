.class Lorg/schabi/newpipe/settings/migration/SettingMigrations$5;
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

    .line 130
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected migrate(Landroid/content/Context;)V
    .locals 5

    .line 133
    invoke-static {}, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->-$$Nest$sfgetsp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "brightness_gesture_control"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 134
    invoke-static {}, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->-$$Nest$sfgetsp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "volume_gesture_control"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 136
    invoke-static {}, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->-$$Nest$sfgetsp()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const v3, 0x7f1203ca

    .line 138
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120311

    if-eqz v1, :cond_0

    const v1, 0x7f1204cb

    goto :goto_0

    :cond_0
    const v1, 0x7f120311

    .line 139
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const v1, 0x7f120223

    .line 141
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const v4, 0x7f120068

    .line 142
    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
