.class public final enum Lorg/schabi/newpipe/ktx/AnimationType;
.super Ljava/lang/Enum;
.source "View.kt"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/ktx/AnimationType;

.field public static final enum ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

.field public static final enum LIGHT_SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

.field public static final enum LIGHT_SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

.field public static final enum SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

.field public static final enum SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;


# direct methods
.method private static final synthetic $values()[Lorg/schabi/newpipe/ktx/AnimationType;
    .locals 3

    .line 0
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/schabi/newpipe/ktx/AnimationType;

    sget-object v1, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/ktx/AnimationType;->SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 294
    new-instance v0, Lorg/schabi/newpipe/ktx/AnimationType;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/ktx/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v0, Lorg/schabi/newpipe/ktx/AnimationType;

    const-string v1, "SCALE_AND_ALPHA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/ktx/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v0, Lorg/schabi/newpipe/ktx/AnimationType;

    const-string v1, "LIGHT_SCALE_AND_ALPHA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/ktx/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v0, Lorg/schabi/newpipe/ktx/AnimationType;

    const-string v1, "SLIDE_AND_ALPHA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/ktx/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/ktx/AnimationType;->SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    new-instance v0, Lorg/schabi/newpipe/ktx/AnimationType;

    const-string v1, "LIGHT_SLIDE_AND_ALPHA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/ktx/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    invoke-static {}, Lorg/schabi/newpipe/ktx/AnimationType;->$values()[Lorg/schabi/newpipe/ktx/AnimationType;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/ktx/AnimationType;->$VALUES:[Lorg/schabi/newpipe/ktx/AnimationType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/ktx/AnimationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/ktx/AnimationType;
    .locals 1

    .line 0
    const-class v0, Lorg/schabi/newpipe/ktx/AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/ktx/AnimationType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/ktx/AnimationType;
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/ktx/AnimationType;->$VALUES:[Lorg/schabi/newpipe/ktx/AnimationType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/ktx/AnimationType;

    return-object v0
.end method
