.class public final enum Lj$/nio/file/StandardCopyOption;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/CopyOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/StandardCopyOption;",
        ">;",
        "Lj$/nio/file/CopyOption;"
    }
.end annotation


# static fields
.field public static final enum ATOMIC_MOVE:Lj$/nio/file/StandardCopyOption;

.field public static final enum COPY_ATTRIBUTES:Lj$/nio/file/StandardCopyOption;

.field public static final enum REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

.field public static final synthetic a:[Lj$/nio/file/StandardCopyOption;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lj$/nio/file/StandardCopyOption;

    .line 34
    const-string v1, "REPLACE_EXISTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    .line 42
    new-instance v1, Lj$/nio/file/StandardCopyOption;

    .line 34
    const-string v3, "COPY_ATTRIBUTES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v1, Lj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Lj$/nio/file/StandardCopyOption;

    .line 46
    new-instance v3, Lj$/nio/file/StandardCopyOption;

    .line 34
    const-string v5, "ATOMIC_MOVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v3, Lj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Lj$/nio/file/StandardCopyOption;

    const/4 v5, 0x3

    .line 34
    new-array v5, v5, [Lj$/nio/file/StandardCopyOption;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lj$/nio/file/StandardCopyOption;->a:[Lj$/nio/file/StandardCopyOption;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/StandardCopyOption;
    .locals 1

    .line 34
    const-class v0, Lj$/nio/file/StandardCopyOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/nio/file/StandardCopyOption;

    return-object p0
.end method

.method public static values()[Lj$/nio/file/StandardCopyOption;
    .locals 1

    .line 34
    sget-object v0, Lj$/nio/file/StandardCopyOption;->a:[Lj$/nio/file/StandardCopyOption;

    invoke-virtual {v0}, [Lj$/nio/file/StandardCopyOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/StandardCopyOption;

    return-object v0
.end method
