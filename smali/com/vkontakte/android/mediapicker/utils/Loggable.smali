.class public Lcom/vkontakte/android/mediapicker/utils/Loggable;
.super Ljava/lang/Object;
.source "Loggable.java"


# static fields
.field public static final COMMON_TAG:Ljava/lang/String; = "photo_picker_cmn"

.field public static final OPENGL_TAG:Ljava/lang/String; = "photo_picker_gl"

.field public static final PROCESSOR_TAG:Ljava/lang/String; = "photo_picker_ip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs Debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 35
    const-string v0, "photo_picker_cmn"

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void

    .line 35
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 45
    const-string v0, "photo_picker_cmn"

    array-length v1, p2

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void

    .line 45
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs Error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 40
    const-string v0, "photo_picker_cmn"

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void

    .line 40
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs GLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 90
    const-string v0, "photo_picker_gl"

    array-length v1, p2

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    return-void

    .line 90
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs GLError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 85
    const-string v0, "photo_picker_gl"

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 85
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs GLInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 81
    return-void
.end method

.method public static varargs GLVerbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 75
    return-void
.end method

.method public static varargs GLWarn(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 100
    const-string v0, "photo_picker_gl"

    array-length v1, p2

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    return-void

    .line 100
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs GLWarn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 95
    const-string v0, "photo_picker_gl"

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 95
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs IPError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 124
    const-string v0, "photo_picker_ip"

    array-length v1, p2

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    return-void

    .line 124
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs IPError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 119
    const-string v0, "photo_picker_ip"

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void

    .line 119
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs IPInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 114
    const-string v0, "photo_picker_ip"

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void

    .line 114
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs IPVerbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 108
    const-string v0, "photo_picker_ip"

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 108
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs IPWarn(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 134
    const-string v0, "photo_picker_ip"

    array-length v1, p2

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    return-void

    .line 134
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs IPWarn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 129
    const-string v0, "photo_picker_ip"

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 129
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs Info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 62
    const-string v0, "photo_picker_cmn"

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 62
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v0, "photo_picker_cmn"

    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static Log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static varargs Log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 29
    const-string v0, "photo_picker_cmn"

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void

    .line 29
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 69
    return-void
.end method

.method public static varargs Warn(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 56
    const-string v0, "photo_picker_cmn"

    array-length v1, p2

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void

    .line 56
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs Warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 51
    const-string v0, "photo_picker_cmn"

    array-length v1, p1

    if-nez v1, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/vkontakte/android/mediapicker/providers/LogProvider;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void

    .line 51
    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static YN(Z)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 141
    if-eqz p0, :cond_0

    const-string v0, "yes"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method
