.class public abstract Lorg/schabi/newpipe/settings/migration/SettingMigrations;
.super Ljava/lang/Object;
.source "SettingMigrations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;
    }
.end annotation


# static fields
.field private static final MIGRATION_0_1:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

.field private static final MIGRATION_1_2:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

.field private static final MIGRATION_2_3:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

.field private static final MIGRATION_3_4:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

.field private static final MIGRATION_4_5:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

.field private static final MIGRATION_5_6:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

.field private static final MIGRATION_6_7:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

.field private static final MIGRATION_7_8:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

.field private static final SETTING_MIGRATIONS:[Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

.field private static final TAG:Ljava/lang/String;

.field private static sp:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsp()Landroid/content/SharedPreferences;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 49
    const-class v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$1;-><init>(II)V

    sput-object v0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->MIGRATION_0_1:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

    .line 66
    new-instance v3, Lorg/schabi/newpipe/settings/migration/SettingMigrations$2;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$2;-><init>(II)V

    sput-object v3, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->MIGRATION_1_2:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

    .line 85
    new-instance v5, Lorg/schabi/newpipe/settings/migration/SettingMigrations$3;

    const/4 v6, 0x3

    invoke-direct {v5, v4, v6}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$3;-><init>(II)V

    sput-object v5, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->MIGRATION_2_3:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

    .line 101
    new-instance v7, Lorg/schabi/newpipe/settings/migration/SettingMigrations$4;

    const/4 v8, 0x4

    invoke-direct {v7, v6, v8}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$4;-><init>(II)V

    sput-object v7, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->MIGRATION_3_4:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

    .line 130
    new-instance v9, Lorg/schabi/newpipe/settings/migration/SettingMigrations$5;

    const/4 v10, 0x5

    invoke-direct {v9, v8, v10}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$5;-><init>(II)V

    sput-object v9, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->MIGRATION_4_5:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

    .line 149
    new-instance v11, Lorg/schabi/newpipe/settings/migration/SettingMigrations$6;

    const/4 v12, 0x6

    invoke-direct {v11, v10, v12}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$6;-><init>(II)V

    sput-object v11, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->MIGRATION_5_6:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

    .line 163
    new-instance v13, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7;

    const/4 v14, 0x7

    invoke-direct {v13, v12, v14}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7;-><init>(II)V

    sput-object v13, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->MIGRATION_6_7:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

    .line 188
    new-instance v15, Lorg/schabi/newpipe/settings/migration/SettingMigrations$8;

    const/16 v16, 0x0

    const/16 v1, 0x8

    invoke-direct {v15, v14, v1}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$8;-><init>(II)V

    sput-object v15, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->MIGRATION_7_8:Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

    .line 230
    new-array v1, v1, [Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

    aput-object v0, v1, v16

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    aput-object v7, v1, v6

    aput-object v9, v1, v8

    aput-object v11, v1, v10

    aput-object v13, v1, v12

    aput-object v15, v1, v14

    sput-object v1, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->SETTING_MIGRATIONS:[Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

    return-void
.end method

.method static runMigrationsIfNeeded(Landroid/content/Context;)V
    .locals 13

    .line 249
    const-string v0, " to "

    const-string v1, "Migrating preferences from version "

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    const v2, 0x7f120220

    .line 250
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 251
    sget-object v3, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 254
    invoke-static {}, Lorg/schabi/newpipe/App;->getApp()Lorg/schabi/newpipe/App;

    move-result-object v5

    invoke-virtual {v5}, Lorg/schabi/newpipe/App;->isFirstRun()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_0

    .line 255
    sget-object p0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    if-ne v3, v6, :cond_1

    return-void

    .line 263
    :cond_1
    sget-object v5, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->SETTING_MIGRATIONS:[Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;

    array-length v7, v5

    move v8, v3

    :goto_0
    if-ge v4, v7, :cond_4

    aget-object v9, v5, v4

    .line 265
    :try_start_0
    invoke-static {v9, v8}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;->-$$Nest$mshouldMigrate(Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 266
    sget-boolean v10, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 267
    sget-object v10, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;->newVersion:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    .line 270
    :cond_2
    :goto_1
    invoke-virtual {v9, p0}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;->migrate(Landroid/content/Context;)V

    .line 271
    iget v8, v9, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;->newVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 275
    :goto_2
    sget-object v5, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 276
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v5, Lorg/schabi/newpipe/error/UserAction;->PREFERENCES_MIGRATION:Lorg/schabi/newpipe/error/UserAction;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Error at "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " => "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v5, v0}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void

    .line 288
    :cond_4
    sget-object p0, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
