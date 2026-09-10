.class public Lcom/vkontakte/android/api/MessagesMarkAsRead;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesMarkAsRead.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "mids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const-string v2, "messages.markAsRead"

    invoke-direct {p0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v1, ""

    .line 17
    .local v1, "ids":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    const-string v2, "mids"

    invoke-virtual {p0, v2, v1}, Lcom/vkontakte/android/api/MessagesMarkAsRead;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    new-instance v2, Lcom/vkontakte/android/api/MessagesMarkAsRead$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/api/MessagesMarkAsRead$1;-><init>(Lcom/vkontakte/android/api/MessagesMarkAsRead;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/api/MessagesMarkAsRead;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 31
    return-void

    .line 17
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "id":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/MessagesMarkAsRead;->callback:Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/api/MessagesMarkAsRead;->callback:Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesMarkAsRead;->callback:Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;

    .line 43
    return-object p0
.end method
