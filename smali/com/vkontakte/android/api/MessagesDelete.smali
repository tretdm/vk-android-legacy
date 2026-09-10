.class public Lcom/vkontakte/android/api/MessagesDelete;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesDelete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesDelete$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesDelete$Callback;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "messages.delete"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "mids"

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesDelete;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    new-instance v0, Lcom/vkontakte/android/api/MessagesDelete$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesDelete$1;-><init>(Lcom/vkontakte/android/api/MessagesDelete;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/MessagesDelete;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 30
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/MessagesDelete;->callback:Lcom/vkontakte/android/api/MessagesDelete$Callback;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/api/MessagesDelete;->callback:Lcom/vkontakte/android/api/MessagesDelete$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/MessagesDelete$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesDelete$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesDelete$Callback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesDelete;->callback:Lcom/vkontakte/android/api/MessagesDelete$Callback;

    .line 42
    return-object p0
.end method
