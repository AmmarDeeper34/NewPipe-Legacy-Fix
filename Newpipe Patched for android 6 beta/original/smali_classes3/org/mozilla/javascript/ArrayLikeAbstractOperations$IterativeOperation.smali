.class public final enum Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;
.super Ljava/lang/Enum;
.source "ArrayLikeAbstractOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ArrayLikeAbstractOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IterativeOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

.field public static final enum EVERY:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

.field public static final enum FILTER:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

.field public static final enum FIND:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

.field public static final enum FIND_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

.field public static final enum FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

.field public static final enum FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

.field public static final enum FOR_EACH:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

.field public static final enum MAP:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

.field public static final enum SOME:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;
    .locals 3

    const/16 v0, 0x9

    .line 12
    new-array v0, v0, [Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    sget-object v1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->EVERY:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FILTER:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FOR_EACH:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->MAP:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->SOME:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const-string v1, "EVERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->EVERY:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    .line 14
    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const-string v1, "FILTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FILTER:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    .line 15
    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const-string v1, "FOR_EACH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FOR_EACH:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    .line 16
    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const-string v1, "MAP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->MAP:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    .line 17
    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const-string v1, "SOME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->SOME:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    .line 18
    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const-string v1, "FIND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    .line 19
    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const-string v1, "FIND_INDEX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    .line 20
    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const-string v1, "FIND_LAST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    .line 21
    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    const-string v1, "FIND_LAST_INDEX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    .line 12
    invoke-static {}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->$values()[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->$VALUES:[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;
    .locals 1

    .line 12
    const-class v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;
    .locals 1

    .line 12
    sget-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->$VALUES:[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    return-object v0
.end method
