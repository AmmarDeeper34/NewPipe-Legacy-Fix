.class public final Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;
.super Ljava/lang/Object;
.source "ScriptRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ScriptRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringIdOrIndex"
.end annotation


# instance fields
.field final index:I

.field final stringId:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1668
    iput-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    .line 1669
    iput p1, p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    const/4 p1, -0x1

    .line 1664
    iput p1, p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 1677
    iget v0, p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    return v0
.end method

.method public getStringId()Ljava/lang/String;
    .locals 1

    .line 1673
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    return-object v0
.end method
