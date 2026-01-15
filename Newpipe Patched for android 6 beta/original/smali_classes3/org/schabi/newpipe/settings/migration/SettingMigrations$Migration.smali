.class abstract Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;
.super Ljava/lang/Object;
.source "SettingMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/migration/SettingMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Migration"
.end annotation


# instance fields
.field public final newVersion:I

.field public final oldVersion:I


# direct methods
.method static bridge synthetic -$$Nest$mshouldMigrate(Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;->shouldMigrate(I)Z

    move-result p0

    return p0
.end method

.method protected constructor <init>(II)V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput p1, p0, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;->oldVersion:I

    .line 299
    iput p2, p0, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;->newVersion:I

    return-void
.end method

.method private shouldMigrate(I)Z
    .locals 1

    .line 309
    iget v0, p0, Lorg/schabi/newpipe/settings/migration/SettingMigrations$Migration;->oldVersion:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected abstract migrate(Landroid/content/Context;)V
.end method
