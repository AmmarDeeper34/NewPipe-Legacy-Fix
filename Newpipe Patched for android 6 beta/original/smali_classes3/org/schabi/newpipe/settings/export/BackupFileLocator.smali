.class public final Lorg/schabi/newpipe/settings/export/BackupFileLocator;
.super Ljava/lang/Object;
.source "BackupFileLocator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/export/BackupFileLocator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/settings/export/BackupFileLocator$Companion;


# instance fields
.field private final db$delegate:Lkotlin/Lazy;

.field private final dbDir$delegate:Lkotlin/Lazy;

.field private final dbJournal$delegate:Lkotlin/Lazy;

.field private final dbShm$delegate:Lkotlin/Lazy;

.field private final dbWal$delegate:Lkotlin/Lazy;

.field private final homeDir:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$32AfT-oxqsjM8i_137js8D5X3Y8(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbWal_delegate$lambda$0(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D_wORVkmpruuUIVymBw90pYktxc(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbDir_delegate$lambda$0(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SZpG7NvvIQ9b7mMafoOOfRmQGno(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->db_delegate$lambda$0(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XwyWV7llUAHQbbk2VUFJl_itdhs(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbShm_delegate$lambda$0(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rlIbWgxWURozUxnjsL-jZW8pxqY(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbJournal_delegate$lambda$0(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/settings/export/BackupFileLocator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/settings/export/BackupFileLocator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->Companion:Lorg/schabi/newpipe/settings/export/BackupFileLocator$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "homeDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->homeDir:Ljava/io/File;

    .line 19
    new-instance p1, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbDir$delegate:Lkotlin/Lazy;

    .line 21
    new-instance p1, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->db$delegate:Lkotlin/Lazy;

    .line 23
    new-instance p1, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbJournal$delegate:Lkotlin/Lazy;

    .line 25
    new-instance p1, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbShm$delegate:Lkotlin/Lazy;

    .line 27
    new-instance p1, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbWal$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final dbDir_delegate$lambda$0(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;
    .locals 2

    .line 19
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->homeDir:Ljava/io/File;

    const-string v1, "/databases"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final dbJournal_delegate$lambda$0(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;
    .locals 2

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->getDbDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "newpipe.db-journal"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final dbShm_delegate$lambda$0(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;
    .locals 2

    .line 25
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->getDbDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "newpipe.db-shm"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final dbWal_delegate$lambda$0(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;
    .locals 2

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->getDbDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "newpipe.db-wal"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final db_delegate$lambda$0(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;
    .locals 2

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->getDbDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "newpipe.db"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getDb()Ljava/io/File;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->db$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final getDbDir()Ljava/io/File;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final getDbJournal()Ljava/io/File;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbJournal$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final getDbShm()Ljava/io/File;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbShm$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final getDbWal()Ljava/io/File;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbWal$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method
