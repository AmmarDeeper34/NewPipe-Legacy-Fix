.class public abstract Lorg/schabi/newpipe/settings/migration/MigrationManager;
.super Ljava/lang/Object;
.source "MigrationManager.java"


# static fields
.field private static final MIGRATION_INFO:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$CqtWBVH-wv4DoQMN5IFAbkbHKik(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 0

    .line 98
    invoke-static {p0}, Lorg/schabi/newpipe/settings/migration/MigrationManager;->onMigrationInfoDismissed(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/settings/migration/MigrationManager;->MIGRATION_INFO:Ljava/util/List;

    return-void
.end method

.method public static addMigrationInfo(Landroidx/core/util/Consumer;)V
    .locals 1

    .line 70
    sget-object v0, Lorg/schabi/newpipe/settings/migration/MigrationManager;->MIGRATION_INFO:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static createMigrationInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 93
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120332

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/settings/migration/MigrationManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/migration/MigrationManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static onMigrationInfoDismissed(Landroid/content/Context;)V
    .locals 2

    .line 79
    sget-object v0, Lorg/schabi/newpipe/settings/migration/MigrationManager;->MIGRATION_INFO:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 80
    invoke-static {p0}, Lorg/schabi/newpipe/settings/migration/MigrationManager;->showUserInfoIfPresent(Landroid/content/Context;)V

    return-void
.end method

.method public static runMigrationsIfNeeded(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-static {p0}, Lorg/schabi/newpipe/settings/migration/SettingMigrations;->runMigrationsIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method public static showUserInfoIfPresent(Landroid/content/Context;)V
    .locals 3

    .line 48
    sget-object v0, Lorg/schabi/newpipe/settings/migration/MigrationManager;->MIGRATION_INFO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 53
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Consumer;

    invoke-interface {v0, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 55
    const-string v2, "Showing migration info to the user"

    invoke-static {p0, v2, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    sget-object v0, Lorg/schabi/newpipe/settings/migration/MigrationManager;->MIGRATION_INFO:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 58
    invoke-static {p0}, Lorg/schabi/newpipe/settings/migration/MigrationManager;->showUserInfoIfPresent(Landroid/content/Context;)V

    return-void
.end method
