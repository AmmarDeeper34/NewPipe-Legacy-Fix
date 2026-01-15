.class Lorg/schabi/newpipe/settings/migration/SettingMigrations$7;
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
.method public static synthetic $r8$lambda$SIAv3jugmOWzGo4AFcx9ao6h3Wk(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f120287

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120286

    .line 182
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/settings/migration/MigrationManager;->createMigrationInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$dydBxPzmPbX7Lq3E6meqjXvdrLs(Lorg/schabi/newpipe/settings/tabs/Tab;)Z
    .locals 3

    .line 173
    instance-of v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 171
    check-cast p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    .line 172
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->getKioskServiceId()I

    move-result v0

    sget-object v2, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 173
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->getKioskId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Top 50"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method constructor <init>(II)V
    .locals 0

    .line 163
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected migrate(Landroid/content/Context;)V
    .locals 3

    .line 168
    invoke-static {p1}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->getManager(Landroid/content/Context;)Lorg/schabi/newpipe/settings/tabs/TabsManager;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->getTabs()Ljava/util/List;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7$$ExternalSyntheticLambda0;-><init>()V

    .line 171
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 174
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 176
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/settings/tabs/TabsManager;->saveTabs(Ljava/util/List;)V

    .line 178
    new-instance p1, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$7$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lorg/schabi/newpipe/settings/migration/MigrationManager;->addMigrationInfo(Landroidx/core/util/Consumer;)V

    :cond_0
    return-void
.end method
