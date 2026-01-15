.class public final enum Lj$/util/stream/c8;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum MAYBE_MORE:Lj$/util/stream/c8;

.field public static final enum NO_MORE:Lj$/util/stream/c8;

.field public static final enum UNLIMITED:Lj$/util/stream/c8;

.field public static final synthetic a:[Lj$/util/stream/c8;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 967
    new-instance v0, Lj$/util/stream/c8;

    .line 967
    const-string v1, "NO_MORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 967
    sput-object v0, Lj$/util/stream/c8;->NO_MORE:Lj$/util/stream/c8;

    new-instance v1, Lj$/util/stream/c8;

    .line 967
    const-string v3, "MAYBE_MORE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 967
    sput-object v1, Lj$/util/stream/c8;->MAYBE_MORE:Lj$/util/stream/c8;

    new-instance v3, Lj$/util/stream/c8;

    .line 967
    const-string v5, "UNLIMITED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 967
    sput-object v3, Lj$/util/stream/c8;->UNLIMITED:Lj$/util/stream/c8;

    const/4 v5, 0x3

    new-array v5, v5, [Lj$/util/stream/c8;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lj$/util/stream/c8;->a:[Lj$/util/stream/c8;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/util/stream/c8;
    .locals 1

    .line 967
    const-class v0, Lj$/util/stream/c8;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/util/stream/c8;

    return-object p0
.end method

.method public static values()[Lj$/util/stream/c8;
    .locals 1

    .line 967
    sget-object v0, Lj$/util/stream/c8;->a:[Lj$/util/stream/c8;

    invoke-virtual {v0}, [Lj$/util/stream/c8;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/util/stream/c8;

    return-object v0
.end method
