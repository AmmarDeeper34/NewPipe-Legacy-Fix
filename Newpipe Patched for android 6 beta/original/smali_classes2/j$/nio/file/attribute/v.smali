.class public final enum Lj$/nio/file/attribute/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum GROUP_EXECUTE:Lj$/nio/file/attribute/v;

.field public static final enum GROUP_READ:Lj$/nio/file/attribute/v;

.field public static final enum GROUP_WRITE:Lj$/nio/file/attribute/v;

.field public static final enum OTHERS_EXECUTE:Lj$/nio/file/attribute/v;

.field public static final enum OTHERS_READ:Lj$/nio/file/attribute/v;

.field public static final enum OTHERS_WRITE:Lj$/nio/file/attribute/v;

.field public static final enum OWNER_EXECUTE:Lj$/nio/file/attribute/v;

.field public static final enum OWNER_READ:Lj$/nio/file/attribute/v;

.field public static final enum OWNER_WRITE:Lj$/nio/file/attribute/v;

.field public static final synthetic a:[Lj$/nio/file/attribute/v;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 43
    new-instance v0, Lj$/nio/file/attribute/v;

    .line 38
    const-string v1, "OWNER_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v0, Lj$/nio/file/attribute/v;->OWNER_READ:Lj$/nio/file/attribute/v;

    .line 48
    new-instance v1, Lj$/nio/file/attribute/v;

    .line 38
    const-string v3, "OWNER_WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    sput-object v1, Lj$/nio/file/attribute/v;->OWNER_WRITE:Lj$/nio/file/attribute/v;

    .line 53
    new-instance v3, Lj$/nio/file/attribute/v;

    .line 38
    const-string v5, "OWNER_EXECUTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    sput-object v3, Lj$/nio/file/attribute/v;->OWNER_EXECUTE:Lj$/nio/file/attribute/v;

    .line 58
    new-instance v5, Lj$/nio/file/attribute/v;

    .line 38
    const-string v7, "GROUP_READ"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    sput-object v5, Lj$/nio/file/attribute/v;->GROUP_READ:Lj$/nio/file/attribute/v;

    .line 63
    new-instance v7, Lj$/nio/file/attribute/v;

    .line 38
    const-string v9, "GROUP_WRITE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v7, Lj$/nio/file/attribute/v;->GROUP_WRITE:Lj$/nio/file/attribute/v;

    .line 68
    new-instance v9, Lj$/nio/file/attribute/v;

    .line 38
    const-string v11, "GROUP_EXECUTE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    sput-object v9, Lj$/nio/file/attribute/v;->GROUP_EXECUTE:Lj$/nio/file/attribute/v;

    .line 73
    new-instance v11, Lj$/nio/file/attribute/v;

    .line 38
    const-string v13, "OTHERS_READ"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    sput-object v11, Lj$/nio/file/attribute/v;->OTHERS_READ:Lj$/nio/file/attribute/v;

    .line 78
    new-instance v13, Lj$/nio/file/attribute/v;

    .line 38
    const-string v15, "OTHERS_WRITE"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    sput-object v13, Lj$/nio/file/attribute/v;->OTHERS_WRITE:Lj$/nio/file/attribute/v;

    .line 83
    new-instance v15, Lj$/nio/file/attribute/v;

    const/16 v17, 0x7

    .line 38
    const-string v2, "OTHERS_EXECUTE"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    sput-object v15, Lj$/nio/file/attribute/v;->OTHERS_EXECUTE:Lj$/nio/file/attribute/v;

    const/16 v2, 0x9

    .line 38
    new-array v2, v2, [Lj$/nio/file/attribute/v;

    aput-object v0, v2, v16

    aput-object v1, v2, v18

    aput-object v3, v2, v6

    aput-object v5, v2, v8

    aput-object v7, v2, v10

    aput-object v9, v2, v12

    aput-object v11, v2, v14

    aput-object v13, v2, v17

    aput-object v15, v2, v4

    sput-object v2, Lj$/nio/file/attribute/v;->a:[Lj$/nio/file/attribute/v;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/attribute/v;
    .locals 1

    .line 38
    const-class v0, Lj$/nio/file/attribute/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/nio/file/attribute/v;

    return-object p0
.end method

.method public static values()[Lj$/nio/file/attribute/v;
    .locals 1

    .line 38
    sget-object v0, Lj$/nio/file/attribute/v;->a:[Lj$/nio/file/attribute/v;

    invoke-virtual {v0}, [Lj$/nio/file/attribute/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/attribute/v;

    return-object v0
.end method
