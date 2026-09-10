.class public Lcom/vkontakte/android/api/MessagesSetActivity;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesSetActivity$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesSetActivity$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "peerID"    # I

    .prologue
    .line 11
    const-string v0, "messages.setActivity"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "uid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesSetActivity;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 13
    const-string v0, "type"

    const-string v1, "typing"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesSetActivity;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 15
    new-instance v0, Lcom/vkontakte/android/api/MessagesSetActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesSetActivity$1;-><init>(Lcom/vkontakte/android/api/MessagesSetActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/MessagesSetActivity;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 25
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/MessagesSetActivity;->callback:Lcom/vkontakte/android/api/MessagesSetActivity$Callback;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/api/MessagesSetActivity;->callback:Lcom/vkontakte/android/api/MessagesSetActivity$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/MessagesSetActivity$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesSetActivity$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesSetActivity$Callback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesSetActivity;->callback:Lcom/vkontakte/android/api/MessagesSetActivity$Callback;

    .line 37
    return-object p0
.end method
