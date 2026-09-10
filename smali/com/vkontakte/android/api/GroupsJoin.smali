.class public Lcom/vkontakte/android/api/GroupsJoin;
.super Lcom/vkontakte/android/APIRequest;
.source "GroupsJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GroupsJoin$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "gid"    # I

    .prologue
    .line 13
    const-string v0, "groups.join"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v0, "gid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GroupsJoin;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 17
    new-instance v0, Lcom/vkontakte/android/api/GroupsJoin$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GroupsJoin$1;-><init>(Lcom/vkontakte/android/api/GroupsJoin;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GroupsJoin;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 27
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsJoin;->callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsJoin;->callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/GroupsJoin$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsJoin$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsJoin$Callback;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsJoin;->callback:Lcom/vkontakte/android/api/GroupsJoin$Callback;

    .line 39
    return-object p0
.end method
