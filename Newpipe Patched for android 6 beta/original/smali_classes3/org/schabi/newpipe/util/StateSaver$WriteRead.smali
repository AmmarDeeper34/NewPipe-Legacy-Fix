.class public interface abstract Lorg/schabi/newpipe/util/StateSaver$WriteRead;
.super Ljava/lang/Object;
.source "StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/util/StateSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WriteRead"
.end annotation


# virtual methods
.method public abstract generateSuffix()Ljava/lang/String;
.end method

.method public abstract readFrom(Ljava/util/Queue;)V
.end method

.method public abstract writeTo(Ljava/util/Queue;)V
.end method
