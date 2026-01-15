.class final Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;
.super Ljava/lang/Object;
.source "CodeGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/CodeGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompleteOptionalCallJump"
.end annotation


# instance fields
.field private final afterLabel:I

.field private final putArgsAndDoCallLabel:I


# direct methods
.method static bridge synthetic -$$Nest$fgetafterLabel(Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->afterLabel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetputArgsAndDoCallLabel(Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->putArgsAndDoCallLabel:I

    return p0
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1859
    iput p1, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->putArgsAndDoCallLabel:I

    .line 1860
    iput p2, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->afterLabel:I

    return-void
.end method
