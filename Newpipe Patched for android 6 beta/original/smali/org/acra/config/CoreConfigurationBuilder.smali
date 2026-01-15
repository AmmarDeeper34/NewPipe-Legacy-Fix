.class public final Lorg/acra/config/CoreConfigurationBuilder;
.super Ljava/lang/Object;
.source "CoreConfigurationDsl.kt"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _defaultsBitField0:I

.field private final additionalDropBoxTags$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final additionalSharedPreferences$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final alsoReportToAndroidFramework$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final applicationLogFile$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final applicationLogFileDir$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final applicationLogFileLines$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final attachmentUriProvider$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final attachmentUris$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final buildConfigClass$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final deleteUnapprovedReportsOnApplicationStart$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final dropboxCollectionMinutes$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final excludeMatchingSettingsKeys$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final excludeMatchingSharedPreferencesKeys$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final includeDropBoxSystemTags$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final logcatArguments$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final logcatFilterByPid$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final logcatReadNonBlocking$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final parallel$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final pluginConfigurations$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final pluginLoader$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final reportContent$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final reportFormat$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final reportSendFailureToast$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final reportSendSuccessToast$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final retryPolicyClass$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final sendReportsInDevMode$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final sharedPreferencesName$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final stopServicesOnCrash$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 0
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lorg/acra/config/CoreConfigurationBuilder;

    const-string v2, "sharedPreferencesName"

    const-string v3, "getSharedPreferencesName()Ljava/lang/String;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "includeDropBoxSystemTags"

    const-string v5, "getIncludeDropBoxSystemTags()Ljava/lang/Boolean;"

    invoke-direct {v2, v1, v3, v5, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    new-instance v3, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v5, "additionalDropBoxTags"

    const-string v6, "getAdditionalDropBoxTags()Ljava/util/List;"

    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v3

    new-instance v5, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v6, "dropboxCollectionMinutes"

    const-string v7, "getDropboxCollectionMinutes()Ljava/lang/Integer;"

    invoke-direct {v5, v1, v6, v7, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v5

    new-instance v6, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v7, "logcatArguments"

    const-string v8, "getLogcatArguments()Ljava/util/List;"

    invoke-direct {v6, v1, v7, v8, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    new-instance v7, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v8, "reportContent"

    const-string v9, "getReportContent()Ljava/util/List;"

    invoke-direct {v7, v1, v8, v9, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v7

    new-instance v8, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v9, "deleteUnapprovedReportsOnApplicationStart"

    const-string v10, "getDeleteUnapprovedReportsOnApplicationStart()Ljava/lang/Boolean;"

    invoke-direct {v8, v1, v9, v10, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v8

    new-instance v9, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v10, "alsoReportToAndroidFramework"

    const-string v11, "getAlsoReportToAndroidFramework()Ljava/lang/Boolean;"

    invoke-direct {v9, v1, v10, v11, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v9

    new-instance v10, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v11, "additionalSharedPreferences"

    const-string v12, "getAdditionalSharedPreferences()Ljava/util/List;"

    invoke-direct {v10, v1, v11, v12, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v10

    new-instance v11, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v12, "logcatFilterByPid"

    const-string v13, "getLogcatFilterByPid()Ljava/lang/Boolean;"

    invoke-direct {v11, v1, v12, v13, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v11

    new-instance v12, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v13, "logcatReadNonBlocking"

    const-string v14, "getLogcatReadNonBlocking()Ljava/lang/Boolean;"

    invoke-direct {v12, v1, v13, v14, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v12

    new-instance v13, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v14, "sendReportsInDevMode"

    const-string v15, "getSendReportsInDevMode()Ljava/lang/Boolean;"

    invoke-direct {v13, v1, v14, v15, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v13

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "excludeMatchingSharedPreferencesKeys"

    move-object/from16 v16, v0

    const-string v0, "getExcludeMatchingSharedPreferencesKeys()Ljava/util/List;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "excludeMatchingSettingsKeys"

    move-object/from16 v17, v0

    const-string v0, "getExcludeMatchingSettingsKeys()Ljava/util/List;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "buildConfigClass"

    move-object/from16 v18, v0

    const-string v0, "getBuildConfigClass()Ljava/lang/Class;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "applicationLogFile"

    move-object/from16 v19, v0

    const-string v0, "getApplicationLogFile()Ljava/lang/String;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "applicationLogFileLines"

    move-object/from16 v20, v0

    const-string v0, "getApplicationLogFileLines()Ljava/lang/Integer;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "applicationLogFileDir"

    move-object/from16 v21, v0

    const-string v0, "getApplicationLogFileDir()Lorg/acra/file/Directory;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "retryPolicyClass"

    move-object/from16 v22, v0

    const-string v0, "getRetryPolicyClass()Ljava/lang/Class;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "stopServicesOnCrash"

    move-object/from16 v23, v0

    const-string v0, "getStopServicesOnCrash()Ljava/lang/Boolean;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "attachmentUris"

    move-object/from16 v24, v0

    const-string v0, "getAttachmentUris()Ljava/util/List;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "attachmentUriProvider"

    move-object/from16 v25, v0

    const-string v0, "getAttachmentUriProvider()Ljava/lang/Class;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "reportSendSuccessToast"

    move-object/from16 v26, v0

    const-string v0, "getReportSendSuccessToast()Ljava/lang/String;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "reportSendFailureToast"

    move-object/from16 v27, v0

    const-string v0, "getReportSendFailureToast()Ljava/lang/String;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "reportFormat"

    move-object/from16 v28, v0

    const-string v0, "getReportFormat()Lorg/acra/data/StringFormat;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "parallel"

    move-object/from16 v29, v0

    const-string v0, "getParallel()Ljava/lang/Boolean;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "pluginLoader"

    move-object/from16 v30, v0

    const-string v0, "getPluginLoader()Lorg/acra/plugins/PluginLoader;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    new-instance v14, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v15, "pluginConfigurations"

    move-object/from16 v31, v0

    const-string v0, "getPluginConfigurations()Ljava/util/List;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/16 v1, 0x1c

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v16, v1, v4

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v5, v1, v2

    const/4 v2, 0x4

    aput-object v6, v1, v2

    const/4 v2, 0x5

    aput-object v7, v1, v2

    const/4 v2, 0x6

    aput-object v8, v1, v2

    const/4 v2, 0x7

    aput-object v9, v1, v2

    const/16 v2, 0x8

    aput-object v10, v1, v2

    const/16 v2, 0x9

    aput-object v11, v1, v2

    const/16 v2, 0xa

    aput-object v12, v1, v2

    const/16 v2, 0xb

    aput-object v13, v1, v2

    const/16 v2, 0xc

    aput-object v17, v1, v2

    const/16 v2, 0xd

    aput-object v18, v1, v2

    const/16 v2, 0xe

    aput-object v19, v1, v2

    const/16 v2, 0xf

    aput-object v20, v1, v2

    const/16 v2, 0x10

    aput-object v21, v1, v2

    const/16 v2, 0x11

    aput-object v22, v1, v2

    const/16 v2, 0x12

    aput-object v23, v1, v2

    const/16 v2, 0x13

    aput-object v24, v1, v2

    const/16 v2, 0x14

    aput-object v25, v1, v2

    const/16 v2, 0x15

    aput-object v26, v1, v2

    const/16 v2, 0x16

    aput-object v27, v1, v2

    const/16 v2, 0x17

    aput-object v28, v1, v2

    const/16 v2, 0x18

    aput-object v29, v1, v2

    const/16 v2, 0x19

    aput-object v30, v1, v2

    const/16 v2, 0x1a

    aput-object v31, v1, v2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    sput-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    .line 27
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 27
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->sharedPreferencesName$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$2;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 33
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->includeDropBoxSystemTags$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$3;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$3;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 39
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->additionalDropBoxTags$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$4;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$4;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 45
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->dropboxCollectionMinutes$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$5;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$5;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 51
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatArguments$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$6;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$6;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 57
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportContent$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$7;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$7;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 63
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->deleteUnapprovedReportsOnApplicationStart$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$8;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$8;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 69
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->alsoReportToAndroidFramework$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$9;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$9;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 75
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->additionalSharedPreferences$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$10;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$10;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 81
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatFilterByPid$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$11;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$11;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 87
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatReadNonBlocking$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$12;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$12;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 93
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->sendReportsInDevMode$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$13;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$13;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 99
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSharedPreferencesKeys$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$14;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$14;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 105
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSettingsKeys$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$15;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$15;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 111
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->buildConfigClass$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$16;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$16;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 117
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFile$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$17;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$17;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 123
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileLines$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$18;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$18;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 129
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileDir$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$19;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$19;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 135
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->retryPolicyClass$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$20;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$20;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 141
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->stopServicesOnCrash$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$21;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$21;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 147
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUris$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$22;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$22;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 154
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUriProvider$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$23;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$23;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 160
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportSendSuccessToast$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$24;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$24;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 166
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportSendFailureToast$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$25;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$25;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 172
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportFormat$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$26;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$26;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 178
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->parallel$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$27;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$27;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 184
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->pluginLoader$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$28;

    invoke-direct {v0, v1, p0}, Lorg/acra/config/CoreConfigurationBuilder$special$$inlined$observable$28;-><init>(Ljava/lang/Object;Lorg/acra/config/CoreConfigurationBuilder;)V

    .line 190
    iput-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->pluginConfigurations$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$get_defaultsBitField0$p(Lorg/acra/config/CoreConfigurationBuilder;)I
    .locals 0

    .line 19
    iget p0, p0, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    return p0
.end method

.method public static final synthetic access$set_defaultsBitField0$p(Lorg/acra/config/CoreConfigurationBuilder;I)V
    .locals 0

    .line 19
    iput p1, p0, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    return-void
.end method


# virtual methods
.method public final build()Lorg/acra/config/CoreConfiguration;
    .locals 53

    const/16 v0, 0x1e

    .line 507
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-class v7, Ljava/util/List;

    aput-object v7, v1, v6

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v1, v8

    const/4 v10, 0x4

    aput-object v7, v1, v10

    const/4 v11, 0x5

    aput-object v7, v1, v11

    const/4 v12, 0x6

    aput-object v5, v1, v12

    const/4 v13, 0x7

    aput-object v5, v1, v13

    const/16 v14, 0x8

    aput-object v7, v1, v14

    const/16 v15, 0x9

    aput-object v5, v1, v15

    const/16 v16, 0xa

    aput-object v5, v1, v16

    const/16 v17, 0xb

    aput-object v5, v1, v17

    const/16 v18, 0xc

    aput-object v7, v1, v18

    const/16 v19, 0xd

    aput-object v7, v1, v19

    const/16 v20, 0xe

    const-class v21, Ljava/lang/Class;

    aput-object v21, v1, v20

    const/16 v22, 0xf

    aput-object v3, v1, v22

    const/16 v23, 0x10

    aput-object v9, v1, v23

    const/16 v24, 0x11

    const-class v25, Lorg/acra/file/Directory;

    aput-object v25, v1, v24

    const/16 v25, 0x12

    aput-object v21, v1, v25

    const/16 v26, 0x13

    aput-object v5, v1, v26

    const/16 v27, 0x14

    aput-object v7, v1, v27

    const/16 v28, 0x15

    aput-object v21, v1, v28

    const/16 v21, 0x16

    aput-object v3, v1, v21

    const/16 v21, 0x17

    aput-object v3, v1, v21

    const-class v3, Lorg/acra/data/StringFormat;

    const/16 v21, 0x18

    aput-object v3, v1, v21

    const/16 v3, 0x19

    aput-object v5, v1, v3

    const-class v3, Lorg/acra/plugins/PluginLoader;

    const/16 v5, 0x1a

    aput-object v3, v1, v5

    const/16 v3, 0x1b

    aput-object v7, v1, v3

    const/16 v3, 0x1c

    aput-object v9, v1, v3

    const-class v3, Lkotlin/jvm/internal/DefaultConstructorMarker;

    const/16 v5, 0x1d

    aput-object v3, v1, v5

    .line 499
    const-class v3, Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 507
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v3

    .line 508
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getIncludeDropBoxSystemTags()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getAdditionalDropBoxTags()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getDropboxCollectionMinutes()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 509
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getLogcatArguments()Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getReportContent()Ljava/util/List;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getDeleteUnapprovedReportsOnApplicationStart()Ljava/lang/Boolean;

    move-result-object v29

    if-eqz v29, :cond_2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    goto :goto_2

    :cond_2
    const/16 v29, 0x0

    :goto_2
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    .line 510
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getAlsoReportToAndroidFramework()Ljava/lang/Boolean;

    move-result-object v30

    if-eqz v30, :cond_3

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    goto :goto_3

    :cond_3
    const/16 v30, 0x0

    :goto_3
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getAdditionalSharedPreferences()Ljava/util/List;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getLogcatFilterByPid()Ljava/lang/Boolean;

    move-result-object v32

    if-eqz v32, :cond_4

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    goto :goto_4

    :cond_4
    const/16 v32, 0x0

    .line 511
    :goto_4
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getLogcatReadNonBlocking()Ljava/lang/Boolean;

    move-result-object v33

    if-eqz v33, :cond_5

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    goto :goto_5

    :cond_5
    const/16 v33, 0x0

    :goto_5
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getSendReportsInDevMode()Ljava/lang/Boolean;

    move-result-object v34

    if-eqz v34, :cond_6

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    goto :goto_6

    :cond_6
    const/16 v34, 0x0

    :goto_6
    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    .line 512
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getExcludeMatchingSharedPreferencesKeys()Ljava/util/List;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getExcludeMatchingSettingsKeys()Ljava/util/List;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getBuildConfigClass()Ljava/lang/Class;

    move-result-object v37

    .line 513
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getApplicationLogFile()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getApplicationLogFileLines()Ljava/lang/Integer;

    move-result-object v39

    if-eqz v39, :cond_7

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    goto :goto_7

    :cond_7
    const/16 v39, 0x0

    :goto_7
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getApplicationLogFileDir()Lorg/acra/file/Directory;

    move-result-object v40

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getRetryPolicyClass()Ljava/lang/Class;

    move-result-object v41

    .line 514
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getStopServicesOnCrash()Ljava/lang/Boolean;

    move-result-object v42

    if-eqz v42, :cond_8

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    goto :goto_8

    :cond_8
    const/16 v42, 0x0

    :goto_8
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getAttachmentUris()Ljava/util/List;

    move-result-object v43

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getAttachmentUriProvider()Ljava/lang/Class;

    move-result-object v44

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getReportSendSuccessToast()Ljava/lang/String;

    move-result-object v45

    .line 515
    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getReportSendFailureToast()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getReportFormat()Lorg/acra/data/StringFormat;

    move-result-object v47

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getParallel()Ljava/lang/Boolean;

    move-result-object v48

    if-eqz v48, :cond_9

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    goto :goto_9

    :cond_9
    const/16 v48, 0x0

    :goto_9
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getPluginLoader()Lorg/acra/plugins/PluginLoader;

    move-result-object v49

    invoke-virtual/range {p0 .. p0}, Lorg/acra/config/CoreConfigurationBuilder;->getPluginConfigurations()Ljava/util/List;

    move-result-object v50

    const/16 v51, 0x0

    const/16 v52, 0x1

    move-object/from16 v2, p0

    .line 516
    iget v4, v2, Lorg/acra/config/CoreConfigurationBuilder;->_defaultsBitField0:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v51

    aput-object v5, v0, v52

    aput-object v7, v0, v6

    aput-object v9, v0, v8

    aput-object v21, v0, v10

    aput-object v28, v0, v11

    aput-object v29, v0, v12

    aput-object v30, v0, v13

    aput-object v31, v0, v14

    aput-object v32, v0, v15

    aput-object v33, v0, v16

    aput-object v34, v0, v17

    aput-object v35, v0, v18

    aput-object v36, v0, v19

    aput-object v37, v0, v20

    aput-object v38, v0, v22

    aput-object v39, v0, v23

    aput-object v40, v0, v24

    aput-object v41, v0, v25

    aput-object v42, v0, v26

    aput-object v43, v0, v27

    const/16 v3, 0x15

    aput-object v44, v0, v3

    const/16 v3, 0x16

    aput-object v45, v0, v3

    const/16 v3, 0x17

    aput-object v46, v0, v3

    const/16 v3, 0x18

    aput-object v47, v0, v3

    const/16 v3, 0x19

    aput-object v48, v0, v3

    const/16 v3, 0x1a

    aput-object v49, v0, v3

    const/16 v3, 0x1b

    aput-object v50, v0, v3

    const/16 v3, 0x1c

    aput-object v4, v0, v3

    const/4 v3, 0x0

    const/16 v4, 0x1d

    aput-object v3, v0, v4

    .line 507
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "newInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/acra/config/CoreConfiguration;

    return-object v0
.end method

.method public final getAdditionalDropBoxTags()Ljava/util/List;
    .locals 3

    .line 39
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->additionalDropBoxTags$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getAdditionalSharedPreferences()Ljava/util/List;
    .locals 3

    .line 75
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->additionalSharedPreferences$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getAlsoReportToAndroidFramework()Ljava/lang/Boolean;
    .locals 3

    .line 69
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->alsoReportToAndroidFramework$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getApplicationLogFile()Ljava/lang/String;
    .locals 3

    .line 117
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFile$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationLogFileDir()Lorg/acra/file/Directory;
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileDir$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/file/Directory;

    return-object v0
.end method

.method public final getApplicationLogFileLines()Ljava/lang/Integer;
    .locals 3

    .line 123
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->applicationLogFileLines$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAttachmentUriProvider()Ljava/lang/Class;
    .locals 3

    .line 154
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUriProvider$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final getAttachmentUris()Ljava/util/List;
    .locals 3

    .line 147
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->attachmentUris$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getBuildConfigClass()Ljava/lang/Class;
    .locals 3

    .line 111
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->buildConfigClass$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final getDeleteUnapprovedReportsOnApplicationStart()Ljava/lang/Boolean;
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->deleteUnapprovedReportsOnApplicationStart$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getDropboxCollectionMinutes()Ljava/lang/Integer;
    .locals 3

    .line 45
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->dropboxCollectionMinutes$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getExcludeMatchingSettingsKeys()Ljava/util/List;
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSettingsKeys$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getExcludeMatchingSharedPreferencesKeys()Ljava/util/List;
    .locals 3

    .line 99
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->excludeMatchingSharedPreferencesKeys$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getIncludeDropBoxSystemTags()Ljava/lang/Boolean;
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->includeDropBoxSystemTags$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLogcatArguments()Ljava/util/List;
    .locals 3

    .line 51
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatArguments$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getLogcatFilterByPid()Ljava/lang/Boolean;
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatFilterByPid$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLogcatReadNonBlocking()Ljava/lang/Boolean;
    .locals 3

    .line 87
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->logcatReadNonBlocking$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getParallel()Ljava/lang/Boolean;
    .locals 3

    .line 178
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->parallel$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPluginConfigurations()Ljava/util/List;
    .locals 3

    .line 190
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->pluginConfigurations$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getPluginLoader()Lorg/acra/plugins/PluginLoader;
    .locals 3

    .line 184
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->pluginLoader$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/plugins/PluginLoader;

    return-object v0
.end method

.method public final getReportContent()Ljava/util/List;
    .locals 3

    .line 57
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportContent$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getReportFormat()Lorg/acra/data/StringFormat;
    .locals 3

    .line 172
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportFormat$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/data/StringFormat;

    return-object v0
.end method

.method public final getReportSendFailureToast()Ljava/lang/String;
    .locals 3

    .line 166
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportSendFailureToast$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getReportSendSuccessToast()Ljava/lang/String;
    .locals 3

    .line 160
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->reportSendSuccessToast$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRetryPolicyClass()Ljava/lang/Class;
    .locals 3

    .line 135
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->retryPolicyClass$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final getSendReportsInDevMode()Ljava/lang/Boolean;
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->sendReportsInDevMode$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSharedPreferencesName()Ljava/lang/String;
    .locals 3

    .line 27
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->sharedPreferencesName$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStopServicesOnCrash()Ljava/lang/Boolean;
    .locals 3

    .line 141
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->stopServicesOnCrash$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setBuildConfigClass(Ljava/lang/Class;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lorg/acra/config/CoreConfigurationBuilder;->buildConfigClass$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/acra/config/CoreConfigurationBuilder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final withBuildConfigClass(Ljava/lang/Class;)Lorg/acra/config/CoreConfigurationBuilder;
    .locals 0

    .line 370
    invoke-virtual {p0, p1}, Lorg/acra/config/CoreConfigurationBuilder;->setBuildConfigClass(Ljava/lang/Class;)V

    return-object p0
.end method
