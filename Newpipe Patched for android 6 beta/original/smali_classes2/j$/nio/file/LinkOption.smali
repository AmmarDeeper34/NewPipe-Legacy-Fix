.class public final enum Lj$/nio/file/LinkOption;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/p;
.implements Lj$/nio/file/CopyOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/nio/file/LinkOption;",
        ">;",
        "Lj$/nio/file/p;",
        "Lj$/nio/file/CopyOption;"
    }
.end annotation


# static fields
.field public static final enum NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

.field public static final synthetic a:[Lj$/nio/file/LinkOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lj$/nio/file/LinkOption;

    .line 34
    const-string v1, "NOFOLLOW_LINKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    const/4 v1, 0x1

    .line 34
    new-array v1, v1, [Lj$/nio/file/LinkOption;

    aput-object v0, v1, v2

    sput-object v1, Lj$/nio/file/LinkOption;->a:[Lj$/nio/file/LinkOption;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/LinkOption;
    .locals 1

    .line 34
    const-class v0, Lj$/nio/file/LinkOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/nio/file/LinkOption;

    return-object p0
.end method

.method public static values()[Lj$/nio/file/LinkOption;
    .locals 1

    .line 34
    sget-object v0, Lj$/nio/file/LinkOption;->a:[Lj$/nio/file/LinkOption;

    invoke-virtual {v0}, [Lj$/nio/file/LinkOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/LinkOption;

    return-object v0
.end method
