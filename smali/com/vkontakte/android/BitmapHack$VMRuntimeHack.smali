.class Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;
.super Ljava/lang/Object;
.source "BitmapHack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/BitmapHack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VMRuntimeHack"
.end annotation


# instance fields
.field private runtime:Ljava/lang/Object;

.field private trackAllocation:Ljava/lang/reflect/Method;

.field private trackFree:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v7, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->runtime:Ljava/lang/Object;

    .line 15
    iput-object v7, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    .line 16
    iput-object v7, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;

    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, "success":Z
    :try_start_0
    const-string v3, "dalvik.system.VMRuntime"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, "cl":Ljava/lang/Class;
    const-string v3, "getRuntime"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 52
    .local v1, "getRt":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->runtime:Ljava/lang/Object;

    .line 53
    const-string v3, "trackExternalAllocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    .line 54
    const-string v3, "trackExternalFree"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v2, 0x1

    .line 63
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "getRt":Ljava/lang/reflect/Method;
    :goto_0
    if-nez v2, :cond_0

    .line 64
    const-string v3, "vk"

    const-string v4, "VMRuntime hack does not work!"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object v7, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->runtime:Ljava/lang/Object;

    .line 66
    iput-object v7, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    .line 67
    iput-object v7, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;

    .line 69
    :cond_0
    return-void

    .line 61
    :catch_0
    move-exception v3

    goto :goto_0

    .line 60
    :catch_1
    move-exception v3

    goto :goto_0

    .line 59
    :catch_2
    move-exception v3

    goto :goto_0

    .line 58
    :catch_3
    move-exception v3

    goto :goto_0

    .line 57
    :catch_4
    move-exception v3

    goto :goto_0

    .line 56
    :catch_5
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public trackAlloc(J)Z
    .locals 9
    .param p1, "size"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 19
    iget-object v4, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->runtime:Ljava/lang/Object;

    if-nez v4, :cond_1

    move v2, v3

    .line 29
    :cond_0
    :goto_0
    return v2

    .line 22
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->trackAllocation:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->runtime:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    .local v1, "res":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "res":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move v2, v3

    .line 25
    goto :goto_0

    .line 26
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    move v2, v3

    .line 27
    goto :goto_0

    .line 28
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    move v2, v3

    .line 29
    goto :goto_0
.end method

.method public trackFree(J)Z
    .locals 9
    .param p1, "size"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    iget-object v4, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->runtime:Ljava/lang/Object;

    if-nez v4, :cond_1

    move v2, v3

    .line 44
    :cond_0
    :goto_0
    return v2

    .line 37
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->trackFree:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->runtime:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "res":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "res":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move v2, v3

    .line 40
    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    move v2, v3

    .line 42
    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    move v2, v3

    .line 44
    goto :goto_0
.end method
