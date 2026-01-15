.class public Lorg/mozilla/javascript/CompilerEnvirons;
.super Ljava/lang/Object;
.source "CompilerEnvirons.java"


# instance fields
.field activationNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowMemberExprAsFunctionName:Z

.field private allowSharpComments:Z

.field private allowSuper:Z

.field private errorReporter:Lorg/mozilla/javascript/ErrorReporter;

.field private generateDebugInfo:Z

.field private generateObserverCount:Z

.field private generatingSource:Z

.field private ideMode:Z

.field private interpretedMode:Z

.field private languageVersion:I

.field private recordingComments:Z

.field private recordingLocalJsDocComments:Z

.field private recoverFromErrors:Z

.field private reservedKeywordAsIdentifier:Z

.field private strictMode:Z

.field private warnTrailingComma:Z

.field private warningAsError:Z

.field private xmlAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lorg/mozilla/javascript/DefaultErrorReporter;->instance:Lorg/mozilla/javascript/DefaultErrorReporter;

    iput-object v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    const/16 v0, 0xc8

    .line 15
    iput v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    .line 17
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    .line 19
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    .line 20
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    .line 21
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    .line 22
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    .line 23
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warningAsError:Z

    .line 24
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    .line 25
    iput-boolean v1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSharpComments:Z

    return-void
.end method

.method public static ideEnvirons()Lorg/mozilla/javascript/CompilerEnvirons;
    .locals 3

    .line 256
    new-instance v0, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v0}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    const/4 v1, 0x1

    .line 257
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setRecoverFromErrors(Z)V

    .line 258
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setRecordingComments(Z)V

    .line 259
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setStrictMode(Z)V

    .line 260
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setWarnTrailingComma(Z)V

    const/16 v2, 0xaa

    .line 261
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/CompilerEnvirons;->setLanguageVersion(I)V

    .line 262
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setReservedKeywordAsIdentifier(Z)V

    .line 263
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setIdeMode(Z)V

    .line 264
    new-instance v1, Lorg/mozilla/javascript/ast/ErrorCollector;

    invoke-direct {v1}, Lorg/mozilla/javascript/ast/ErrorCollector;-><init>()V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V

    return-object v0
.end method


# virtual methods
.method public getActivationNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->activationNames:Ljava/util/Set;

    return-object v0
.end method

.method public getAllowSharpComments()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSharpComments:Z

    return v0
.end method

.method public final getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    return-object v0
.end method

.method public final getLanguageVersion()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    return v0
.end method

.method public final getOptimizationLevel()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v0, 0x9

    return v0
.end method

.method public getWarnTrailingComma()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warnTrailingComma:Z

    return v0
.end method

.method public initFromContext(Lorg/mozilla/javascript/Context;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/CompilerEnvirons;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V

    .line 30
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    .line 31
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isGeneratingDebugChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isGeneratingDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    const/4 v0, 0x3

    .line 32
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    const/4 v0, 0x2

    .line 33
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    const/16 v0, 0xb

    .line 34
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    const/16 v0, 0xc

    .line 35
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warningAsError:Z

    const/4 v0, 0x6

    .line 36
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    .line 38
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isInterpretedMode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    .line 40
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isGeneratingSource()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    .line 41
    iget-object v0, p1, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    iput-object v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->activationNames:Ljava/util/Set;

    .line 44
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->isGenerateObserverCount()Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    return-void
.end method

.method public final isAllowMemberExprAsFunctionName()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    return v0
.end method

.method public isAllowSuper()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSuper:Z

    return v0
.end method

.method public final isGenerateDebugInfo()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    return v0
.end method

.method public isGenerateObserverCount()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    return v0
.end method

.method public final isGeneratingSource()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    return v0
.end method

.method public isIdeMode()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->ideMode:Z

    return v0
.end method

.method public final isInterpretedMode()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    return v0
.end method

.method public isRecordingComments()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingComments:Z

    return v0
.end method

.method public isRecordingLocalJsDocComments()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingLocalJsDocComments:Z

    return v0
.end method

.method public final isReservedKeywordAsIdentifier()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    return v0
.end method

.method public final isStrictMode()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    return v0
.end method

.method public final isXmlAvailable()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    return v0
.end method

.method public recoverFromErrors()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recoverFromErrors:Z

    return v0
.end method

.method public final reportWarningAsError()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warningAsError:Z

    return v0
.end method

.method public setActivationNames(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->activationNames:Ljava/util/Set;

    return-void
.end method

.method public setAllowMemberExprAsFunctionName(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowMemberExprAsFunctionName:Z

    return-void
.end method

.method public setAllowSharpComments(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSharpComments:Z

    return-void
.end method

.method public setAllowSuper(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->allowSuper:Z

    return-void
.end method

.method public setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setGenerateDebugInfo(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateDebugInfo:Z

    return-void
.end method

.method public setGenerateObserverCount(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generateObserverCount:Z

    return-void
.end method

.method public setGeneratingSource(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->generatingSource:Z

    return-void
.end method

.method public setIdeMode(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->ideMode:Z

    return-void
.end method

.method public setInterpretedMode(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    return-void
.end method

.method public setLanguageVersion(I)V
    .locals 0

    .line 61
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkLanguageVersion(I)V

    .line 62
    iput p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->languageVersion:I

    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkOptimizationLevel(I)V

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 120
    :goto_0
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->interpretedMode:Z

    return-void
.end method

.method public setRecordingComments(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingComments:Z

    return-void
.end method

.method public setRecordingLocalJsDocComments(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recordingLocalJsDocComments:Z

    return-void
.end method

.method public setRecoverFromErrors(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->recoverFromErrors:Z

    return-void
.end method

.method public setReservedKeywordAsIdentifier(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->reservedKeywordAsIdentifier:Z

    return-void
.end method

.method public setStrictMode(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->strictMode:Z

    return-void
.end method

.method public setWarnTrailingComma(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->warnTrailingComma:Z

    return-void
.end method

.method public setXmlAvailable(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lorg/mozilla/javascript/CompilerEnvirons;->xmlAvailable:Z

    return-void
.end method
