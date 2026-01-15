.class public final enum Lj$/nio/file/a0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/p;


# static fields
.field public static final enum APPEND:Lj$/nio/file/a0;

.field public static final enum CREATE:Lj$/nio/file/a0;

.field public static final enum CREATE_NEW:Lj$/nio/file/a0;

.field public static final enum DELETE_ON_CLOSE:Lj$/nio/file/a0;

.field public static final enum DSYNC:Lj$/nio/file/a0;

.field public static final enum READ:Lj$/nio/file/a0;

.field public static final enum SPARSE:Lj$/nio/file/a0;

.field public static final enum SYNC:Lj$/nio/file/a0;

.field public static final enum TRUNCATE_EXISTING:Lj$/nio/file/a0;

.field public static final enum WRITE:Lj$/nio/file/a0;

.field public static final synthetic a:[Lj$/nio/file/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 38
    new-instance v0, Lj$/nio/file/a0;

    .line 34
    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lj$/nio/file/a0;->READ:Lj$/nio/file/a0;

    .line 43
    new-instance v1, Lj$/nio/file/a0;

    .line 34
    const-string v3, "WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v1, Lj$/nio/file/a0;->WRITE:Lj$/nio/file/a0;

    .line 52
    new-instance v3, Lj$/nio/file/a0;

    .line 34
    const-string v5, "APPEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v3, Lj$/nio/file/a0;->APPEND:Lj$/nio/file/a0;

    .line 59
    new-instance v5, Lj$/nio/file/a0;

    .line 34
    const-string v7, "TRUNCATE_EXISTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v5, Lj$/nio/file/a0;->TRUNCATE_EXISTING:Lj$/nio/file/a0;

    .line 68
    new-instance v7, Lj$/nio/file/a0;

    .line 34
    const-string v9, "CREATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    sput-object v7, Lj$/nio/file/a0;->CREATE:Lj$/nio/file/a0;

    .line 76
    new-instance v9, Lj$/nio/file/a0;

    .line 34
    const-string v11, "CREATE_NEW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    sput-object v9, Lj$/nio/file/a0;->CREATE_NEW:Lj$/nio/file/a0;

    .line 100
    new-instance v11, Lj$/nio/file/a0;

    .line 34
    const-string v13, "DELETE_ON_CLOSE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    sput-object v11, Lj$/nio/file/a0;->DELETE_ON_CLOSE:Lj$/nio/file/a0;

    .line 108
    new-instance v13, Lj$/nio/file/a0;

    .line 34
    const-string v15, "SPARSE"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    sput-object v13, Lj$/nio/file/a0;->SPARSE:Lj$/nio/file/a0;

    .line 116
    new-instance v15, Lj$/nio/file/a0;

    const/16 v17, 0x7

    .line 34
    const-string v2, "SYNC"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    sput-object v15, Lj$/nio/file/a0;->SYNC:Lj$/nio/file/a0;

    .line 124
    new-instance v2, Lj$/nio/file/a0;

    const/16 v19, 0x8

    .line 34
    const-string v4, "DSYNC"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    sput-object v2, Lj$/nio/file/a0;->DSYNC:Lj$/nio/file/a0;

    const/16 v4, 0xa

    .line 34
    new-array v4, v4, [Lj$/nio/file/a0;

    aput-object v0, v4, v16

    aput-object v1, v4, v18

    aput-object v3, v4, v20

    aput-object v5, v4, v8

    aput-object v7, v4, v10

    aput-object v9, v4, v12

    aput-object v11, v4, v14

    aput-object v13, v4, v17

    aput-object v15, v4, v19

    aput-object v2, v4, v6

    sput-object v4, Lj$/nio/file/a0;->a:[Lj$/nio/file/a0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/a0;
    .locals 1

    .line 34
    const-class v0, Lj$/nio/file/a0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/nio/file/a0;

    return-object p0
.end method

.method public static values()[Lj$/nio/file/a0;
    .locals 1

    .line 34
    sget-object v0, Lj$/nio/file/a0;->a:[Lj$/nio/file/a0;

    invoke-virtual {v0}, [Lj$/nio/file/a0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/a0;

    return-object v0
.end method
