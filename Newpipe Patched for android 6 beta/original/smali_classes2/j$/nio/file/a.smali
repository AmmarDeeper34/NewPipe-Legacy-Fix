.class public final enum Lj$/nio/file/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum EXECUTE:Lj$/nio/file/a;

.field public static final enum READ:Lj$/nio/file/a;

.field public static final enum WRITE:Lj$/nio/file/a;

.field public static final synthetic a:[Lj$/nio/file/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lj$/nio/file/a;

    .line 34
    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lj$/nio/file/a;->READ:Lj$/nio/file/a;

    .line 42
    new-instance v1, Lj$/nio/file/a;

    .line 34
    const-string v3, "WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v1, Lj$/nio/file/a;->WRITE:Lj$/nio/file/a;

    .line 46
    new-instance v3, Lj$/nio/file/a;

    .line 34
    const-string v5, "EXECUTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v3, Lj$/nio/file/a;->EXECUTE:Lj$/nio/file/a;

    const/4 v5, 0x3

    .line 34
    new-array v5, v5, [Lj$/nio/file/a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lj$/nio/file/a;->a:[Lj$/nio/file/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/a;
    .locals 1

    .line 34
    const-class v0, Lj$/nio/file/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/nio/file/a;

    return-object p0
.end method

.method public static values()[Lj$/nio/file/a;
    .locals 1

    .line 34
    sget-object v0, Lj$/nio/file/a;->a:[Lj$/nio/file/a;

    invoke-virtual {v0}, [Lj$/nio/file/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/a;

    return-object v0
.end method
