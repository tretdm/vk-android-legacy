.class public Lcom/vkontakte/android/api/NotificationsMarkAsViewed;
.super Lcom/vkontakte/android/APIRequest;
.source "NotificationsMarkAsViewed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "notifications.markAsViewed"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/vkontakte/android/api/NotificationsMarkAsViewed$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/NotificationsMarkAsViewed$1;-><init>(Lcom/vkontakte/android/api/NotificationsMarkAsViewed;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/NotificationsMarkAsViewed;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/NotificationsMarkAsViewed;->callback:Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/api/NotificationsMarkAsViewed;->callback:Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkontakte/android/api/NotificationsMarkAsViewed;->callback:Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;

    .line 35
    return-object p0
.end method
