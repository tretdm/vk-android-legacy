.class public Lcom/vkontakte/android/media/RemoteControlClientCompat;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/media/RemoteControlClientCompat$1;,
        Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteControlCompat"

.field private static sHasRemoteControlAPIs:Z

.field private static sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

.field private static sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

.field private static sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

.field private static sRemoteControlClientClass:Ljava/lang/Class;


# instance fields
.field private mActualRemoteControlClient:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 49
    sput-boolean v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    .line 53
    :try_start_0
    const-class v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 54
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {v1}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->getActualRemoteControlClientClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    .line 57
    const-class v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6

    .line 59
    .local v3, "field":Ljava/lang/reflect/Field;
    :try_start_1
    sget-object v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 60
    .local v6, "realField":Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 61
    .local v7, "realValue":Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6

    .line 57
    .end local v6    # "realField":Ljava/lang/reflect/Field;
    .end local v7    # "realValue":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    :try_start_2
    const-string v8, "RemoteControlCompat"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not get real field: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 82
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_1
    move-exception v8

    .line 91
    :goto_2
    return-void

    .line 64
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :catch_2
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "RemoteControlCompat"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error trying to pull field value for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_3
    move-exception v8

    goto :goto_2

    .line 67
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :catch_4
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v8, "RemoteControlCompat"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error trying to pull field value for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_5
    move-exception v8

    goto :goto_2

    .line 74
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_0
    sget-object v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v9, "editMetadata"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

    .line 76
    sget-object v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v9, "setPlaybackState"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

    .line 78
    sget-object v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v9, "setTransportControlFlags"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

    .line 81
    const/4 v8, 0x1

    sput-boolean v8, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_2

    .line 88
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_6
    move-exception v8

    goto/16 :goto_2
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-boolean v1, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/media/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .locals 5
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-boolean v1, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-nez v1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Looper;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/media/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteControlCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating new instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    return v0
.end method

.method public static getActualRemoteControlClientClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "android.media.RemoteControlClient"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public editMetadata(Z)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 7
    .param p1, "startEmpty"    # Z

    .prologue
    .line 292
    sget-boolean v2, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-eqz v2, :cond_0

    .line 294
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/vkontakte/android/media/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 302
    :goto_0
    new-instance v2, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;-><init>(Lcom/vkontakte/android/media/RemoteControlClientCompat;Ljava/lang/Object;Lcom/vkontakte/android/media/RemoteControlClientCompat$1;)V

    return-object v2

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    .local v1, "metadataEditor":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final getActualRemoteControlClientObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/vkontakte/android/media/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    return-object v0
.end method

.method public setPlaybackState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 319
    sget-boolean v1, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-eqz v1, :cond_0

    .line 321
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/vkontakte/android/media/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTransportControlFlags(I)V
    .locals 6
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 341
    sget-boolean v1, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-eqz v1, :cond_0

    .line 343
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/media/RemoteControlClientCompat;->sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/vkontakte/android/media/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
